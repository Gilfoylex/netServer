//
// Created by gilfoyle on 18-7-4.
//

#include "CCountDownLatch.h"

namespace thread{

    CCountDownLatch::CCountDownLatch(int nCount)
            : m_mutexLock(),
              m_condition(m_mutexLock),
              m_nCount(nCount)
    {

    }

    void CCountDownLatch::wait() {
        CMutex lock(m_mutexLock);
        while (m_nCount > 0)
        {
            m_condition.wait();
        }
    }

    void CCountDownLatch::countDown() {
        CMutex lock(m_mutexLock);
        --m_nCount;
        if (0 == m_nCount)
        {
            m_condition.notifyAll();
        }
    }

    int CCountDownLatch::getCount() const {
        CMutex lock(m_mutexLock);
        return m_nCount;
    }
}

