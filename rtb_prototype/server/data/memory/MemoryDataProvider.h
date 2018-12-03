#pragma once

#include <string>
#include <vector>

#include "data/IDataProvider.h"

namespace sita::rtb::data {

class MemoryDataProvider final : public IDataProvider {
public:
    MemoryDataProvider() noexcept;

    bool isRegisteredUser(std::string_view user) const override;

    // Auxiliary methods
    void addUser(std::string user);
    void addUsers(std::vector<std::string> users);

private:
    std::vector<std::string> mUsers;
};

}
