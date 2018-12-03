#pragma once

#include <spdlog/logger.h>

#include "grpc_proto/rtb.grpc.pb.h"
#include "service/IService.h"

namespace sita::rtb::interface {

class GRPC final : public RTB::Service {
public:
    explicit GRPC(service::IService& service) noexcept;

    grpc::Status Help(grpc::ServerContext* context, const HelpRequest* request, HelpReply* reply) override;

private:
    service::IService& mService;
    std::shared_ptr<spdlog::logger> mLog;
};

}
