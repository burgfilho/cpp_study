#pragma once

#include <string_view>

namespace sita::rtb::data {

class IDataProvider {
public:
    IDataProvider() noexcept = default;
    virtual ~IDataProvider() noexcept = default;
    // Rule of five
    IDataProvider(const IDataProvider& other) noexcept = delete;
    IDataProvider(IDataProvider&& other) noexcept = delete;
    IDataProvider& operator=(const IDataProvider& other) noexcept = delete;
    IDataProvider& operator=(IDataProvider&& other) noexcept = delete;

    virtual bool isRegisteredUser(std::string_view user) const = 0;
};

}
