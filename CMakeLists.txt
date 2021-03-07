cmake_minimum_required(VERSION 3.0)

project(TEMPLATE)

set(CMAKE_BUILD_TYPE gdb)
set(CMAE_C_FLAGS_GDB " -Wall -ggdb")
set(CMAKE_CXX_FLAGS_GDB " -Wall -ggdb")

#Compilation Stage Module
add_executable( debug src/main.cpp)

#Compilation Stage Module for Boost Projects
#find_package( Boost REQUIRED COMPONENTS regex)
#if(Boost_FOUND)
#  include_directories(${Boost_INCLUDE_DIRS})
#
#add_executable( debug src/main.cpp)
#
#target_link_libraries( debug ${Boost_LIBRARIES})
#endif()
