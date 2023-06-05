#########################################################################
# CMakeLists.txt                                                        #
# Original by PANCHO7532 (pancho7532@p7com.net), 10/Dec/2022            #
# Originally adapted for Half-Life SDK, 05/Jan/2023                     #
# Re-adapted for Alien Swarm SDK, 04/Jun/2023                           #
#########################################################################
cmake_minimum_required(VERSION 3.0)

# This is intended for use on cross-compile stuff from Linux to Windows, who knows if it'll work on CMake under Windows
set(CMAKE_SYSTEM_NAME Windows)
set(TOOLCHAIN_PREFIX i686-w64-mingw32) # name of the compiler that we're going to use
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_Fortran_COMPILER ${TOOLCHAIN_PREFIX}-gfortran)
set(CMAKE_RC_COMPILER ${TOOLCHAIN_PREFIX}-windres)
set(CMAKE_RANLIB ${TOOLCHAIN_PREFIX}-ranlib)
set(CMAKE_FIND_ROOT_PATH /bin 
    /sbin
    /usr/bin
    /usr/sbin
    /usr/local/bin
    /usr/local/sbin
    /snap/bin
)
if(NOT CMAKE_BUILD_TYPE)
	set(CMAKE_BUILD_TYPE "Release") # set to Release build by default
	message("[INFO] No build type specified, using ${CMAKE_BUILD_TYPE}")
endif()
message("[INFO] Build type: ${CMAKE_BUILD_TYPE}")

# Available options
#option(BUILD_NOTHING_BY_DEFAULT, "Do not build pre-set projects", FALSE)

# Set compiler flags that both Release and Debug will be using
set(GLOBAL_COMPILER_FLAGS "-m32 -fpermissive -fno-strict-aliasing -fmax-errors=1 -DWIN32 -D_WIN32 -D_WINDOWS -D_USRDLL -D_CRT_SECURE_NO_DEPRECATE -D_CRT_NONSTDC_NO_DEPRECATE -DVPCGAME=swarm -DVPCGAMECAPS=SWARM -D_DLL_EXT=.dll -DCOMPILER_MSVC -DCOMPILER_MSVC32")

# Global compiler flags for C files
set(CMAKE_C_FLAGS "${GLOBAL_COMPILER_FLAGS}")
set(CMAKE_C_FLAGS_DEBUG "-O0 -g2 -gdwarf-2 -w -D_DEBUG -DDEBUG")
set(CMAKE_C_FLAGS_RELEASE "-O3 -s -w -DNDEBUG") # note for later: strip debug info?
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF) # enable/disable GNU std specification/extension

# Global compiler flags for C++ files
set(CMAKE_CXX_FLAGS "${GLOBAL_COMPILER_FLAGS}")
# note for later: should I use -DCOMPILER_MSVC32? we are not in msvc but I'm not sure
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g2 -gdwarf-2 -w -D_DEBUG -DDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -s -w -DNDEBUG") # note for later: strip debug info?
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF) # enable/disable GNU std specification/extension

# global linker flags
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS}")
# Setting up
project(swarm)
if(BUILD_NOTHING_BY_DEFAULT)
else()
    message("[INFO] Building defaults...")
    #add_subdirectory(game/client)
    add_subdirectory(game/missionchooser)
    #add_subdirectory(game/server)
endif()