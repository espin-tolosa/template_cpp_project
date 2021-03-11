cmake_minimum_required(VERSION 3.0)

project(SIMPLE_BET_METHOD)

set(PROJECT_NAME betwin)

# SOME USER OPTION THAT I STILL DON'T KNOW HOW TO IMPLEMENT ORGANICALLY WITH CMAKE
set(USER_LINK_BOOST FALSE)
set(USER_BUILD_CONFIGURATION_MODE) #used later to set build_dir if it exists

#CMAKE FLAGS
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_FLAGS_GDB " -Wall -ggdb")
set(CMAKE_CXX_FLAGS_GDB " -Wall -ggdb")

if(${USER_LINK_BOOST})
  find_package( Boost REQUIRED COMPONENTS regex)
  if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
  endif(Boost_FOUND)
endif()

file(COPY "data/Users_Guesses_Pool.txt" DESTINATION "data/")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${USER_BUILD_CONFIGURATION_MODE})

#Compilation Stage Module
add_executable( ${PROJECT_NAME} src/main.cpp src/Matches.cpp src/Pools.cpp src/Read_Data.cpp src/Options.cpp)

if(${USER_LINK_BOOST})
  target_link_libraries( ${PROJECT_NAME} ${Boost_LIBRARIES})
endif()
