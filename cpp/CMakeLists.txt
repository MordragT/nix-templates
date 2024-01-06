cmake_minimum_required (VERSION 2.6)
project (template)
add_executable(template source/main.cpp)
install(TARGETS template DESTINATION bin)