//
// Created by gilfoyle on 18-7-5.
//

#ifndef CLIONTEST_CEPOLL_H
#define CLIONTEST_CEPOLL_H

#include "../utils/utils.h"
#include <sys/epoll.h>
#include <unistd.h>
#include <stdlib.h>
#include <cstring>

namespace net{
    class CEpoll : public utils::CNoCopy{
    public:
        CEpoll(int nMaxCons = 1024, bool bEt = true);
        ~CEpoll();

        bool add(int nfd, __uint32_t events = EPOLLIN);
        bool del(int nfd);
        bool mod(int nfd, uint64_t data);
        int wait(int nMillsecond = 500);
        struct epoll_event& getEvent(int i);
        void close();
        int getCurFd(int nEventIndex) const;

    private:
        bool m_bEt;
        int  m_nEpollFd;
        int  m_nMaxCons;
        struct epoll_event* m_events;
        int  m_nReady;
    };
}
#endif //CLIONTEST_CEPOLL_H
