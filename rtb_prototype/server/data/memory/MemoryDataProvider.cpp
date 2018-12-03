#include "MemoryDataProvider.h"

namespace sita::rtb::data {

MemoryDataProvider::MemoryDataProvider() noexcept {

}

bool MemoryDataProvider::isRegisteredUser(std::string_view user) const {

}

void MemoryDataProvider::addUser(std::string user) {
    mUsers.emplace_back(std::move(user));
}

void MemoryDataProvider::addUsers(std::vector<std::string> users) {
    mUsers = std::move(users);
}

}
