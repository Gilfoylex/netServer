//
// Created by gilfoyle on 18-6-28.
//

#include "CCondition.h"

namespace thread{
    thread::CCondition::CCondition(CMutexLock &mutexLock)
            : m_mutexLock(mutexLock)
    {
        pthread_cond_init(&m_cond, NULL);
    }

    CCondition::~CCondition() {
        pthread_cond_destroy(&m_cond);
    }

    void CCondition::wait() {
        pthread_cond_wait(&m_cond, m_mutexLock.getMutexPtr());
    }

    void CCondition::notify() {
        pthread_cond_signal(&m_cond);
    }

    void CCondition::notifyAll() {
        pthread_cond_broadcast(&m_cond);
    }
}

