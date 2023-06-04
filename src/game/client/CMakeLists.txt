#########################################################################
# CMakeLists.txt (SDK Client)                     						#
# Original by PANCHO7532 (pancho7532@p7com.net), 10/Dec/2022		    #
# Originally adapted for Half-Life SDK, 05/Jan/2023				        #
# Re-adapted for Alien Swarm SDK, 04/Jun/2023                           #
#########################################################################
cmake_minimum_required(VERSION 3.0)
project(client)
# Setting specific compiler flags for each build
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

# Setting include directories
include_directories()

# Setting output directories
set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${PROJECT_SOURCE_DIR}/../../../game/mod_swarm/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${PROJECT_SOURCE_DIR}/../../../game/mod_swarm/bin")

# Adding source files
### Source files filter, these in this block should be nested
set(SDK_CLIENTBASESRC)
set(SDK_PRECOMPH)
set(SDK_TEMPENTITIESSRC)
set(SDK_GAMECONTROLSSRC)
set(SDK_HL2SRC)
set(SDK_SWARMSRC)
###
### Header files
set(SDK_HFILES)
###
### Public header files
set(SDK_PUBHFILES)
###
### Game shared header files
set(SDK_SHAREDHFILES)
###
### game_controls header files
set(SDK_GAMECONTROLSHFILES)

### MP3
set(MP3SRC)
###
### Tool framework
set(TOOLFRAMEWORKSRC)
###
### Link libraries
set(CLIENT_LIBRARIES)
###
add_library(compiled_lib_example SHARED IMPORTED)
set_target_properties(compiled_lib_example PROPERTIES IMPORTED_LOCATION ${PROJECT_SOURCE_DIR}/compiled_lib_example.so)
add_library(client SHARED source.cpp)

# NOTE: libSDL2 is apparently linked already with vgui according to ldd info!
# Uncomment the correspondent lines and add to target if you need it anyways.
#add_library(vgui SHARED IMPORTED)
#add_library(libSDL2 SHARED IMPORTED)
#set_target_properties(vgui PROPERTIES IMPORTED_LOCATION ${PROJECT_SOURCE_DIR}/vgui.so)
#set_target_properties(libSDL2 PROPERTIES IMPORTED_LOCATION ${PROJECT_SOURCE_DIR}/libSDL2.so)
#target_link_libraries(client vgui)
