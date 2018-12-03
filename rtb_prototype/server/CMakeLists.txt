# Sources
set(RTB_SRV_SRC
    main.cpp
    data/memory/MemoryDataProvider.cpp
    interface/grpc/GRPC.cpp
    service/RTBService.cpp)

# Dependencies
find_package(spdlog 1.2.0 REQUIRED)

# Compilation
add_executable(RTB-server ${RTB_SRV_SRC})
target_include_directories(RTB-server PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(RTB-server PRIVATE RTB::gRPC spdlog::spdlog)
target_compile_features(RTB-server PRIVATE cxx_std_17)
target_compile_options(RTB-server PRIVATE
    -Wall
    -Wextra
    -Wodr
    -Winit-self
    -Wlto-type-mismatch
    -Wsubobject-linkage
    -Wnull-dereference
    -Wplacement-new
    -Wnon-virtual-dtor
    -Werror=missing-field-initializers
    -Werror=uninitialized
    -Werror=maybe-uninitialized
    -ffunction-sections
    -fdata-sections
    -fasynchronous-unwind-tables
    -fno-delete-null-pointer-checks
    -fno-common
    -fno-omit-frame-pointer
    -fno-strict-aliasing
    -fwrapv
    -fopenmp
    -fvisibility=hidden
    -fdiagnostics-color=auto
    -Wl,--detect-odr-violations
    -Wl,--no-allow-multiple-definition)
