# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build

# Include any dependencies generated for this target.
include CMakeFiles/AVS_homework_1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AVS_homework_1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AVS_homework_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AVS_homework_1.dir/flags.make

CMakeFiles/AVS_homework_1.dir/main.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/main.cpp.o: ../main.cpp
CMakeFiles/AVS_homework_1.dir/main.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AVS_homework_1.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/main.cpp.o -MF CMakeFiles/AVS_homework_1.dir/main.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/main.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/main.cpp

CMakeFiles/AVS_homework_1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/main.cpp > CMakeFiles/AVS_homework_1.dir/main.cpp.i

CMakeFiles/AVS_homework_1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/main.cpp -o CMakeFiles/AVS_homework_1.dir/main.cpp.s

CMakeFiles/AVS_homework_1.dir/container.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/container.cpp.o: ../container.cpp
CMakeFiles/AVS_homework_1.dir/container.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AVS_homework_1.dir/container.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/container.cpp.o -MF CMakeFiles/AVS_homework_1.dir/container.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/container.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/container.cpp

CMakeFiles/AVS_homework_1.dir/container.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/container.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/container.cpp > CMakeFiles/AVS_homework_1.dir/container.cpp.i

CMakeFiles/AVS_homework_1.dir/container.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/container.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/container.cpp -o CMakeFiles/AVS_homework_1.dir/container.cpp.s

CMakeFiles/AVS_homework_1.dir/language.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/language.cpp.o: ../language.cpp
CMakeFiles/AVS_homework_1.dir/language.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AVS_homework_1.dir/language.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/language.cpp.o -MF CMakeFiles/AVS_homework_1.dir/language.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/language.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/language.cpp

CMakeFiles/AVS_homework_1.dir/language.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/language.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/language.cpp > CMakeFiles/AVS_homework_1.dir/language.cpp.i

CMakeFiles/AVS_homework_1.dir/language.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/language.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/language.cpp -o CMakeFiles/AVS_homework_1.dir/language.cpp.s

CMakeFiles/AVS_homework_1.dir/procedural.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/procedural.cpp.o: ../procedural.cpp
CMakeFiles/AVS_homework_1.dir/procedural.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/AVS_homework_1.dir/procedural.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/procedural.cpp.o -MF CMakeFiles/AVS_homework_1.dir/procedural.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/procedural.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/procedural.cpp

CMakeFiles/AVS_homework_1.dir/procedural.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/procedural.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/procedural.cpp > CMakeFiles/AVS_homework_1.dir/procedural.cpp.i

CMakeFiles/AVS_homework_1.dir/procedural.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/procedural.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/procedural.cpp -o CMakeFiles/AVS_homework_1.dir/procedural.cpp.s

CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o: ../object_oriented.cpp
CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o -MF CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/object_oriented.cpp

CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/object_oriented.cpp > CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.i

CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/object_oriented.cpp -o CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.s

CMakeFiles/AVS_homework_1.dir/functional.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/functional.cpp.o: ../functional.cpp
CMakeFiles/AVS_homework_1.dir/functional.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/AVS_homework_1.dir/functional.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/functional.cpp.o -MF CMakeFiles/AVS_homework_1.dir/functional.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/functional.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/functional.cpp

CMakeFiles/AVS_homework_1.dir/functional.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/functional.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/functional.cpp > CMakeFiles/AVS_homework_1.dir/functional.cpp.i

CMakeFiles/AVS_homework_1.dir/functional.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/functional.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/functional.cpp -o CMakeFiles/AVS_homework_1.dir/functional.cpp.s

CMakeFiles/AVS_homework_1.dir/checkers.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/checkers.cpp.o: ../checkers.cpp
CMakeFiles/AVS_homework_1.dir/checkers.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/AVS_homework_1.dir/checkers.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/checkers.cpp.o -MF CMakeFiles/AVS_homework_1.dir/checkers.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/checkers.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/checkers.cpp

CMakeFiles/AVS_homework_1.dir/checkers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/checkers.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/checkers.cpp > CMakeFiles/AVS_homework_1.dir/checkers.cpp.i

CMakeFiles/AVS_homework_1.dir/checkers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/checkers.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/checkers.cpp -o CMakeFiles/AVS_homework_1.dir/checkers.cpp.s

CMakeFiles/AVS_homework_1.dir/rnd.cpp.o: CMakeFiles/AVS_homework_1.dir/flags.make
CMakeFiles/AVS_homework_1.dir/rnd.cpp.o: ../rnd.cpp
CMakeFiles/AVS_homework_1.dir/rnd.cpp.o: CMakeFiles/AVS_homework_1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/AVS_homework_1.dir/rnd.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AVS_homework_1.dir/rnd.cpp.o -MF CMakeFiles/AVS_homework_1.dir/rnd.cpp.o.d -o CMakeFiles/AVS_homework_1.dir/rnd.cpp.o -c /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/rnd.cpp

CMakeFiles/AVS_homework_1.dir/rnd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AVS_homework_1.dir/rnd.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/rnd.cpp > CMakeFiles/AVS_homework_1.dir/rnd.cpp.i

CMakeFiles/AVS_homework_1.dir/rnd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AVS_homework_1.dir/rnd.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/rnd.cpp -o CMakeFiles/AVS_homework_1.dir/rnd.cpp.s

# Object files for target AVS_homework_1
AVS_homework_1_OBJECTS = \
"CMakeFiles/AVS_homework_1.dir/main.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/container.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/language.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/procedural.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/functional.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/checkers.cpp.o" \
"CMakeFiles/AVS_homework_1.dir/rnd.cpp.o"

# External object files for target AVS_homework_1
AVS_homework_1_EXTERNAL_OBJECTS =

../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/main.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/container.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/language.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/procedural.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/object_oriented.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/functional.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/checkers.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/rnd.cpp.o
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/build.make
../bin/AVS_homework_1: CMakeFiles/AVS_homework_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../bin/AVS_homework_1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AVS_homework_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AVS_homework_1.dir/build: ../bin/AVS_homework_1
.PHONY : CMakeFiles/AVS_homework_1.dir/build

CMakeFiles/AVS_homework_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AVS_homework_1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AVS_homework_1.dir/clean

CMakeFiles/AVS_homework_1.dir/depend:
	cd /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1 /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1 /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build /Users/karim/Desktop/ACS_homeworks/Hw_1/AVS_Rakhmatullin207_hw1/build/CMakeFiles/AVS_homework_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AVS_homework_1.dir/depend

