//
// Created by gilfoyle on 18-6-28.
//

#ifndef CLIONTEST_CTHREAD_H
#define CLIONTEST_CTHREAD_H

#include <pthread.h>
#include <functional>
#include <unistd.h>
#include "CCountDownLatch.h"
#include "../utils/utils.h"

namespace thread{
    class CThread : public utils::CNoCopy
    {
    public:
        typedef std::function<void()> threadCallBack;
        CThread(threadCallBack callBack);
        virtual ~CThread();
        bool start();
        pthread_t getThreadID() const;
        int getState() const;
        void join();
        void join(unsigned long nMillisTime);
        static const int THREAD_STATUS_NEW = 0;
        static const int THREAD_STATUS_RUNNING = 1;
        static const int THREAD_STATUS_EXIT = -1;

    private:
        pthread_t m_tid;
        int m_nThreadStatus;
        static void* threadProxyFunc(void *args);
        void* run();
        threadCallBack m_callback;
    };
}

#endif //CLIONTEST_CTHREAD_H
