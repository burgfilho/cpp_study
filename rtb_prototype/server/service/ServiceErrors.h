#pragma once

#include <exception>

namespace sita::rtb::service {

enum class ServiceErrorCode {
    Ok                 = 0, // No error
    AccessDenied       = 1, // User not registered
    UnauthorisedAction = 2, // User not allowed to execute a given action
    ServiceUnavailable = 3, // Unable to execute request. Example: Error during database access
    InvalidParameter   = 4, // Incorrect number of parameters
    InvalidArguments   = 5, // An argument is invalid

};

class ServiceException : public std::runtime_error {
public:
    using std::runtime_error;
};

}
