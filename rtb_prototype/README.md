RTB
===

Compilation
-----------
With all tools and code dependencies installed, at the root folder of the project execute:
```bash
mkdir build
cd build
cmake ..
cmake --build .
```

The compilation can be speed up using `cmake --build . -- -j$(nproc)`

### Tooling Dependencies
* CMake 3.7.0: https://cmake.org

For Debian, use:
`sudo apt install cmake`

### Code Dependencies
* Catch2 2.4.2: https://github.com/catchorg/Catch2
* gRPC 1.16.0: https://grpc.io
* Protobuf 3.6.1: https://developers.google.com/protocol-buffers
* spdlog 1.2.0: https://github.com/gabime/spdlog

Many of the dependencies are not vendored on the codebase, requiring installation on the compilation system.

For Debian, use:
`sudo apt install libprotobuf-dev libgrpc++-dev protobuf-compiler-grpc`

Execution
---------
### Dependencies
