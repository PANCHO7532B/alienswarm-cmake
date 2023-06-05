#!/bin/bash
# Execute at your own risk.
# This cleans every CMake generated file and object from project folders
# ...so you can do an clean CMake rebuild afterwards.
rm game/bin/client*
rm game/bin/missionchooser*
rm game/bin/server*
rm -rf CMakeCache.txt && rm -rf CMakeFiles && rm cmake_install.cmake && rm Makefile && rm *.cbp && rm *.layout
rm -rf src/CMakeCache.txt && rm -rf src/CMakeFiles && rm src/cmake_install.cmake && rm src/Makefile && rm src/*.cbp && rm src/*.layout
rm -rf src/game/client/CMakeCache.txt && rm -rf src/game/client/CMakeFiles && rm src/game/client/cmake_install.cmake && rm src/game/client/Makefile && rm src/game/client/*.cbp && rm src/game/client/*.layout
rm -rf src/game/missionchooser/CMakeCache.txt && rm -rf src/game/missionchooser/CMakeFiles && rm src/game/missionchooser/cmake_install.cmake && rm src/game/missionchooser/Makefile && rm src/game/missionchooser/*.cbp && rm src/game/missionchooser/*.layout
rm -rf src/game/server/CMakeCache.txt && rm -rf src/game/server/CMakeFiles && rm src/game/server/cmake_install.cmake && rm src/game/server/Makefile && rm src/game/server/*.cbp && rm src/game/server/*.layout
echo "[INFO] Done!"
exit