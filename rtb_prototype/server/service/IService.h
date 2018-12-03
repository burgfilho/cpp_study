#pragma once

namespace sita::rtb::service {

class IService {
public:
    IService() noexcept = default;
    virtual ~IService() noexcept = default;
    // Rule of five
    IService(const IService& other) noexcept = delete;
    IService(IService&& other) noexcept = delete;
    IService& operator=(const IService& other) noexcept = delete;
    IService& operator=(IService&& other) noexcept = delete;
};

}
