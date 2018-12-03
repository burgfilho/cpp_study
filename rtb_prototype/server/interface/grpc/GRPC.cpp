#include "GRPC.h"

#include <spdlog/spdlog.h>

namespace sita::rtb::interface {

GRPC::GRPC(service::IService& service) noexcept
    : mService(service) {
    mLog = spdlog::get("general")->clone("interface");
    mLog->info("GRPC interface created");
}

grpc::Status GRPC::Help(grpc::ServerContext* context, const HelpRequest* request, HelpReply* reply) {
    // TODO Check user
    request->credentials().user();
    return grpc::Status::OK;
}

}
