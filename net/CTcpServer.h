//
// Created by gilfoyle on 18-7-5.
//

#ifndef CLIONTEST_CTCPSERVER_H
#define CLIONTEST_CTCPSERVER_H

#include "../utils/utils.h"
#include "../thread/CThreadPool.h"
#include "CEpoll.h"
#include <sys/socket.h>
#include <arpa/inet.h>

const int MAXSIZE =  1024 * 1024;

namespace net {
    class CTcpServer : public utils::CNoCopy {
    public:
        CTcpServer(int nPort = 8888);
        //~CTcpServer();
    };

    class CDealReq {
    public:
        void run(std::string strRequest, int nAcceptFd);
    };
}

#endif //CLIONTEST_CTCPSERVER_H
