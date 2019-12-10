cmake_minimum_required(VERSION 3.15)
project(thread C)

set(CMAKE_C_STANDARD 99)

add_executable(thread main.c "semaphores.h" semaphores.c)

SET(CMAKE_CXX_FLAGS -pthread )

target_link_libraries(${PROJECT_NAME} pthread)