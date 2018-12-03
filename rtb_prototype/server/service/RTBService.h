#pragma once

#include <spdlog/logger.h>

#include "data/IDataProvider.h"
#include "IService.h"

namespace sita::rtb::service {

class RTBService final : public IService {
public:
    explicit RTBService(data::IDataProvider& data) noexcept;

private:
    data::IDataProvider& mData;
    std::shared_ptr<spdlog::logger> mLog;
};

}
