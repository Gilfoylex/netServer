//
// Created by gilfoyle on 18-6-28.
//

#ifndef CLIONTEST_CCONDITION_H
#define CLIONTEST_CCONDITION_H

#include "CMutex.h"

namespace thread{
    class CCondition : public utils::CNoCopy{
    public:

        CCondition(CMutexLock &mutexLock);
        ~CCondition();
        void wait();
        void notify();
        void notifyAll();

    private:
        pthread_cond_t m_cond;
        CMutexLock &m_mutexLock;
    };
}
#endif //CLIONTEST_CCONDITION_H
