# Sources
set(RTB_GRPC_PROTO_SRC
    rtb.proto)

# Dependencies
find_package(Protobuf REQUIRED)
find_package(GRPC REQUIRED)

# Generation
protobuf_generate_cpp(PROTO_OUT_SRC PROTO_OUT_HDR ${RTB_GRPC_PROTO_SRC})
grpc_generate_cpp(GRPC_OUT_SRC GRPC_OUT_HDR "." ${RTB_GRPC_PROTO_SRC})

# Compilation
add_library(RTB-gRPC STATIC ${PROTO_OUT_SRC} ${GRPC_OUT_SRC})
target_link_libraries(RTB-gRPC PUBLIC gRPC::grpc++ protobuf::libprotobuf)
target_compile_features(RTB-gRPC PUBLIC cxx_std_11)
target_include_directories(RTB-gRPC INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/..> # Hacky way to enforce "#include <grpc/...>"
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

add_library(RTB::gRPC ALIAS RTB-gRPC)
