add_library(Catch2 INTERFACE)

target_include_directories(Catch2 INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_LIST_DIR}/single_include>
    $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

target_compile_features(Catch2 INTERFACE cxx_std_11)

add_library(Catch2::Catch2 ALIAS Catch2)
