cmake_minimum_required(VERSION 3.20)

# set project name 
project(HelloProj VERSION 1.0)

# specify the C++ standard
# use the CMAKE_CXX_STANDARD variable
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIERED TRUE)

#export configuration to source code
configure_file(cmake/HelloProjConfig.h.in HelloProjConfig.h)

#add libraries
add_subdirectory(src/basic)

#add executable
option(HELLOWORLD_WITH_EXECUTABLES "Compile mains" ON)
if(HELLOWORLD_WITH_EXECUTABLES)
message(STATUS "Configuring Hello World with executables")
add_subdirectory(mains)
endif()

#add tests
option(HELLOWORLD_WITH_TESTS "Compile tests" ON)
if(HELLOWORLD_WITH_TESTS)
enable_testing()
message(STATUS "Configuring Hello World with tests")
add_subdirectory(tests)
endif()