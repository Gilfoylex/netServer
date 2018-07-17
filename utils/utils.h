//
// Created by gilfoyle on 18-6-28.
//

#ifndef CLIONTEST_UTILS_H
#define CLIONTEST_UTILS_H

#include <bits/types.h>
#include <cstdio>

namespace utils{
    class CNoCopy{
    protected:
        CNoCopy(){}
        ~CNoCopy(){}

    private:
        CNoCopy(const CNoCopy&);
        const CNoCopy &operator=(const CNoCopy &);
    };

    template <class T>
    class CSingletonT :public CNoCopy{
    public:
        static T *instance();
        static void release();

    protected:
        static T* m_pInstance;
    };

    template <class T>
    T *CSingletonT<T>::instance()
    {
        if (NULL == m_pInstance)
        {
            m_pInstance = new T();
        }
        return m_pInstance;
    }

    template <class T>
    void CSingletonT<T>::release()
    {
        if (NULL != m_pInstance)
        {
            delete m_pInstance;
            m_pInstance = NULL;
        }
    }

    bool setNonBlocking(int nSocketFd);
}

#endif //CLIONTEST_UTILS_H
