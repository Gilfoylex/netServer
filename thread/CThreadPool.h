//
// Created by gilfoyle on 18-6-28.
//

#ifndef CLIONTEST_CTHREADPOOL_H
#define CLIONTEST_CTHREADPOOL_H

#include "CCondition.h"
#include "CThread.h"
#include <deque>
#include <vector>
#include "CMutex.h"

namespace thread{
    class CThreadPool : public utils::CSingletonT<CThreadPool> {
    public:
        typedef std::function<void()> Task; //任务对象，具体参见任务实现在源文件
        explicit CThreadPool(int nThreadNum = 10, int nDequeSize = 10);
        ~CThreadPool();

        void addTask(const Task &task);
        void stop();
        Task take();
        void runInThread();

    private:

        void initThreadPool();

        mutable CMutexLock m_mutexLock;
        CCondition m_notEmpty;
        CCondition m_notFull;
        volatile bool m_bIsRunning;
        int m_nWorkers;
        int m_nDequeSize;
        std::deque<Task> m_taskQueue;
        std::vector<CThread*>  m_vecWorkers;
        CCountDownLatch m_latch;
    };
}

#endif //CLIONTEST_CTHREADPOOL_H
