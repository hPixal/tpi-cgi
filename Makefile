# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/nullptr/Github/tpi-cgi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nullptr/Github/tpi-cgi

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/nullptr/Github/tpi-cgi/CMakeFiles /home/nullptr/Github/tpi-cgi//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/nullptr/Github/tpi-cgi/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named main

# Build rule for target.
main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main
.PHONY : main

# fast build rule for target.
main/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/build
.PHONY : main/fast

src/display/base_window.o: src/display/base_window.cpp.o
.PHONY : src/display/base_window.o

# target to build an object file
src/display/base_window.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display/base_window.cpp.o
.PHONY : src/display/base_window.cpp.o

src/display/base_window.i: src/display/base_window.cpp.i
.PHONY : src/display/base_window.i

# target to preprocess a source file
src/display/base_window.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display/base_window.cpp.i
.PHONY : src/display/base_window.cpp.i

src/display/base_window.s: src/display/base_window.cpp.s
.PHONY : src/display/base_window.s

# target to generate assembly for a file
src/display/base_window.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display/base_window.cpp.s
.PHONY : src/display/base_window.cpp.s

src/display/game_window.o: src/display/game_window.cpp.o
.PHONY : src/display/game_window.o

# target to build an object file
src/display/game_window.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display/game_window.cpp.o
.PHONY : src/display/game_window.cpp.o

src/display/game_window.i: src/display/game_window.cpp.i
.PHONY : src/display/game_window.i

# target to preprocess a source file
src/display/game_window.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display/game_window.cpp.i
.PHONY : src/display/game_window.cpp.i

src/display/game_window.s: src/display/game_window.cpp.s
.PHONY : src/display/game_window.s

# target to generate assembly for a file
src/display/game_window.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/display/game_window.cpp.s
.PHONY : src/display/game_window.cpp.s

src/glad.o: src/glad.cpp.o
.PHONY : src/glad.o

# target to build an object file
src/glad.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/glad.cpp.o
.PHONY : src/glad.cpp.o

src/glad.i: src/glad.cpp.i
.PHONY : src/glad.i

# target to preprocess a source file
src/glad.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/glad.cpp.i
.PHONY : src/glad.cpp.i

src/glad.s: src/glad.cpp.s
.PHONY : src/glad.s

# target to generate assembly for a file
src/glad.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/glad.cpp.s
.PHONY : src/glad.cpp.s

src/imgui/imgui.o: src/imgui/imgui.cpp.o
.PHONY : src/imgui/imgui.o

# target to build an object file
src/imgui/imgui.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui.cpp.o
.PHONY : src/imgui/imgui.cpp.o

src/imgui/imgui.i: src/imgui/imgui.cpp.i
.PHONY : src/imgui/imgui.i

# target to preprocess a source file
src/imgui/imgui.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui.cpp.i
.PHONY : src/imgui/imgui.cpp.i

src/imgui/imgui.s: src/imgui/imgui.cpp.s
.PHONY : src/imgui/imgui.s

# target to generate assembly for a file
src/imgui/imgui.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui.cpp.s
.PHONY : src/imgui/imgui.cpp.s

src/imgui/imgui_demo.o: src/imgui/imgui_demo.cpp.o
.PHONY : src/imgui/imgui_demo.o

# target to build an object file
src/imgui/imgui_demo.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_demo.cpp.o
.PHONY : src/imgui/imgui_demo.cpp.o

src/imgui/imgui_demo.i: src/imgui/imgui_demo.cpp.i
.PHONY : src/imgui/imgui_demo.i

# target to preprocess a source file
src/imgui/imgui_demo.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_demo.cpp.i
.PHONY : src/imgui/imgui_demo.cpp.i

src/imgui/imgui_demo.s: src/imgui/imgui_demo.cpp.s
.PHONY : src/imgui/imgui_demo.s

# target to generate assembly for a file
src/imgui/imgui_demo.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_demo.cpp.s
.PHONY : src/imgui/imgui_demo.cpp.s

src/imgui/imgui_draw.o: src/imgui/imgui_draw.cpp.o
.PHONY : src/imgui/imgui_draw.o

# target to build an object file
src/imgui/imgui_draw.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_draw.cpp.o
.PHONY : src/imgui/imgui_draw.cpp.o

src/imgui/imgui_draw.i: src/imgui/imgui_draw.cpp.i
.PHONY : src/imgui/imgui_draw.i

# target to preprocess a source file
src/imgui/imgui_draw.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_draw.cpp.i
.PHONY : src/imgui/imgui_draw.cpp.i

src/imgui/imgui_draw.s: src/imgui/imgui_draw.cpp.s
.PHONY : src/imgui/imgui_draw.s

# target to generate assembly for a file
src/imgui/imgui_draw.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_draw.cpp.s
.PHONY : src/imgui/imgui_draw.cpp.s

src/imgui/imgui_impl_glfw.o: src/imgui/imgui_impl_glfw.cpp.o
.PHONY : src/imgui/imgui_impl_glfw.o

# target to build an object file
src/imgui/imgui_impl_glfw.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_impl_glfw.cpp.o
.PHONY : src/imgui/imgui_impl_glfw.cpp.o

src/imgui/imgui_impl_glfw.i: src/imgui/imgui_impl_glfw.cpp.i
.PHONY : src/imgui/imgui_impl_glfw.i

# target to preprocess a source file
src/imgui/imgui_impl_glfw.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_impl_glfw.cpp.i
.PHONY : src/imgui/imgui_impl_glfw.cpp.i

src/imgui/imgui_impl_glfw.s: src/imgui/imgui_impl_glfw.cpp.s
.PHONY : src/imgui/imgui_impl_glfw.s

# target to generate assembly for a file
src/imgui/imgui_impl_glfw.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_impl_glfw.cpp.s
.PHONY : src/imgui/imgui_impl_glfw.cpp.s

src/imgui/imgui_impl_opengl3.o: src/imgui/imgui_impl_opengl3.cpp.o
.PHONY : src/imgui/imgui_impl_opengl3.o

# target to build an object file
src/imgui/imgui_impl_opengl3.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_impl_opengl3.cpp.o
.PHONY : src/imgui/imgui_impl_opengl3.cpp.o

src/imgui/imgui_impl_opengl3.i: src/imgui/imgui_impl_opengl3.cpp.i
.PHONY : src/imgui/imgui_impl_opengl3.i

# target to preprocess a source file
src/imgui/imgui_impl_opengl3.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_impl_opengl3.cpp.i
.PHONY : src/imgui/imgui_impl_opengl3.cpp.i

src/imgui/imgui_impl_opengl3.s: src/imgui/imgui_impl_opengl3.cpp.s
.PHONY : src/imgui/imgui_impl_opengl3.s

# target to generate assembly for a file
src/imgui/imgui_impl_opengl3.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_impl_opengl3.cpp.s
.PHONY : src/imgui/imgui_impl_opengl3.cpp.s

src/imgui/imgui_tables.o: src/imgui/imgui_tables.cpp.o
.PHONY : src/imgui/imgui_tables.o

# target to build an object file
src/imgui/imgui_tables.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_tables.cpp.o
.PHONY : src/imgui/imgui_tables.cpp.o

src/imgui/imgui_tables.i: src/imgui/imgui_tables.cpp.i
.PHONY : src/imgui/imgui_tables.i

# target to preprocess a source file
src/imgui/imgui_tables.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_tables.cpp.i
.PHONY : src/imgui/imgui_tables.cpp.i

src/imgui/imgui_tables.s: src/imgui/imgui_tables.cpp.s
.PHONY : src/imgui/imgui_tables.s

# target to generate assembly for a file
src/imgui/imgui_tables.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_tables.cpp.s
.PHONY : src/imgui/imgui_tables.cpp.s

src/imgui/imgui_widgets.o: src/imgui/imgui_widgets.cpp.o
.PHONY : src/imgui/imgui_widgets.o

# target to build an object file
src/imgui/imgui_widgets.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_widgets.cpp.o
.PHONY : src/imgui/imgui_widgets.cpp.o

src/imgui/imgui_widgets.i: src/imgui/imgui_widgets.cpp.i
.PHONY : src/imgui/imgui_widgets.i

# target to preprocess a source file
src/imgui/imgui_widgets.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_widgets.cpp.i
.PHONY : src/imgui/imgui_widgets.cpp.i

src/imgui/imgui_widgets.s: src/imgui/imgui_widgets.cpp.s
.PHONY : src/imgui/imgui_widgets.s

# target to generate assembly for a file
src/imgui/imgui_widgets.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/imgui/imgui_widgets.cpp.s
.PHONY : src/imgui/imgui_widgets.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/shaders/shader.o: src/shaders/shader.cpp.o
.PHONY : src/shaders/shader.o

# target to build an object file
src/shaders/shader.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/shaders/shader.cpp.o
.PHONY : src/shaders/shader.cpp.o

src/shaders/shader.i: src/shaders/shader.cpp.i
.PHONY : src/shaders/shader.i

# target to preprocess a source file
src/shaders/shader.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/shaders/shader.cpp.i
.PHONY : src/shaders/shader.cpp.i

src/shaders/shader.s: src/shaders/shader.cpp.s
.PHONY : src/shaders/shader.s

# target to generate assembly for a file
src/shaders/shader.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/shaders/shader.cpp.s
.PHONY : src/shaders/shader.cpp.s

src/utils/utility.o: src/utils/utility.cpp.o
.PHONY : src/utils/utility.o

# target to build an object file
src/utils/utility.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/utils/utility.cpp.o
.PHONY : src/utils/utility.cpp.o

src/utils/utility.i: src/utils/utility.cpp.i
.PHONY : src/utils/utility.i

# target to preprocess a source file
src/utils/utility.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/utils/utility.cpp.i
.PHONY : src/utils/utility.cpp.i

src/utils/utility.s: src/utils/utility.cpp.s
.PHONY : src/utils/utility.s

# target to generate assembly for a file
src/utils/utility.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/utils/utility.cpp.s
.PHONY : src/utils/utility.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... main"
	@echo "... src/display/base_window.o"
	@echo "... src/display/base_window.i"
	@echo "... src/display/base_window.s"
	@echo "... src/display/game_window.o"
	@echo "... src/display/game_window.i"
	@echo "... src/display/game_window.s"
	@echo "... src/glad.o"
	@echo "... src/glad.i"
	@echo "... src/glad.s"
	@echo "... src/imgui/imgui.o"
	@echo "... src/imgui/imgui.i"
	@echo "... src/imgui/imgui.s"
	@echo "... src/imgui/imgui_demo.o"
	@echo "... src/imgui/imgui_demo.i"
	@echo "... src/imgui/imgui_demo.s"
	@echo "... src/imgui/imgui_draw.o"
	@echo "... src/imgui/imgui_draw.i"
	@echo "... src/imgui/imgui_draw.s"
	@echo "... src/imgui/imgui_impl_glfw.o"
	@echo "... src/imgui/imgui_impl_glfw.i"
	@echo "... src/imgui/imgui_impl_glfw.s"
	@echo "... src/imgui/imgui_impl_opengl3.o"
	@echo "... src/imgui/imgui_impl_opengl3.i"
	@echo "... src/imgui/imgui_impl_opengl3.s"
	@echo "... src/imgui/imgui_tables.o"
	@echo "... src/imgui/imgui_tables.i"
	@echo "... src/imgui/imgui_tables.s"
	@echo "... src/imgui/imgui_widgets.o"
	@echo "... src/imgui/imgui_widgets.i"
	@echo "... src/imgui/imgui_widgets.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/shaders/shader.o"
	@echo "... src/shaders/shader.i"
	@echo "... src/shaders/shader.s"
	@echo "... src/utils/utility.o"
	@echo "... src/utils/utility.i"
	@echo "... src/utils/utility.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

