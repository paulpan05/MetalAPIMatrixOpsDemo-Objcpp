# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/paulpan/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/paulpan/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/212.5457.51/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/paulpan/GitRepos/MetalDemoApp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MetalDemoApp.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/MetalDemoApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MetalDemoApp.dir/flags.make

CMakeFiles/MetalDemoApp.dir/main.mm.o: CMakeFiles/MetalDemoApp.dir/flags.make
CMakeFiles/MetalDemoApp.dir/main.mm.o: ../main.mm
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MetalDemoApp.dir/main.mm.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MetalDemoApp.dir/main.mm.o -c /Users/paulpan/GitRepos/MetalDemoApp/main.mm

CMakeFiles/MetalDemoApp.dir/main.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MetalDemoApp.dir/main.mm.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paulpan/GitRepos/MetalDemoApp/main.mm > CMakeFiles/MetalDemoApp.dir/main.mm.i

CMakeFiles/MetalDemoApp.dir/main.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MetalDemoApp.dir/main.mm.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paulpan/GitRepos/MetalDemoApp/main.mm -o CMakeFiles/MetalDemoApp.dir/main.mm.s

# Object files for target MetalDemoApp
MetalDemoApp_OBJECTS = \
"CMakeFiles/MetalDemoApp.dir/main.mm.o"

# External object files for target MetalDemoApp
MetalDemoApp_EXTERNAL_OBJECTS =

MetalDemoApp: CMakeFiles/MetalDemoApp.dir/main.mm.o
MetalDemoApp: CMakeFiles/MetalDemoApp.dir/build.make
MetalDemoApp: CMakeFiles/MetalDemoApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MetalDemoApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MetalDemoApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MetalDemoApp.dir/build: MetalDemoApp
.PHONY : CMakeFiles/MetalDemoApp.dir/build

CMakeFiles/MetalDemoApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MetalDemoApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MetalDemoApp.dir/clean

CMakeFiles/MetalDemoApp.dir/depend:
	cd /Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/paulpan/GitRepos/MetalDemoApp /Users/paulpan/GitRepos/MetalDemoApp /Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug /Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug /Users/paulpan/GitRepos/MetalDemoApp/cmake-build-debug/CMakeFiles/MetalDemoApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MetalDemoApp.dir/depend

