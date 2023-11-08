# CMakeList.txt
# Simple CMakeList file for cpp4bio
#
# Hanno Hildenbrandt 2023

cmake_minimum_required (VERSION 3.8)

cmake_path(GET CMAKE_CURRENT_SOURCE_DIR FILENAME ProjectDir)
string(REPLACE " " "_" ProjectName ${ProjectDir})
project(${ProjectName})

# Add source to this project's executable.
add_executable (${ProjectName} "main.cpp")

target_link_options(${ProjectName} PRIVATE -static)
set_target_properties(${ProjectName} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/$<0:>)
