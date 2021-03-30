cmake_minimum_required(VERSION 3.0)

project(SIMPLE_BET_METHOD)

set(PROJECT_NAME betwin)

# SOME USER OPTION THAT I STILL DON'T KNOW HOW TO IMPLEMENT ORGANICALLY WITH CMAKE
set(USER_LINK_BOOST FALSE)
set(USER_BUILD_CONFIGURATION_MODE) #used later to set build_dir if it exists

#CMAKE FLAGS
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_FLAGS_GDB "-Wall" "-Wconversion" "-ggdb")
set(CMAKE_CXX_FLAGS_GDB "-Wall" "-Wextra" "-Wshadow" "-Weffc++" "-pedantic" "-Wconversion" "-ggdb")

#Recomended Flags from:
#https://stackoverflow.com/questions/5088460/flags-to-enable-thorough-and-verbose-g-warnings/9862800#9862800
set(CMAKE_CXX_FLAGS_CONF1 "-pedantic" "-Wall" "-Wextra" "-Wcast-align" "-Wcast-qual" "-Wctor-dtor-privacy" "-Wdisabled-optimization" "-Wformat=2" "-Winit-self" "-Wlogical-op" "-Wmissing-declarations" "-Wmissing-include-dirs" "-Wnoexcept" "-Wold-style-cast" "-Woverloaded-virtual" "-Wredundant-decls" "-Wshadow" "-Wsign-conversion" "-Wsign-promo" "-Wstrict-null-sentinel" "-Wstrict-overflow=5" "-Wswitch-default" "-Wundef" "-Werror" "-Wno-unused")

if(${USER_LINK_BOOST})
  find_package( Boost REQUIRED COMPONENTS regex)
  if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
  endif(Boost_FOUND)
endif()

#file(COPY "data/Users_Guesses_Pool.txt" DESTINATION "data/")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${USER_BUILD_CONFIGURATION_MODE})

#Compilation Stage Module
add_compile_options(${CMAKE_CXX_FLAGS_CONF1})
add_executable( ${PROJECT_NAME} src/main.cpp src/Computer.cpp src/Test.cpp)

if(${USER_LINK_BOOST})
  target_link_libraries( ${PROJECT_NAME} ${Boost_LIBRARIES})
endif()
