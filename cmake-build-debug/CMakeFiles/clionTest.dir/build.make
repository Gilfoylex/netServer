# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/gilfoyle/Downloads/clion-2018.1.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/gilfoyle/Downloads/clion-2018.1.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gilfoyle/CLionProjects/netServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gilfoyle/CLionProjects/netServer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/clionTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/clionTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/clionTest.dir/flags.make

CMakeFiles/clionTest.dir/main.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/clionTest.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/main.cpp.o -c /home/gilfoyle/CLionProjects/netServer/main.cpp

CMakeFiles/clionTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/main.cpp > CMakeFiles/clionTest.dir/main.cpp.i

CMakeFiles/clionTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/main.cpp -o CMakeFiles/clionTest.dir/main.cpp.s

CMakeFiles/clionTest.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/main.cpp.o.requires

CMakeFiles/clionTest.dir/main.cpp.o.provides: CMakeFiles/clionTest.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/main.cpp.o.provides

CMakeFiles/clionTest.dir/main.cpp.o.provides.build: CMakeFiles/clionTest.dir/main.cpp.o


CMakeFiles/clionTest.dir/thread/CThread.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/thread/CThread.cpp.o: ../thread/CThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/clionTest.dir/thread/CThread.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/thread/CThread.cpp.o -c /home/gilfoyle/CLionProjects/netServer/thread/CThread.cpp

CMakeFiles/clionTest.dir/thread/CThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/thread/CThread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/thread/CThread.cpp > CMakeFiles/clionTest.dir/thread/CThread.cpp.i

CMakeFiles/clionTest.dir/thread/CThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/thread/CThread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/thread/CThread.cpp -o CMakeFiles/clionTest.dir/thread/CThread.cpp.s

CMakeFiles/clionTest.dir/thread/CThread.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/thread/CThread.cpp.o.requires

CMakeFiles/clionTest.dir/thread/CThread.cpp.o.provides: CMakeFiles/clionTest.dir/thread/CThread.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/thread/CThread.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/thread/CThread.cpp.o.provides

CMakeFiles/clionTest.dir/thread/CThread.cpp.o.provides.build: CMakeFiles/clionTest.dir/thread/CThread.cpp.o


CMakeFiles/clionTest.dir/thread/CMutex.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/thread/CMutex.cpp.o: ../thread/CMutex.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/clionTest.dir/thread/CMutex.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/thread/CMutex.cpp.o -c /home/gilfoyle/CLionProjects/netServer/thread/CMutex.cpp

CMakeFiles/clionTest.dir/thread/CMutex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/thread/CMutex.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/thread/CMutex.cpp > CMakeFiles/clionTest.dir/thread/CMutex.cpp.i

CMakeFiles/clionTest.dir/thread/CMutex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/thread/CMutex.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/thread/CMutex.cpp -o CMakeFiles/clionTest.dir/thread/CMutex.cpp.s

CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.requires

CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.provides: CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.provides

CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.provides.build: CMakeFiles/clionTest.dir/thread/CMutex.cpp.o


CMakeFiles/clionTest.dir/thread/CCondition.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/thread/CCondition.cpp.o: ../thread/CCondition.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/clionTest.dir/thread/CCondition.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/thread/CCondition.cpp.o -c /home/gilfoyle/CLionProjects/netServer/thread/CCondition.cpp

CMakeFiles/clionTest.dir/thread/CCondition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/thread/CCondition.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/thread/CCondition.cpp > CMakeFiles/clionTest.dir/thread/CCondition.cpp.i

CMakeFiles/clionTest.dir/thread/CCondition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/thread/CCondition.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/thread/CCondition.cpp -o CMakeFiles/clionTest.dir/thread/CCondition.cpp.s

CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.requires

CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.provides: CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.provides

CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.provides.build: CMakeFiles/clionTest.dir/thread/CCondition.cpp.o


CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o: ../thread/CThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o -c /home/gilfoyle/CLionProjects/netServer/thread/CThreadPool.cpp

CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/thread/CThreadPool.cpp > CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.i

CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/thread/CThreadPool.cpp -o CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.s

CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.requires

CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.provides: CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.provides

CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.provides.build: CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o


CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o: ../thread/CCountDownLatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o -c /home/gilfoyle/CLionProjects/netServer/thread/CCountDownLatch.cpp

CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/thread/CCountDownLatch.cpp > CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.i

CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/thread/CCountDownLatch.cpp -o CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.s

CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.requires

CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.provides: CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.provides

CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.provides.build: CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o


CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o: ../net/CTcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o -c /home/gilfoyle/CLionProjects/netServer/net/CTcpServer.cpp

CMakeFiles/clionTest.dir/net/CTcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/net/CTcpServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/net/CTcpServer.cpp > CMakeFiles/clionTest.dir/net/CTcpServer.cpp.i

CMakeFiles/clionTest.dir/net/CTcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/net/CTcpServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/net/CTcpServer.cpp -o CMakeFiles/clionTest.dir/net/CTcpServer.cpp.s

CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.requires

CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.provides: CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.provides

CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.provides.build: CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o


CMakeFiles/clionTest.dir/net/CEpoll.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/net/CEpoll.cpp.o: ../net/CEpoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/clionTest.dir/net/CEpoll.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/net/CEpoll.cpp.o -c /home/gilfoyle/CLionProjects/netServer/net/CEpoll.cpp

CMakeFiles/clionTest.dir/net/CEpoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/net/CEpoll.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/net/CEpoll.cpp > CMakeFiles/clionTest.dir/net/CEpoll.cpp.i

CMakeFiles/clionTest.dir/net/CEpoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/net/CEpoll.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/net/CEpoll.cpp -o CMakeFiles/clionTest.dir/net/CEpoll.cpp.s

CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.requires

CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.provides: CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.provides

CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.provides.build: CMakeFiles/clionTest.dir/net/CEpoll.cpp.o


CMakeFiles/clionTest.dir/utils/utils.cpp.o: CMakeFiles/clionTest.dir/flags.make
CMakeFiles/clionTest.dir/utils/utils.cpp.o: ../utils/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/clionTest.dir/utils/utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clionTest.dir/utils/utils.cpp.o -c /home/gilfoyle/CLionProjects/netServer/utils/utils.cpp

CMakeFiles/clionTest.dir/utils/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clionTest.dir/utils/utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gilfoyle/CLionProjects/netServer/utils/utils.cpp > CMakeFiles/clionTest.dir/utils/utils.cpp.i

CMakeFiles/clionTest.dir/utils/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clionTest.dir/utils/utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gilfoyle/CLionProjects/netServer/utils/utils.cpp -o CMakeFiles/clionTest.dir/utils/utils.cpp.s

CMakeFiles/clionTest.dir/utils/utils.cpp.o.requires:

.PHONY : CMakeFiles/clionTest.dir/utils/utils.cpp.o.requires

CMakeFiles/clionTest.dir/utils/utils.cpp.o.provides: CMakeFiles/clionTest.dir/utils/utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/clionTest.dir/build.make CMakeFiles/clionTest.dir/utils/utils.cpp.o.provides.build
.PHONY : CMakeFiles/clionTest.dir/utils/utils.cpp.o.provides

CMakeFiles/clionTest.dir/utils/utils.cpp.o.provides.build: CMakeFiles/clionTest.dir/utils/utils.cpp.o


# Object files for target clionTest
clionTest_OBJECTS = \
"CMakeFiles/clionTest.dir/main.cpp.o" \
"CMakeFiles/clionTest.dir/thread/CThread.cpp.o" \
"CMakeFiles/clionTest.dir/thread/CMutex.cpp.o" \
"CMakeFiles/clionTest.dir/thread/CCondition.cpp.o" \
"CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o" \
"CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o" \
"CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o" \
"CMakeFiles/clionTest.dir/net/CEpoll.cpp.o" \
"CMakeFiles/clionTest.dir/utils/utils.cpp.o"

# External object files for target clionTest
clionTest_EXTERNAL_OBJECTS =

clionTest: CMakeFiles/clionTest.dir/main.cpp.o
clionTest: CMakeFiles/clionTest.dir/thread/CThread.cpp.o
clionTest: CMakeFiles/clionTest.dir/thread/CMutex.cpp.o
clionTest: CMakeFiles/clionTest.dir/thread/CCondition.cpp.o
clionTest: CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o
clionTest: CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o
clionTest: CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o
clionTest: CMakeFiles/clionTest.dir/net/CEpoll.cpp.o
clionTest: CMakeFiles/clionTest.dir/utils/utils.cpp.o
clionTest: CMakeFiles/clionTest.dir/build.make
clionTest: CMakeFiles/clionTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable clionTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clionTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/clionTest.dir/build: clionTest

.PHONY : CMakeFiles/clionTest.dir/build

CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/main.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/thread/CThread.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/thread/CMutex.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/thread/CCondition.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/thread/CThreadPool.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/thread/CCountDownLatch.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/net/CTcpServer.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/net/CEpoll.cpp.o.requires
CMakeFiles/clionTest.dir/requires: CMakeFiles/clionTest.dir/utils/utils.cpp.o.requires

.PHONY : CMakeFiles/clionTest.dir/requires

CMakeFiles/clionTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/clionTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/clionTest.dir/clean

CMakeFiles/clionTest.dir/depend:
	cd /home/gilfoyle/CLionProjects/netServer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gilfoyle/CLionProjects/netServer /home/gilfoyle/CLionProjects/netServer /home/gilfoyle/CLionProjects/netServer/cmake-build-debug /home/gilfoyle/CLionProjects/netServer/cmake-build-debug /home/gilfoyle/CLionProjects/netServer/cmake-build-debug/CMakeFiles/clionTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clionTest.dir/depend
