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

# Utility rule file for rgb_panel-size.

# Include the progress variables for this target.
include CMakeFiles/rgb_panel-size.dir/progress.make

CMakeFiles/rgb_panel-size: rgb_panel.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Calculating rgb_panel image size"
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -DFIRMWARE_IMAGE=/Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/rgb_panel.elf -DMCU=atmega2560 -DEEPROM_IMAGE=/Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/rgb_panel.eep -P /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/CMakeFiles/FirmwareSize.cmake

rgb_panel-size: CMakeFiles/rgb_panel-size
rgb_panel-size: CMakeFiles/rgb_panel-size.dir/build.make

.PHONY : rgb_panel-size

# Rule to build all files generated by this target.
CMakeFiles/rgb_panel-size.dir/build: rgb_panel-size

.PHONY : CMakeFiles/rgb_panel-size.dir/build

CMakeFiles/rgb_panel-size.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rgb_panel-size.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rgb_panel-size.dir/clean

CMakeFiles/rgb_panel-size.dir/depend:
	cd /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/georgecampbell/arduino/rgb-panel /Users/georgecampbell/arduino/rgb-panel /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/CMakeFiles/rgb_panel-size.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rgb_panel-size.dir/depend
