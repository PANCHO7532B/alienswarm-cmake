#########################################################################
# CMakeLists.txt (missionchooser)                                       #
# Original by PANCHO7532 (pancho7532@p7com.net), 10/Dec/2022            #
# Originally adapted for Half-Life SDK, 05/Jan/2023                     #
# Re-adapted for Alien Swarm SDK, 04/Jun/2023                           #
#########################################################################
cmake_minimum_required(VERSION 3.0)
project(missionchooser)

# Setting specific compiler flags for each build
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

# Setting include directories
include_directories()

# Setting output directories
set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${PROJECT_SOURCE_DIR}/../../../game/mod_swarm/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${PROJECT_SOURCE_DIR}/../../../game/mod_swarm/bin")

add_library(missionchooser SHARED source.cpp)