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
include examples/CMakeFiles/mgl_example.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/mgl_example.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/mgl_example.dir/flags.make

examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.obj: examples/CMakeFiles/mgl_example.dir/flags.make
examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.obj: examples/CMakeFiles/mgl_example.dir/includes_CXX.rsp
examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.obj: ../examples/wnd_samples.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.obj"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\mgl_example.dir\wnd_samples.cpp.obj -c G:\programming\mif-4-1\optimizavimas\mathgl\examples\wnd_samples.cpp

examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mgl_example.dir/wnd_samples.cpp.i"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\programming\mif-4-1\optimizavimas\mathgl\examples\wnd_samples.cpp > CMakeFiles\mgl_example.dir\wnd_samples.cpp.i

examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mgl_example.dir/wnd_samples.cpp.s"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\programming\mif-4-1\optimizavimas\mathgl\examples\wnd_samples.cpp -o CMakeFiles\mgl_example.dir\wnd_samples.cpp.s

examples/CMakeFiles/mgl_example.dir/full_test.cpp.obj: examples/CMakeFiles/mgl_example.dir/flags.make
examples/CMakeFiles/mgl_example.dir/full_test.cpp.obj: examples/CMakeFiles/mgl_example.dir/includes_CXX.rsp
examples/CMakeFiles/mgl_example.dir/full_test.cpp.obj: ../examples/full_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/CMakeFiles/mgl_example.dir/full_test.cpp.obj"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\mgl_example.dir\full_test.cpp.obj -c G:\programming\mif-4-1\optimizavimas\mathgl\examples\full_test.cpp

examples/CMakeFiles/mgl_example.dir/full_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mgl_example.dir/full_test.cpp.i"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\programming\mif-4-1\optimizavimas\mathgl\examples\full_test.cpp > CMakeFiles\mgl_example.dir\full_test.cpp.i

examples/CMakeFiles/mgl_example.dir/full_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mgl_example.dir/full_test.cpp.s"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\programming\mif-4-1\optimizavimas\mathgl\examples\full_test.cpp -o CMakeFiles\mgl_example.dir\full_test.cpp.s

examples/CMakeFiles/mgl_example.dir/samples.cpp.obj: examples/CMakeFiles/mgl_example.dir/flags.make
examples/CMakeFiles/mgl_example.dir/samples.cpp.obj: examples/CMakeFiles/mgl_example.dir/includes_CXX.rsp
examples/CMakeFiles/mgl_example.dir/samples.cpp.obj: ../examples/samples.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/CMakeFiles/mgl_example.dir/samples.cpp.obj"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\mgl_example.dir\samples.cpp.obj -c G:\programming\mif-4-1\optimizavimas\mathgl\examples\samples.cpp

examples/CMakeFiles/mgl_example.dir/samples.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mgl_example.dir/samples.cpp.i"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\programming\mif-4-1\optimizavimas\mathgl\examples\samples.cpp > CMakeFiles\mgl_example.dir\samples.cpp.i

examples/CMakeFiles/mgl_example.dir/samples.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mgl_example.dir/samples.cpp.s"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && D:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\programming\mif-4-1\optimizavimas\mathgl\examples\samples.cpp -o CMakeFiles\mgl_example.dir\samples.cpp.s

# Object files for target mgl_example
mgl_example_OBJECTS = \
"CMakeFiles/mgl_example.dir/wnd_samples.cpp.obj" \
"CMakeFiles/mgl_example.dir/full_test.cpp.obj" \
"CMakeFiles/mgl_example.dir/samples.cpp.obj"

# External object files for target mgl_example
mgl_example_EXTERNAL_OBJECTS =

examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/wnd_samples.cpp.obj
examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/full_test.cpp.obj
examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/samples.cpp.obj
examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/build.make
examples/mgl_example.exe: src/libmgl.a
examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/linklibs.rsp
examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/objects1.rsp
examples/mgl_example.exe: examples/CMakeFiles/mgl_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable mgl_example.exe"
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\mgl_example.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/mgl_example.dir/build: examples/mgl_example.exe

.PHONY : examples/CMakeFiles/mgl_example.dir/build

examples/CMakeFiles/mgl_example.dir/clean:
	cd /d G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples && $(CMAKE_COMMAND) -P CMakeFiles\mgl_example.dir\cmake_clean.cmake
.PHONY : examples/CMakeFiles/mgl_example.dir/clean

examples/CMakeFiles/mgl_example.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\programming\mif-4-1\optimizavimas\mathgl G:\programming\mif-4-1\optimizavimas\mathgl\examples G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples G:\programming\mif-4-1\optimizavimas\mathgl\cmake-build-debug\examples\CMakeFiles\mgl_example.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/mgl_example.dir/depend

