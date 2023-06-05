#########################################################################
# CMakeLists.txt (missionchooser)                                       #
# Original by PANCHO7532 (pancho7532@p7com.net), 10/Dec/2022            #
# Originally adapted for Half-Life SDK, 05/Jan/2023                     #
# Re-adapted for Alien Swarm SDK, 04/Jun/2023                           #
#########################################################################
cmake_minimum_required(VERSION 3.0)
project(missionchooser)

#########################################
# placeholder, debug includes:
#..\\..\\common;..\\..\\public;..\\..\\public\\tier0;..\\..\\public\\tier1,.,vgui,vgui\\dialogs,TileSource,keyvalues_editor
# placeholder, debug defines:
#WIN32;_WIN32;_DEBUG;DEBUG;_WINDOWS;_USRDLL;_CRT_SECURE_NO_DEPRECATE;_CRT_NONSTDC_NO_DEPRECATE;DLLNAME=missionchooser;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll;COMPILER_MSVC32;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll;COMPILER_MSVC;MEMOVERRIDE_MODULE=missionchooser;_DLL_EXT=.dll;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll;DLLNAME=missionchooser;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll
# placeholder, windres debug defines:
#_DEBUG;_CRT_SECURE_NO_DEPRECATE;_CRT_NONSTDC_NO_DEPRECATE
# placeholder, linker debug includes:
#..\\..\\lib\\common\\.;..\\..\\lib\\public\\.
#########################################
# placeholder, release includes:
#..\\..\\common;..\\..\\public;..\\..\\public\\tier0;..\\..\\public\\tier1,.,vgui,vgui\\dialogs,TileSource,keyvalues_editor
# placeholder, release defines:
#WIN32;_WIN32;NDEBUG;_WINDOWS;_USRDLL;_CRT_SECURE_NO_DEPRECATE;_CRT_NONSTDC_NO_DEPRECATE;DLLNAME=missionchooser;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll;COMPILER_MSVC32;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll;COMPILER_MSVC;MEMOVERRIDE_MODULE=missionchooser;_DLL_EXT=.dll;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll;DLLNAME=missionchooser;VPCGAME=swarm;VPCGAMECAPS=SWARM;_DLL_EXT=.dll
# placeholder, windres release defines:
#NDEBUG;_CRT_SECURE_NO_DEPRECATE;_CRT_NONSTDC_NO_DEPRECATE
# placeholder, linker release includes:
#..\\..\\lib\\common\\.;..\\..\\lib\\public\\.
#########################################

# Setting specific compiler flags for each build
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DMEMOVERRIDE_MODULE=missionchooser -DDLLNAME=missionchooser")

# Setting include directories
include_directories(
    ../../common
    ../../public
    ../../public/tier0
    ../../public/tier1
    .
    vgui
    vgui/dialogs
    TileSource
    keyvalues_editor
)

# Setting output directories
set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${PROJECT_SOURCE_DIR}/../../../game/mod_swarm/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${PROJECT_SOURCE_DIR}/../../../game/mod_swarm/bin")

# Adding source files, in advance I apologize for this mess, it's done this way so I can order by source_group's for VS folders later.
#-> Source files root
set(SDK_MCBASESRC ./asw_key_values_database.cpp
    ./asw_key_values_database.h
    ./asw_location_grid.cpp
    ./asw_location_grid.h
    ./asw_map_builder.cpp
    ./asw_map_builder.h
    ./asw_mission_chooser.cpp
    ./asw_mission_chooser.h
    ./asw_mission_chooser_source_local.cpp
    ./asw_mission_chooser_source_local.h
    ./asw_mission_text_database.cpp
    ./asw_mission_text_database.h
    ./asw_npcs.cpp
    ./asw_npcs.h
    ./asw_random_missions.cpp
    ./asw_random_missions.h
    ./asw_spawn_selection.cpp
    ./asw_spawn_selection.h
    ./asw_system.cpp
    ./asw_system.h
    ../../public/chunkfile.cpp
    ../../common/debug_dll_check.cpp
    ../../public/tier0/memoverride.cpp
    ./tile_check.cpp
    ./tile_check.h
    ./tilegen_core.h
    ./VMFExporter.cpp
    ./VMFExporter.h
)
#--> TileSource
set(SDK_MCTILESOURCE ./TileSource/LevelTheme.cpp
    ./TileSource/LevelTheme.h
    ./TileSource/MapLayout.cpp
    ./TileSource/MapLayout.h
    ./TileSource/Room.cpp
    ./TileSource/Room.h
    ./TileSource/RoomTemplate.cpp
    ./TileSource/RoomTemplate.h
    ./TileSource/TagList.cpp
    ./TileSource/TagList.h
)
#--> keyvalues_editor
set(SDK_KVEDITOR ./keyvalues_editor/kv_combo_leaf_panel.cpp
    ./keyvalues_editor/kv_combo_leaf_panel.h
    ./keyvalues_editor/kv_editor.cpp
    ./keyvalues_editor/kv_editor.h
    ./keyvalues_editor/kv_editor_base_panel.cpp
    ./keyvalues_editor/kv_editor_base_panel.h
    ./keyvalues_editor/kv_editor_frame.cpp
    ./keyvalues_editor/kv_editor_frame.h
    ./keyvalues_editor/kv_fit_children_panel.cpp
    ./keyvalues_editor/kv_fit_children_panel.h
    ./keyvalues_editor/kv_leaf_panel.cpp
    ./keyvalues_editor/kv_leaf_panel.h
    ./keyvalues_editor/kv_node_panel.cpp
    ./keyvalues_editor/kv_node_panel.h
    ./vgui/location_editor/location_editor_frame.cpp
    ./vgui/location_editor/location_editor_frame.h
    ./vgui/location_editor/location_layout_panel.cpp
    ./vgui/location_editor/location_layout_panel.h
    ./vgui/location_editor/mission_txt_leaf_panel.cpp
    ./vgui/location_editor/mission_txt_leaf_panel.h
    ./vgui/mission_editor/theme_room_picker.cpp
    ./vgui/mission_editor/theme_room_picker.h
)
#--> layout_system
set(SDK_LAYOUTSYSTEM ./layout_system/tilegen_actions.cpp
    ./layout_system/tilegen_actions.h
    ./layout_system/tilegen_class_factories.cpp
    ./layout_system/tilegen_class_factories.h
    ./layout_system/tilegen_class_interfaces.h
    ./layout_system/tilegen_enum.cpp
    ./layout_system/tilegen_enum.h
    ./layout_system/tilegen_expressions.cpp
    ./layout_system/tilegen_expressions.h
    ./layout_system/tilegen_layout_system.cpp
    ./layout_system/tilegen_layout_system.h
    ./layout_system/tilegen_listeners.cpp
    ./layout_system/tilegen_listeners.h
    ./layout_system/tilegen_mission_preprocessor.cpp
    ./layout_system/tilegen_mission_preprocessor.h
    ./layout_system/tilegen_ranges.cpp
    ./layout_system/tilegen_ranges.h
    ./layout_system/tilegen_rule.cpp
    ./layout_system/tilegen_rule.h
)
#--> layout_system_editor
set(SDK_LAYOUTSYSTEMEDITOR ./layout_system_editor/layout_system_kv_editor.cpp
    ./layout_system_editor/layout_system_kv_editor.h
    ./layout_system_editor/mission_panel.cpp
    ./layout_system_editor/mission_panel.h
    ./layout_system_editor/node_panel.cpp
    ./layout_system_editor/node_panel.h
    ./layout_system_editor/rule_instance_node_panel.cpp
    ./layout_system_editor/rule_instance_node_panel.h
    ./layout_system_editor/rule_instance_parameter_panel.cpp
    ./layout_system_editor/rule_instance_parameter_panel.h
    ./layout_system_editor/state_node_panel.cpp
    ./layout_system_editor/state_node_panel.h
)
#--> vgui
SET(SDK_MCVGUI ./vgui/MapLayoutPanel.cpp
    ./vgui/MapLayoutPanel.h
    ./vgui/missionchooser_tgaimagepanel.cpp
    ./vgui/missionchooser_tgaimagepanel.h
    ./vgui/npc_spawns_panel.cpp
    ./vgui/npc_spawns_panel.h
    ./vgui/PlacedRoomTemplatePanel.cpp
    ./vgui/PlacedRoomTemplatePanel.h
    ./vgui/RoomTemplateListPanel.cpp
    ./vgui/RoomTemplateListPanel.h
    ./vgui/RoomTemplatePanel.cpp
    ./vgui/RoomTemplatePanel.h
    ./vgui/ScrollingWindow.cpp
    ./vgui/ScrollingWindow.h
    ./vgui/tilegen_pages.cpp
    ./vgui/tilegen_pages.h
    ./vgui/ToggleExitsPanel.cpp
    ./vgui/ToggleExitsPanel.h
    ../../public/vgui_controls/vgui_controls.cpp
)
#---> vgui - Dialogs
set(SDK_MCVGUIDIALOGS ./vgui/dialogs/ExitEditDialog.cpp
    ./vgui/dialogs/ExitEditDialog.h
    ./vgui/dialogs/RoomTemplateEditDialog.cpp
    ./vgui/dialogs/RoomTemplateEditDialog.h
    ./vgui/dialogs/ThemeEditDialog.cpp
    ./vgui/dialogs/ThemeEditDialog.h
    ./vgui/dialogs/ThemesDialog.cpp
    ./vgui/dialogs/ThemesDialog.h
    ./vgui/dialogs/TileGenDialog.cpp
    ./vgui/dialogs/TileGenDialog.h
)
#-> Link Libraries
set(SDK_MCLINKLIBRARIES ../../lib/public/bitmap.lib
    ../../lib/public/dmxloader.lib
    ../../lib/public/fgdlib.lib
    ../../lib/public/interfaces.lib
    ../../lib/common/jpeglib.lib
    ../../lib/public/mathlib.lib
    ../../lib/public/matsys_controls.lib
    ../../lib/public/steam_api.lib
    ../../lib/public/tier0.lib
    ../../lib/public/tier1.lib
    ../../lib/public/tier2.lib
    ../../lib/public/tier3.lib
    ../../lib/public/vbsp2lib.lib
    ../../lib/public/vgui_controls.lib
    ../../lib/public/vstdlib.lib
    ../../lib/public/vtf.lib
)
#-> Public Header Files
set(SDK_PUBLICHFILES #./chunkfile.h # file doesn't exist for some reason
    ../../public/missionchooser/iasw_mission_chooser.h
    ../../public/missionchooser/iasw_mission_chooser_source.h
    ../../public/missionchooser/iasw_random_missions.h
    ../../public/missionchooser/iasw_spawn_selection.h
    ../../public/tier1/interface.h
)
add_library(missionchooser SHARED ${SDK_MCBASESRC} ${SDK_MCTILESOURCE} ${SDK_KVEDITOR} ${SDK_LAYOUTSYSTEM} ${SDK_LAYOUTSYSTEMEDITOR} ${SDK_MCVGUI} ${SDK_MCVGUIDIALOGS} ${SDK_PUBLICHFILES})