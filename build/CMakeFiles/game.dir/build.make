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
CMAKE_SOURCE_DIR = /home/quangai/my_project/GAME

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/quangai/my_project/GAME/build

# Include any dependencies generated for this target.
include CMakeFiles/game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/game.dir/flags.make

CMakeFiles/game.dir/src/main.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/game.dir/src/main.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/game.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/main.cpp.o -MF CMakeFiles/game.dir/src/main.cpp.o.d -o CMakeFiles/game.dir/src/main.cpp.o -c /home/quangai/my_project/GAME/src/main.cpp

CMakeFiles/game.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/main.cpp > CMakeFiles/game.dir/src/main.cpp.i

CMakeFiles/game.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/main.cpp -o CMakeFiles/game.dir/src/main.cpp.s

CMakeFiles/game.dir/src/shaderClass.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/shaderClass.cpp.o: ../src/shaderClass.cpp
CMakeFiles/game.dir/src/shaderClass.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/game.dir/src/shaderClass.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/shaderClass.cpp.o -MF CMakeFiles/game.dir/src/shaderClass.cpp.o.d -o CMakeFiles/game.dir/src/shaderClass.cpp.o -c /home/quangai/my_project/GAME/src/shaderClass.cpp

CMakeFiles/game.dir/src/shaderClass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/shaderClass.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/shaderClass.cpp > CMakeFiles/game.dir/src/shaderClass.cpp.i

CMakeFiles/game.dir/src/shaderClass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/shaderClass.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/shaderClass.cpp -o CMakeFiles/game.dir/src/shaderClass.cpp.s

CMakeFiles/game.dir/src/VAO.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/VAO.cpp.o: ../src/VAO.cpp
CMakeFiles/game.dir/src/VAO.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/game.dir/src/VAO.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/VAO.cpp.o -MF CMakeFiles/game.dir/src/VAO.cpp.o.d -o CMakeFiles/game.dir/src/VAO.cpp.o -c /home/quangai/my_project/GAME/src/VAO.cpp

CMakeFiles/game.dir/src/VAO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/VAO.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/VAO.cpp > CMakeFiles/game.dir/src/VAO.cpp.i

CMakeFiles/game.dir/src/VAO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/VAO.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/VAO.cpp -o CMakeFiles/game.dir/src/VAO.cpp.s

CMakeFiles/game.dir/src/VBO.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/VBO.cpp.o: ../src/VBO.cpp
CMakeFiles/game.dir/src/VBO.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/game.dir/src/VBO.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/VBO.cpp.o -MF CMakeFiles/game.dir/src/VBO.cpp.o.d -o CMakeFiles/game.dir/src/VBO.cpp.o -c /home/quangai/my_project/GAME/src/VBO.cpp

CMakeFiles/game.dir/src/VBO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/VBO.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/VBO.cpp > CMakeFiles/game.dir/src/VBO.cpp.i

CMakeFiles/game.dir/src/VBO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/VBO.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/VBO.cpp -o CMakeFiles/game.dir/src/VBO.cpp.s

CMakeFiles/game.dir/src/EBO.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/EBO.cpp.o: ../src/EBO.cpp
CMakeFiles/game.dir/src/EBO.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/game.dir/src/EBO.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/EBO.cpp.o -MF CMakeFiles/game.dir/src/EBO.cpp.o.d -o CMakeFiles/game.dir/src/EBO.cpp.o -c /home/quangai/my_project/GAME/src/EBO.cpp

CMakeFiles/game.dir/src/EBO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/EBO.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/EBO.cpp > CMakeFiles/game.dir/src/EBO.cpp.i

CMakeFiles/game.dir/src/EBO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/EBO.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/EBO.cpp -o CMakeFiles/game.dir/src/EBO.cpp.s

CMakeFiles/game.dir/src/Camera.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/Camera.cpp.o: ../src/Camera.cpp
CMakeFiles/game.dir/src/Camera.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/game.dir/src/Camera.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/Camera.cpp.o -MF CMakeFiles/game.dir/src/Camera.cpp.o.d -o CMakeFiles/game.dir/src/Camera.cpp.o -c /home/quangai/my_project/GAME/src/Camera.cpp

CMakeFiles/game.dir/src/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/Camera.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/Camera.cpp > CMakeFiles/game.dir/src/Camera.cpp.i

CMakeFiles/game.dir/src/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/Camera.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/Camera.cpp -o CMakeFiles/game.dir/src/Camera.cpp.s

CMakeFiles/game.dir/src/Texture.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/Texture.cpp.o: ../src/Texture.cpp
CMakeFiles/game.dir/src/Texture.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/game.dir/src/Texture.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/Texture.cpp.o -MF CMakeFiles/game.dir/src/Texture.cpp.o.d -o CMakeFiles/game.dir/src/Texture.cpp.o -c /home/quangai/my_project/GAME/src/Texture.cpp

CMakeFiles/game.dir/src/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/Texture.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/Texture.cpp > CMakeFiles/game.dir/src/Texture.cpp.i

CMakeFiles/game.dir/src/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/Texture.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/Texture.cpp -o CMakeFiles/game.dir/src/Texture.cpp.s

CMakeFiles/game.dir/src/Mesh.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/Mesh.cpp.o: ../src/Mesh.cpp
CMakeFiles/game.dir/src/Mesh.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/game.dir/src/Mesh.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/Mesh.cpp.o -MF CMakeFiles/game.dir/src/Mesh.cpp.o.d -o CMakeFiles/game.dir/src/Mesh.cpp.o -c /home/quangai/my_project/GAME/src/Mesh.cpp

CMakeFiles/game.dir/src/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/Mesh.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/Mesh.cpp > CMakeFiles/game.dir/src/Mesh.cpp.i

CMakeFiles/game.dir/src/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/Mesh.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/Mesh.cpp -o CMakeFiles/game.dir/src/Mesh.cpp.s

CMakeFiles/game.dir/src/stb.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/stb.cpp.o: ../src/stb.cpp
CMakeFiles/game.dir/src/stb.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/game.dir/src/stb.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/stb.cpp.o -MF CMakeFiles/game.dir/src/stb.cpp.o.d -o CMakeFiles/game.dir/src/stb.cpp.o -c /home/quangai/my_project/GAME/src/stb.cpp

CMakeFiles/game.dir/src/stb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/stb.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/quangai/my_project/GAME/src/stb.cpp > CMakeFiles/game.dir/src/stb.cpp.i

CMakeFiles/game.dir/src/stb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/stb.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/quangai/my_project/GAME/src/stb.cpp -o CMakeFiles/game.dir/src/stb.cpp.s

# Object files for target game
game_OBJECTS = \
"CMakeFiles/game.dir/src/main.cpp.o" \
"CMakeFiles/game.dir/src/shaderClass.cpp.o" \
"CMakeFiles/game.dir/src/VAO.cpp.o" \
"CMakeFiles/game.dir/src/VBO.cpp.o" \
"CMakeFiles/game.dir/src/EBO.cpp.o" \
"CMakeFiles/game.dir/src/Camera.cpp.o" \
"CMakeFiles/game.dir/src/Texture.cpp.o" \
"CMakeFiles/game.dir/src/Mesh.cpp.o" \
"CMakeFiles/game.dir/src/stb.cpp.o"

# External object files for target game
game_EXTERNAL_OBJECTS =

game: CMakeFiles/game.dir/src/main.cpp.o
game: CMakeFiles/game.dir/src/shaderClass.cpp.o
game: CMakeFiles/game.dir/src/VAO.cpp.o
game: CMakeFiles/game.dir/src/VBO.cpp.o
game: CMakeFiles/game.dir/src/EBO.cpp.o
game: CMakeFiles/game.dir/src/Camera.cpp.o
game: CMakeFiles/game.dir/src/Texture.cpp.o
game: CMakeFiles/game.dir/src/Mesh.cpp.o
game: CMakeFiles/game.dir/src/stb.cpp.o
game: CMakeFiles/game.dir/build.make
game: /usr/lib/x86_64-linux-gnu/libGL.so
game: /usr/lib/x86_64-linux-gnu/libGLU.so
game: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
game: /usr/lib/x86_64-linux-gnu/libGLEW.so
game: CMakeFiles/game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/quangai/my_project/GAME/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/game.dir/build: game
.PHONY : CMakeFiles/game.dir/build

CMakeFiles/game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/game.dir/clean

CMakeFiles/game.dir/depend:
	cd /home/quangai/my_project/GAME/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/quangai/my_project/GAME /home/quangai/my_project/GAME /home/quangai/my_project/GAME/build /home/quangai/my_project/GAME/build /home/quangai/my_project/GAME/build/CMakeFiles/game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/game.dir/depend

