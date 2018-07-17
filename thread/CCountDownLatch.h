//
// Created by gilfoyle on 18-7-4.
//

#ifndef CLIONTEST_CCOUNTDOWNLATCH_H
#define CLIONTEST_CCOUNTDOWNLATCH_H

#include "CMutex.h"
#include "CCondition.h"

namespace thread{
    class CCountDownLatch : public utils::CNoCopy{
    public:
        explicit CCountDownLatch(int nCount);
        void wait();
        void countDown();
        int getCount() const;

    private:
        mutable CMutexLock m_mutexLock;
        CCondition m_condition;
        int m_nCount;
    };

}

#endif //CLIONTEST_CCOUNTDOWNLATCH_H
