# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pawel/sp/permutations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pawel/sp/permutations/build

# Include any dependencies generated for this target.
include CMakeFiles/inwersjePermutacji.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/inwersjePermutacji.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/inwersjePermutacji.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/inwersjePermutacji.dir/flags.make

CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o: CMakeFiles/inwersjePermutacji.dir/flags.make
CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o: ../inwersjePermutacji.c
CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o: CMakeFiles/inwersjePermutacji.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pawel/sp/permutations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o -MF CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o.d -o CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o -c /home/pawel/sp/permutations/inwersjePermutacji.c

CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pawel/sp/permutations/inwersjePermutacji.c > CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.i

CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pawel/sp/permutations/inwersjePermutacji.c -o CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.s

# Object files for target inwersjePermutacji
inwersjePermutacji_OBJECTS = \
"CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o"

# External object files for target inwersjePermutacji
inwersjePermutacji_EXTERNAL_OBJECTS =

inwersjePermutacji: CMakeFiles/inwersjePermutacji.dir/inwersjePermutacji.c.o
inwersjePermutacji: CMakeFiles/inwersjePermutacji.dir/build.make
inwersjePermutacji: CMakeFiles/inwersjePermutacji.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pawel/sp/permutations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable inwersjePermutacji"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inwersjePermutacji.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/inwersjePermutacji.dir/build: inwersjePermutacji
.PHONY : CMakeFiles/inwersjePermutacji.dir/build

CMakeFiles/inwersjePermutacji.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/inwersjePermutacji.dir/cmake_clean.cmake
.PHONY : CMakeFiles/inwersjePermutacji.dir/clean

CMakeFiles/inwersjePermutacji.dir/depend:
	cd /home/pawel/sp/permutations/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pawel/sp/permutations /home/pawel/sp/permutations /home/pawel/sp/permutations/build /home/pawel/sp/permutations/build /home/pawel/sp/permutations/build/CMakeFiles/inwersjePermutacji.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/inwersjePermutacji.dir/depend
