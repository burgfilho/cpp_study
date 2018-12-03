#include "RTBService.h"

#include <spdlog/spdlog.h>

namespace sita::rtb::service {

RTBService::RTBService(data::IDataProvider& data) noexcept
    : mData(data) {
    mLog = spdlog::get("general")->clone("service");
    mLog->info("Service created");
}

}
