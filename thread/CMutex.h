//
// Created by gilfoyle on 18-6-28.
//

#ifndef CLIONTEST_CMUTEXLOCK_H
#define CLIONTEST_CMUTEXLOCK_H

#include <pthread.h>
#include "../utils/utils.h"

namespace thread{
    class CMutexLock : public utils::CNoCopy{
        friend class CCondition;

    public:
        CMutexLock();
        ~CMutexLock();
        void lock();
        void unlock();
        pthread_mutex_t *getMutexPtr();

    private:
        pthread_mutex_t m_mutex;
    };

    class CMutex : public utils::CNoCopy{
    public:
        CMutex(CMutexLock &mutexLock);
        ~CMutex();
        void unlock();
        void lock();

    private:
        CMutexLock & m_mutexLock;
    };
}

#endif //CLIONTEST_CMUTEXLOCK_H
