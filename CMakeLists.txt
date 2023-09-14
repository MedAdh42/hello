cmake_minimum_required(VERSION 3.20)

# set project name 
project(HelloProj VERSION 1.0)

# specify the C++ standard
# use the CMAKE_CXX_STANDARD variable
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIERED TRUE)

#export configuration to source code
configure_file(HelloProjConfig.h.in HelloProjConfig.h)

# add the executable target named 
add_executable(HelloWorld hello.cpp)

# add binary tree to the list of paths to search includes
target_include_directories(HelloWorld PUBLIC "${PROJECT_BINARY_DIR}")