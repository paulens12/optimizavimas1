# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\Jetbrains\CLion 2019.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\Jetbrains\CLion 2019.2.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\programming\mif-4-1\optimizavimas\mathgl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug

# Include any dependencies generated for this target.
include utils/CMakeFiles/make_pas.dir/depend.make

# Include the progress variables for this target.
include utils/CMakeFiles/make_pas.dir/progress.make

# Include the compile flags for this target's objects.
include utils/CMakeFiles/make_pas.dir/flags.make

utils/CMakeFiles/make_pas.dir/make_pas.cpp.obj: utils/CMakeFiles/make_pas.dir/flags.make
utils/CMakeFiles/make_pas.dir/make_pas.cpp.obj: utils/CMakeFiles/make_pas.dir/includes_CXX.rsp
utils/CMakeFiles/make_pas.dir/make_pas.cpp.obj: ../utils/make_pas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utils/CMakeFiles/make_pas.dir/make_pas.cpp.obj"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\make_pas.dir\make_pas.cpp.obj -c G:\programming\mif-4-1\optimizavimas\mathgl\utils\make_pas.cpp

utils/CMakeFiles/make_pas.dir/make_pas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/make_pas.dir/make_pas.cpp.i"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\programming\mif-4-1\optimizavimas\mathgl\utils\make_pas.cpp > CMakeFiles\make_pas.dir\make_pas.cpp.i

utils/CMakeFiles/make_pas.dir/make_pas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/make_pas.dir/make_pas.cpp.s"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\programming\mif-4-1\optimizavimas\mathgl\utils\make_pas.cpp -o CMakeFiles\make_pas.dir\make_pas.cpp.s

# Object files for target make_pas
make_pas_OBJECTS = \
"CMakeFiles/make_pas.dir/make_pas.cpp.obj"

# External object files for target make_pas
make_pas_EXTERNAL_OBJECTS =

utils/make_pas.exe: utils/CMakeFiles/make_pas.dir/make_pas.cpp.obj
utils/make_pas.exe: utils/CMakeFiles/make_pas.dir/build.make
utils/make_pas.exe: utils/CMakeFiles/make_pas.dir/linklibs.rsp
utils/make_pas.exe: utils/CMakeFiles/make_pas.dir/objects1.rsp
utils/make_pas.exe: utils/CMakeFiles/make_pas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable make_pas.exe"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\make_pas.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/CMakeFiles/make_pas.dir/build: utils/make_pas.exe

.PHONY : utils/CMakeFiles/make_pas.dir/build

utils/CMakeFiles/make_pas.dir/clean:
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils && $(CMAKE_COMMAND) -P CMakeFiles\make_pas.dir\cmake_clean.cmake
.PHONY : utils/CMakeFiles/make_pas.dir/clean

utils/CMakeFiles/make_pas.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\programming\mif-4-1\optimizavimas\mathgl G:\programming\mif-4-1\optimizavimas\mathgl\utils G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\utils\CMakeFiles\make_pas.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : utils/CMakeFiles/make_pas.dir/depend

