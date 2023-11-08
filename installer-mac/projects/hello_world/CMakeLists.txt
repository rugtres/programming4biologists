cmake_minimum_required (VERSION 3.21)

set(CMAKE_CXX_STANDARD 20)

set(project_dir "${CMAKE_CURRENT_SOURCE_DIR}")
cmake_path(GET project_dir FILENAME project_name)

project (${project_name})
file(GLOB cpp_files
    ${project_dir}/*.cpp
    ${project_dir}/*.hpp
    ${project_dir}/*.h
)

add_executable (${project_name} ${cpp_files})

set_target_properties(${project_name} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${project_dir}/bin/$<0:>)
