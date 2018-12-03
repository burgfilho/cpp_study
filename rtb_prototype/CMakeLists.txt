cmake_minimum_required(VERSION 3.7)

project(RTB
    VERSION 0.0.1
    DESCRIPTION "Relay Through Broadcast - Broadcast Type B messages by means of broadcast lists."
    LANGUAGES CXX)

# Global configurations
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
## We always ship an optimized build with debug info, unless the users states otherwise.
if("${CMAKE_BUILD_TYPE}" STREQUAL "")
    set(CMAKE_BUILD_TYPE "RelWithDebInfo")
endif()

# Options
option(BUILD_GRPC "Build RTB gRPC lib" ON)
option(BUILD_SRV "Build RTB server" ON)
option(BUILD_TESTS "Build tests for project" ON)
option(ENABLE_LTO "Enable Link-Time Optimizations" OFF)
option(ENABLE_HARDENING "Enable security flags to harden the code" ON)
option(ENABLE_NATIVE_TUNING "Generate optimized code for the current plaform" ON)
option(ENABLE_INSTRUMENTATION "Enable code instrumentation" OFF)

## Default options on Continuous Integration environment
if($ENV{JENKINS_URL})
    set(ENABLE_LTO OFF)
    set(ENABLE_HARDENING ON)
    set(ENABLE_NATIVE_TUNING ON)
endif()

include(GeneralCompilationFlags)

add_subdirectory(3rdparty)

if(BUILD_GRPC)
    message(STATUS "RTB: Build of RTB gRPC lib enabled")
    add_subdirectory(grpc_proto)
endif()

if(BUILD_SRV)
    message(STATUS "RTB: Build of RTB server enabled")
    add_subdirectory(server)
endif()

if(BUILD_TESTS)
    message(STATUS "RTB: Build of tests enabled")
    enable_testing(true)
    add_subdirectory(test)
endif()
