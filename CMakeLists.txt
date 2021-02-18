cmake_minimum_required (VERSION 3.8)

project(AzureDevopsTrialProject)

add_executable(AzureDevopsTrialProject program.cpp)

install(TARGETS AzureDevopsTrialProject DESTINATION bin)