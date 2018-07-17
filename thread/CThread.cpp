//
// Created by gilfoyle on 18-6-28.
//
#include "CThread.h"

namespace thread{
    CThread::CThread(threadCallBack callBack)
        : m_tid(0),
          m_nThreadStatus(THREAD_STATUS_NEW),
          m_callback(callBack)
    {

    }

    CThread::~CThread() {

    }

    bool CThread::start() {
        if (0 == pthread_create(&m_tid, NULL, threadProxyFunc, this))
        {
            return true;
        } else
        {
            return false;
        }
    }

    int CThread::getState() const{
        return m_nThreadStatus;
    }

    void CThread::join() {
        if (m_tid > 0)
        {
            pthread_join(m_tid, NULL);
        }
    }

    void CThread::join(unsigned long nMillisTime) {
        if (m_tid == 0)
        {
            return;
        }
        if (nMillisTime == 0)
        {
            join();
        } else
        {
            unsigned long k = 0;
            while (m_nThreadStatus != THREAD_STATUS_EXIT && k < nMillisTime)
            {
                usleep(100);
                ++k;
            }
            join();
        }
    }

    void *CThread::threadProxyFunc(void *args) {
        CThread* pThread = static_cast<CThread*>(args);
        pThread->run();
        return NULL;
    }

    void *CThread::run() {
        m_nThreadStatus = THREAD_STATUS_RUNNING;
        m_tid = pthread_self();
        printf("thread %lu create \n", m_tid);
        m_callback();
        m_tid = 0;
        m_nThreadStatus = THREAD_STATUS_EXIT;
        pthread_exit(NULL);
    }

    pthread_t CThread::getThreadID() const {
        return m_tid;
    }
}

