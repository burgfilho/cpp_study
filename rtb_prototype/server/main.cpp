#include <iostream>
#include <spdlog/async.h>
#include <spdlog/sinks/basic_file_sink.h>

#include "grpc_proto/rtb.grpc.pb.h"
#include "data/memory/MemoryDataProvider.h"
#include "service/RTBService.h"
#include "interface/grpc/GRPC.h"

using namespace sita;

int main() {
    spdlog::init_thread_pool(8192, 1);
    auto log = spdlog::basic_logger_mt<spdlog::async_factory>("general", "rtb.log");

    log->info("Initializing RTB...");

    rtb::data::MemoryDataProvider data;
    rtb::service::RTBService service(data);
    rtb::interface::GRPC interface(service);

    log->info("Finalizing RTB...");

    return EXIT_SUCCESS;
}
