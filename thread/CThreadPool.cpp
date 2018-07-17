//
// Created by gilfoyle on 18-6-28.
//

#include "CThreadPool.h"
#include <assert.h>
#include <stdio.h>

namespace utils{
    template<> thread::CThreadPool * CSingletonT<thread::CThreadPool>::m_pInstance = NULL;
}
template class utils::CSingletonT<thread::CThreadPool>;

namespace thread {

    CThreadPool::CThreadPool(int nThreadNum, int nDequeSize)
        : m_mutexLock(),
          m_notEmpty(m_mutexLock),
          m_notFull(m_mutexLock),
          m_bIsRunning(false),
          m_nWorkers(nThreadNum),
          m_nDequeSize(nDequeSize),
          m_latch(nThreadNum)
    {
        initThreadPool();
    }

    void CThreadPool::runInThread() {
        m_latch.countDown();
        while (m_bIsRunning)
        {
            Task task = take();
            if (!task)
            {
                printf("thread %lu will exit\n", pthread_self());
                break;
            }
            assert(task);
            task();
        }
        //m_latch.countDown();
    }

    CThreadPool::Task CThreadPool::take()
    {
        CMutex lock(m_mutexLock);
        while (m_taskQueue.empty() && m_bIsRunning)
        {
            m_notEmpty.wait();
        }
//        if (!m_bIsRunning)
//        {
//            return task;
//        }
//        assert(!m_taskQueue.empty());
//        task = m_taskQueue.front();
//        m_taskQueue.pop_front();
        Task task = NULL;
        if (!m_taskQueue.empty())
        {
            task = m_taskQueue.front();
            m_taskQueue.pop_front();
            m_notFull.notify();
        }
        return task;
    }

    void CThreadPool::addTask(const Task &task)
    {
        CMutex lock(m_mutexLock);
        size_t size = m_taskQueue.size();
        while (size >= m_nDequeSize && m_bIsRunning)
        {
            m_notFull.wait();
        }
        if (!m_bIsRunning)
        {
            return;
        }
        m_taskQueue.push_back(task);
        m_notEmpty.notify();
    }

    void CThreadPool::initThreadPool() {
        m_vecWorkers.reserve(m_nWorkers);
        m_bIsRunning = true;
        for (int i = 0; i < m_nWorkers; ++i)
        {
            m_vecWorkers.push_back(new CThread(std::bind(&CThreadPool::runInThread, this)));
            m_vecWorkers[i]->start();
        }
        m_latch.wait();
    }

    void CThreadPool::stop() {
        {
            CMutex lock(m_mutexLock);
            m_bIsRunning = false;
            m_notEmpty.notifyAll();
        }

        for(int i = 0; i < m_vecWorkers.size(); ++i)
        {
            m_vecWorkers[i]->join();
            delete m_vecWorkers[i];
            m_vecWorkers[i] = NULL;
        }

        m_vecWorkers.clear();
    }

    CThreadPool::~CThreadPool() {
        if (m_bIsRunning)
        {
            stop();
        }
    }
}

