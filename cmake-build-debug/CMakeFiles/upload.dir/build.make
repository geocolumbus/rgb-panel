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

# Utility rule file for upload.

# Include the progress variables for this target.
include CMakeFiles/upload.dir/progress.make

upload: CMakeFiles/upload.dir/build.make

.PHONY : upload

# Rule to build all files generated by this target.
CMakeFiles/upload.dir/build: upload

.PHONY : CMakeFiles/upload.dir/build

CMakeFiles/upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/upload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/upload.dir/clean

CMakeFiles/upload.dir/depend:
	cd /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/georgecampbell/arduino/rgb-panel /Users/georgecampbell/arduino/rgb-panel /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug /Users/georgecampbell/arduino/rgb-panel/cmake-build-debug/CMakeFiles/upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/upload.dir/depend
