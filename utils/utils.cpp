//
// Created by gilfoyle on 18-7-17.
//
#include "utils.h"
#include <fcntl.h>

namespace utils{
    bool setNonBlocking(int nSocketFd)
    {
        int nOpts = fcntl(nSocketFd, F_GETFL);
        if (nOpts < 0)
        {
            perror("fcntl(sock,GETFL)");
            return false;
        }
        nOpts = nOpts | O_NONBLOCK;
        if (fcntl(nSocketFd, F_SETFL, nOpts) < 0)
        {
            perror("fcntl(sock,SETFL,opts)");
            return false;
        }
        return true;
    }
}

