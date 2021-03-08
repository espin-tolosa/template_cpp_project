cmake_minimum_required(VERSION 3.0)

project(TEMPLATE)

# SOME USER OPTION THAT I STILL DON'T KNOW HOW TO IMPLEMENT ORGANICALLY WITH CMAKE
set(USER_LINK_BOOST FALSE)
set(USER_BUILD_CONFIGURATION_MODE) #used later to set build_dir if it exists

#CMAKE FLAGS
set(CMAKE_C_FLAGS_GDB " -Wall -ggdb")
set(CMAKE_CXX_FLAGS_GDB " -Wall -ggdb")

if(${USER_LINK_BOOST})
  find_package( Boost REQUIRED COMPONENTS regex)
  if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
  endif(Boost_FOUND)
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${USER_BUILD_CONFIGURATION_MODE})

#Compilation Stage Module
add_executable( debug src/main.cpp)

if(${USER_LINK_BOOST})
  target_link_libraries( debug ${Boost_LIBRARIES})
endif()
