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
CMAKE_COMMAND = /snap/clion/98/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/98/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mohamedessam/CLionProjects/thread

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohamedessam/CLionProjects/thread/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/thread.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/thread.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/thread.dir/flags.make

CMakeFiles/thread.dir/main.c.o: CMakeFiles/thread.dir/flags.make
CMakeFiles/thread.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamedessam/CLionProjects/thread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/thread.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/thread.dir/main.c.o   -c /home/mohamedessam/CLionProjects/thread/main.c

CMakeFiles/thread.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/thread.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mohamedessam/CLionProjects/thread/main.c > CMakeFiles/thread.dir/main.c.i

CMakeFiles/thread.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/thread.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mohamedessam/CLionProjects/thread/main.c -o CMakeFiles/thread.dir/main.c.s

CMakeFiles/thread.dir/semaphores.c.o: CMakeFiles/thread.dir/flags.make
CMakeFiles/thread.dir/semaphores.c.o: ../semaphores.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mohamedessam/CLionProjects/thread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/thread.dir/semaphores.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/thread.dir/semaphores.c.o   -c /home/mohamedessam/CLionProjects/thread/semaphores.c

CMakeFiles/thread.dir/semaphores.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/thread.dir/semaphores.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mohamedessam/CLionProjects/thread/semaphores.c > CMakeFiles/thread.dir/semaphores.c.i

CMakeFiles/thread.dir/semaphores.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/thread.dir/semaphores.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mohamedessam/CLionProjects/thread/semaphores.c -o CMakeFiles/thread.dir/semaphores.c.s

# Object files for target thread
thread_OBJECTS = \
"CMakeFiles/thread.dir/main.c.o" \
"CMakeFiles/thread.dir/semaphores.c.o"

# External object files for target thread
thread_EXTERNAL_OBJECTS =

thread: CMakeFiles/thread.dir/main.c.o
thread: CMakeFiles/thread.dir/semaphores.c.o
thread: CMakeFiles/thread.dir/build.make
thread: CMakeFiles/thread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mohamedessam/CLionProjects/thread/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable thread"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thread.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/thread.dir/build: thread

.PHONY : CMakeFiles/thread.dir/build

CMakeFiles/thread.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/thread.dir/cmake_clean.cmake
.PHONY : CMakeFiles/thread.dir/clean

CMakeFiles/thread.dir/depend:
	cd /home/mohamedessam/CLionProjects/thread/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohamedessam/CLionProjects/thread /home/mohamedessam/CLionProjects/thread /home/mohamedessam/CLionProjects/thread/cmake-build-debug /home/mohamedessam/CLionProjects/thread/cmake-build-debug /home/mohamedessam/CLionProjects/thread/cmake-build-debug/CMakeFiles/thread.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/thread.dir/depend

