# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/tello/udp_forward

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/tello/udp_forward/build

# Include any dependencies generated for this target.
include CMakeFiles/udp_forward.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/udp_forward.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/udp_forward.dir/flags.make

CMakeFiles/udp_forward.dir/udp_forward.c.o: CMakeFiles/udp_forward.dir/flags.make
CMakeFiles/udp_forward.dir/udp_forward.c.o: ../udp_forward.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/tello/udp_forward/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/udp_forward.dir/udp_forward.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/udp_forward.dir/udp_forward.c.o   -c /home/ubuntu/tello/udp_forward/udp_forward.c

CMakeFiles/udp_forward.dir/udp_forward.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/udp_forward.dir/udp_forward.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/tello/udp_forward/udp_forward.c > CMakeFiles/udp_forward.dir/udp_forward.c.i

CMakeFiles/udp_forward.dir/udp_forward.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/udp_forward.dir/udp_forward.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/tello/udp_forward/udp_forward.c -o CMakeFiles/udp_forward.dir/udp_forward.c.s

CMakeFiles/udp_forward.dir/udp_forward.c.o.requires:

.PHONY : CMakeFiles/udp_forward.dir/udp_forward.c.o.requires

CMakeFiles/udp_forward.dir/udp_forward.c.o.provides: CMakeFiles/udp_forward.dir/udp_forward.c.o.requires
	$(MAKE) -f CMakeFiles/udp_forward.dir/build.make CMakeFiles/udp_forward.dir/udp_forward.c.o.provides.build
.PHONY : CMakeFiles/udp_forward.dir/udp_forward.c.o.provides

CMakeFiles/udp_forward.dir/udp_forward.c.o.provides.build: CMakeFiles/udp_forward.dir/udp_forward.c.o


# Object files for target udp_forward
udp_forward_OBJECTS = \
"CMakeFiles/udp_forward.dir/udp_forward.c.o"

# External object files for target udp_forward
udp_forward_EXTERNAL_OBJECTS =

udp_forward: CMakeFiles/udp_forward.dir/udp_forward.c.o
udp_forward: CMakeFiles/udp_forward.dir/build.make
udp_forward: CMakeFiles/udp_forward.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/tello/udp_forward/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable udp_forward"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp_forward.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/udp_forward.dir/build: udp_forward

.PHONY : CMakeFiles/udp_forward.dir/build

CMakeFiles/udp_forward.dir/requires: CMakeFiles/udp_forward.dir/udp_forward.c.o.requires

.PHONY : CMakeFiles/udp_forward.dir/requires

CMakeFiles/udp_forward.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/udp_forward.dir/cmake_clean.cmake
.PHONY : CMakeFiles/udp_forward.dir/clean

CMakeFiles/udp_forward.dir/depend:
	cd /home/ubuntu/tello/udp_forward/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/tello/udp_forward /home/ubuntu/tello/udp_forward /home/ubuntu/tello/udp_forward/build /home/ubuntu/tello/udp_forward/build /home/ubuntu/tello/udp_forward/build/CMakeFiles/udp_forward.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/udp_forward.dir/depend
