# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/georgecampbell/arduino/rgb-panel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug

# Utility rule file for rgb_panel-burn.

# Include the progress variables for this target.
include CMakeFiles/rgb_panel-burn.dir/progress.make

CMakeFiles/rgb_panel-burn: rgb_panel.elf
	/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin/avrdude -C/Applications/Arduino.app/Contents/Java/hardware/tools/avr/etc/avrdude.conf -cstk500v2 -Pusb -patmega2560 -v -Uflash:w:/Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/rgb_panel.hex

rgb_panel-burn: CMakeFiles/rgb_panel-burn
rgb_panel-burn: CMakeFiles/rgb_panel-burn.dir/build.make

.PHONY : rgb_panel-burn

# Rule to build all files generated by this target.
CMakeFiles/rgb_panel-burn.dir/build: rgb_panel-burn

.PHONY : CMakeFiles/rgb_panel-burn.dir/build

CMakeFiles/rgb_panel-burn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rgb_panel-burn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rgb_panel-burn.dir/clean

CMakeFiles/rgb_panel-burn.dir/depend:
	cd /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/georgecampbell/arduino/rgb-panel /Users/georgecampbell/arduino/rgb-panel /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/CMakeFiles/rgb_panel-burn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rgb_panel-burn.dir/depend
