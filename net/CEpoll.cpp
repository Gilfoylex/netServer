//
// Created by gilfoyle on 18-7-5.
//

#include "CEpoll.h"
#include <cerrno>

namespace net{
    CEpoll::CEpoll(int nMaxCons,bool bEt)
        : m_bEt(bEt),
          m_nEpollFd(-1),
          m_nMaxCons(nMaxCons + 1),
          m_events(NULL),
          m_nReady(-1)
    {
        m_nEpollFd = epoll_create(m_nMaxCons);
        m_events = (struct epoll_event*)malloc(sizeof(struct epoll_event) * m_nMaxCons);
        memset(m_events, 0, sizeof(struct epoll_event) * m_nMaxCons);
    }

    bool CEpoll::add(int nfd, __uint32_t events) {
        struct epoll_event event;
        event.events = events;
        if (m_bEt)
        {
            event.events |= EPOLLET;
        }
        event.data.fd = nfd;

        if (epoll_ctl(m_nEpollFd, EPOLL_CTL_ADD, nfd, &event) == -1)
        {
            return false;
        }

        return true;
    }

    bool CEpoll::del(int nfd) {
        struct epoll_event event;
        event.data.fd = nfd;
        if (epoll_ctl(m_nEpollFd, EPOLL_CTL_DEL, nfd, &event) == -1)
        {
            return false;
        }
        return true;
    }

    struct epoll_event &CEpoll::getEvent(int i) {
        if (NULL != m_events)
        {
            return m_events[i];
        }
    }

    int CEpoll::wait(int nMillsecond) {
        m_nReady = epoll_wait(m_nEpollFd, m_events, m_nMaxCons, nMillsecond);
        return m_nReady;
    }

    CEpoll::~CEpoll() {
        close();
    }

    void CEpoll::close() {
        if (-1 != m_nEpollFd)
        {
            ::close(m_nEpollFd);
            m_nEpollFd = -1;
        }

        if (NULL != m_events)
        {
            free(m_events);
            m_events = NULL;
        }
    }

    bool CEpoll::mod(int nfd, uint64_t data) {
        struct epoll_event event;
        event.data.fd = nfd;
        event.data.u64 = data;
        if (epoll_ctl(m_nEpollFd, EPOLL_CTL_MOD, nfd, &event) == -1)
        {
            return false;
        }
        return true;
    }

    int CEpoll::getCurFd(int nEventIndex) const {
        if (nEventIndex > m_nReady)
        {
            return -1;
        } else{
            return m_events[nEventIndex].data.fd;
        }
    }
}
