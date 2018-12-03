file(GLOB_RECURSE TEST_SOURCES *.cpp)

set(TEST_NAME RTB-test)

add_executable(${TEST_NAME} ${TEST_SOURCES})
target_link_libraries(${TEST_NAME} Catch2::Catch2)

add_test(NAME UnitTest COMMAND ${TEST_NAME})
