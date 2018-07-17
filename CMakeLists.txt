cmake_minimum_required(VERSION 3.10)
project(netServer)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -march=native -O3 -pthread")

add_executable(clionTest main.cpp
        thread/CThread.h
        thread/CThread.cpp
        thread/CMutex.h
        thread/CMutex.cpp
        utils/utils.h
        thread/CCondition.h
        thread/CCondition.cpp
        thread/CThreadPool.h
        thread/CThreadPool.cpp
        thread/CCountDownLatch.h
        thread/CCountDownLatch.cpp
        net/CTcpServer.h net/CTcpServer.cpp net/CEpoll.h net/CEpoll.cpp utils/utils.cpp)