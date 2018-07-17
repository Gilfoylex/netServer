//
// Created by gilfoyle on 18-6-28.
//

#include "CMutex.h"

namespace thread{

    CMutexLock::CMutexLock()
    {
        pthread_mutex_init(&m_mutex, NULL);
    }

    CMutexLock::~CMutexLock() {
        pthread_mutex_destroy(&m_mutex);
    }

    void CMutexLock::lock() {
        pthread_mutex_lock(&m_mutex);
    }

    void CMutexLock::unlock() {
        pthread_mutex_unlock(&m_mutex);
    }

    pthread_mutex_t *CMutexLock::getMutexPtr() {
        return &m_mutex;
    }

    CMutex::CMutex(CMutexLock &mutexLock)
        : m_mutexLock(mutexLock)
    {
        m_mutexLock.lock();
    }

    CMutex::~CMutex() {
        m_mutexLock.unlock();
    }

    void CMutex::unlock() {
        m_mutexLock.unlock();
    }

    void CMutex::lock() {
        m_mutexLock.lock();
    }
}
