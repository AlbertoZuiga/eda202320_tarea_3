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
CMAKE_SOURCE_DIR = /home/edauandes/Desktop/tareas/tarea_3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edauandes/Desktop/tareas/tarea_3/build

# Include any dependencies generated for this target.
include CMakeFiles/calculadora.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculadora.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculadora.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculadora.dir/flags.make

CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o: CMakeFiles/calculadora.dir/flags.make
CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o: ../tests/tarea_4.cpp
CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o: CMakeFiles/calculadora.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o -MF CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o.d -o CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o -c /home/edauandes/Desktop/tareas/tarea_3/tests/tarea_4.cpp

CMakeFiles/calculadora.dir/tests/tarea_4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculadora.dir/tests/tarea_4.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edauandes/Desktop/tareas/tarea_3/tests/tarea_4.cpp > CMakeFiles/calculadora.dir/tests/tarea_4.cpp.i

CMakeFiles/calculadora.dir/tests/tarea_4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculadora.dir/tests/tarea_4.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edauandes/Desktop/tareas/tarea_3/tests/tarea_4.cpp -o CMakeFiles/calculadora.dir/tests/tarea_4.cpp.s

CMakeFiles/calculadora.dir/src/treeNode.cpp.o: CMakeFiles/calculadora.dir/flags.make
CMakeFiles/calculadora.dir/src/treeNode.cpp.o: ../src/treeNode.cpp
CMakeFiles/calculadora.dir/src/treeNode.cpp.o: CMakeFiles/calculadora.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/calculadora.dir/src/treeNode.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculadora.dir/src/treeNode.cpp.o -MF CMakeFiles/calculadora.dir/src/treeNode.cpp.o.d -o CMakeFiles/calculadora.dir/src/treeNode.cpp.o -c /home/edauandes/Desktop/tareas/tarea_3/src/treeNode.cpp

CMakeFiles/calculadora.dir/src/treeNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculadora.dir/src/treeNode.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edauandes/Desktop/tareas/tarea_3/src/treeNode.cpp > CMakeFiles/calculadora.dir/src/treeNode.cpp.i

CMakeFiles/calculadora.dir/src/treeNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculadora.dir/src/treeNode.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edauandes/Desktop/tareas/tarea_3/src/treeNode.cpp -o CMakeFiles/calculadora.dir/src/treeNode.cpp.s

CMakeFiles/calculadora.dir/src/treeListNode.cpp.o: CMakeFiles/calculadora.dir/flags.make
CMakeFiles/calculadora.dir/src/treeListNode.cpp.o: ../src/treeListNode.cpp
CMakeFiles/calculadora.dir/src/treeListNode.cpp.o: CMakeFiles/calculadora.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/calculadora.dir/src/treeListNode.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculadora.dir/src/treeListNode.cpp.o -MF CMakeFiles/calculadora.dir/src/treeListNode.cpp.o.d -o CMakeFiles/calculadora.dir/src/treeListNode.cpp.o -c /home/edauandes/Desktop/tareas/tarea_3/src/treeListNode.cpp

CMakeFiles/calculadora.dir/src/treeListNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculadora.dir/src/treeListNode.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edauandes/Desktop/tareas/tarea_3/src/treeListNode.cpp > CMakeFiles/calculadora.dir/src/treeListNode.cpp.i

CMakeFiles/calculadora.dir/src/treeListNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculadora.dir/src/treeListNode.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edauandes/Desktop/tareas/tarea_3/src/treeListNode.cpp -o CMakeFiles/calculadora.dir/src/treeListNode.cpp.s

CMakeFiles/calculadora.dir/src/treeList.cpp.o: CMakeFiles/calculadora.dir/flags.make
CMakeFiles/calculadora.dir/src/treeList.cpp.o: ../src/treeList.cpp
CMakeFiles/calculadora.dir/src/treeList.cpp.o: CMakeFiles/calculadora.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/calculadora.dir/src/treeList.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculadora.dir/src/treeList.cpp.o -MF CMakeFiles/calculadora.dir/src/treeList.cpp.o.d -o CMakeFiles/calculadora.dir/src/treeList.cpp.o -c /home/edauandes/Desktop/tareas/tarea_3/src/treeList.cpp

CMakeFiles/calculadora.dir/src/treeList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculadora.dir/src/treeList.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edauandes/Desktop/tareas/tarea_3/src/treeList.cpp > CMakeFiles/calculadora.dir/src/treeList.cpp.i

CMakeFiles/calculadora.dir/src/treeList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculadora.dir/src/treeList.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edauandes/Desktop/tareas/tarea_3/src/treeList.cpp -o CMakeFiles/calculadora.dir/src/treeList.cpp.s

CMakeFiles/calculadora.dir/src/tree.cpp.o: CMakeFiles/calculadora.dir/flags.make
CMakeFiles/calculadora.dir/src/tree.cpp.o: ../src/tree.cpp
CMakeFiles/calculadora.dir/src/tree.cpp.o: CMakeFiles/calculadora.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/calculadora.dir/src/tree.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculadora.dir/src/tree.cpp.o -MF CMakeFiles/calculadora.dir/src/tree.cpp.o.d -o CMakeFiles/calculadora.dir/src/tree.cpp.o -c /home/edauandes/Desktop/tareas/tarea_3/src/tree.cpp

CMakeFiles/calculadora.dir/src/tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculadora.dir/src/tree.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edauandes/Desktop/tareas/tarea_3/src/tree.cpp > CMakeFiles/calculadora.dir/src/tree.cpp.i

CMakeFiles/calculadora.dir/src/tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculadora.dir/src/tree.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edauandes/Desktop/tareas/tarea_3/src/tree.cpp -o CMakeFiles/calculadora.dir/src/tree.cpp.s

CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o: CMakeFiles/calculadora.dir/flags.make
CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o: ../src/infixToPostfix.cpp
CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o: CMakeFiles/calculadora.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o -MF CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o.d -o CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o -c /home/edauandes/Desktop/tareas/tarea_3/src/infixToPostfix.cpp

CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/edauandes/Desktop/tareas/tarea_3/src/infixToPostfix.cpp > CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.i

CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/edauandes/Desktop/tareas/tarea_3/src/infixToPostfix.cpp -o CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.s

# Object files for target calculadora
calculadora_OBJECTS = \
"CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o" \
"CMakeFiles/calculadora.dir/src/treeNode.cpp.o" \
"CMakeFiles/calculadora.dir/src/treeListNode.cpp.o" \
"CMakeFiles/calculadora.dir/src/treeList.cpp.o" \
"CMakeFiles/calculadora.dir/src/tree.cpp.o" \
"CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o"

# External object files for target calculadora
calculadora_EXTERNAL_OBJECTS =

calculadora: CMakeFiles/calculadora.dir/tests/tarea_4.cpp.o
calculadora: CMakeFiles/calculadora.dir/src/treeNode.cpp.o
calculadora: CMakeFiles/calculadora.dir/src/treeListNode.cpp.o
calculadora: CMakeFiles/calculadora.dir/src/treeList.cpp.o
calculadora: CMakeFiles/calculadora.dir/src/tree.cpp.o
calculadora: CMakeFiles/calculadora.dir/src/infixToPostfix.cpp.o
calculadora: CMakeFiles/calculadora.dir/build.make
calculadora: CMakeFiles/calculadora.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable calculadora"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculadora.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculadora.dir/build: calculadora
.PHONY : CMakeFiles/calculadora.dir/build

CMakeFiles/calculadora.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calculadora.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calculadora.dir/clean

CMakeFiles/calculadora.dir/depend:
	cd /home/edauandes/Desktop/tareas/tarea_3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edauandes/Desktop/tareas/tarea_3 /home/edauandes/Desktop/tareas/tarea_3 /home/edauandes/Desktop/tareas/tarea_3/build /home/edauandes/Desktop/tareas/tarea_3/build /home/edauandes/Desktop/tareas/tarea_3/build/CMakeFiles/calculadora.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/calculadora.dir/depend
