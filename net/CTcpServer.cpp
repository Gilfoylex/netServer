//
// Created by gilfoyle on 18-7-5.
//

#include "CTcpServer.h"
#include <iostream>

namespace net {
    CTcpServer::CTcpServer(int nPort) {
        int nSocketFd;
        int nAcceptFd;
        sockaddr_in remoteAddr;
        sockaddr_in serverAddr;
        nSocketFd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (nSocketFd < 0)
        {
            throw "socket failed";
        }

        utils::setNonBlocking(nSocketFd);

        memset(&serverAddr, 0, sizeof(serverAddr));
        serverAddr.sin_family = AF_INET;
        serverAddr.sin_addr.s_addr = htonl(INADDR_ANY);
        serverAddr.sin_port = htons(nPort);

        // 字符串的IP地址
        //inet_pton(AF_INET, server_ip, &serverAddr.sin_addr);

        if (bind(nSocketFd, (sockaddr*)&serverAddr, sizeof(serverAddr)) < 0)
        {
            throw "bind() failed";
        }

        if (listen(nSocketFd, 10) < 0)
        {
            throw "listen failed";
        }

        CEpoll epoll(512, true);
        epoll.add(nSocketFd);

        int nfds = 0;
        socklen_t nSinSize = sizeof(struct sockaddr_in);
        int nCurfd;
        char buffer[MAXSIZE];
        int nRet = 0;

        while (true)
        {
            nfds = epoll.wait();
            for (int i = 0; i < nfds; ++i)
            {
                nCurfd = epoll.getCurFd(i);
                if (nCurfd == nSocketFd)
                {
                    nAcceptFd = accept(nSocketFd, (struct sockaddr *)&remoteAddr, &nSinSize);
                    if (nAcceptFd < 0)
                    {
                        //throw "accept error!";
                        continue;
                    }
                    utils::setNonBlocking(nAcceptFd);
                    epoll.add(nAcceptFd);
                } else if (epoll.getEvent(i).events & EPOLLIN) {
                    while (true)
                    {
                        memset(buffer, 0, MAXSIZE);
                        nRet = read(epoll.getCurFd(i), buffer, MAXSIZE);
                        if (nRet == 0)
                        {
                            epoll.del(nCurfd);
                            close(nCurfd);
                            break;
                        }
                        else if (nRet < 0)
                        {
                            if (errno == EAGAIN)
                            {
                                continue;
                            }
                            break;
                        }
                        else
                        {
                            CDealReq objExecTask;
                            std::string strRequest(buffer);
                            thread::CThreadPool::instance()->addTask(std::bind(&CDealReq::run, &objExecTask, strRequest, nAcceptFd));
                            break;
                        }
                    }
                }
            }
        }
        close(nSocketFd);
    }

    void CDealReq::run(std::string strRequest, int nAcceptFd)
    {
        std::cout << strRequest << std::endl;
        const char* buffer = strRequest.c_str();
        std::cout << "message length: " << strlen(buffer) << std::endl;
        write(nAcceptFd, buffer, strlen(buffer));
    }
}