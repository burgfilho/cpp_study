# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_SOURCE_DIR = /home/burg/Development/C++/rtb_prototype

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/burg/Development/C++/rtb_prototype/build

# Include any dependencies generated for this target.
include grpc_proto/CMakeFiles/RTB-gRPC.dir/depend.make

# Include the progress variables for this target.
include grpc_proto/CMakeFiles/RTB-gRPC.dir/progress.make

# Include the compile flags for this target's objects.
include grpc_proto/CMakeFiles/RTB-gRPC.dir/flags.make

grpc_proto/rtb.pb.cc: ../grpc_proto/rtb.proto
grpc_proto/rtb.pb.cc: /usr/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/burg/Development/C++/rtb_prototype/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running C++ protocol buffer compiler on rtb.proto"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/protoc --cpp_out=/home/burg/Development/C++/rtb_prototype/build/grpc_proto -I /home/burg/Development/C++/rtb_prototype/grpc_proto /home/burg/Development/C++/rtb_prototype/grpc_proto/rtb.proto

grpc_proto/rtb.pb.h: grpc_proto/rtb.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate grpc_proto/rtb.pb.h

grpc_proto/rtb.grpc.pb.cc: ../grpc_proto/rtb.proto
grpc_proto/rtb.grpc.pb.cc: /usr/bin/protoc
grpc_proto/rtb.grpc.pb.cc: /usr/bin/grpc_cpp_plugin
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/burg/Development/C++/rtb_prototype/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Running C++ gRPC compiler on rtb.proto"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/protoc --grpc_out . -I /home/burg/Development/C++/rtb_prototype/grpc_proto --plugin=protoc-gen-grpc=/usr/bin/grpc_cpp_plugin /home/burg/Development/C++/rtb_prototype/grpc_proto/rtb.proto

grpc_proto/rtb.grpc.pb.h: grpc_proto/rtb.grpc.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate grpc_proto/rtb.grpc.pb.h

grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.o: grpc_proto/CMakeFiles/RTB-gRPC.dir/flags.make
grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.o: grpc_proto/rtb.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/burg/Development/C++/rtb_prototype/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.o"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.o -c /home/burg/Development/C++/rtb_prototype/build/grpc_proto/rtb.pb.cc

grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.i"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/burg/Development/C++/rtb_prototype/build/grpc_proto/rtb.pb.cc > CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.i

grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.s"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/burg/Development/C++/rtb_prototype/build/grpc_proto/rtb.pb.cc -o CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.s

grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.o: grpc_proto/CMakeFiles/RTB-gRPC.dir/flags.make
grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.o: grpc_proto/rtb.grpc.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/burg/Development/C++/rtb_prototype/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.o"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.o -c /home/burg/Development/C++/rtb_prototype/build/grpc_proto/rtb.grpc.pb.cc

grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.i"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/burg/Development/C++/rtb_prototype/build/grpc_proto/rtb.grpc.pb.cc > CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.i

grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.s"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/burg/Development/C++/rtb_prototype/build/grpc_proto/rtb.grpc.pb.cc -o CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.s

# Object files for target RTB-gRPC
RTB__gRPC_OBJECTS = \
"CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.o" \
"CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.o"

# External object files for target RTB-gRPC
RTB__gRPC_EXTERNAL_OBJECTS =

lib/libRTB-gRPC.a: grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.pb.cc.o
lib/libRTB-gRPC.a: grpc_proto/CMakeFiles/RTB-gRPC.dir/rtb.grpc.pb.cc.o
lib/libRTB-gRPC.a: grpc_proto/CMakeFiles/RTB-gRPC.dir/build.make
lib/libRTB-gRPC.a: grpc_proto/CMakeFiles/RTB-gRPC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/burg/Development/C++/rtb_prototype/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../lib/libRTB-gRPC.a"
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && $(CMAKE_COMMAND) -P CMakeFiles/RTB-gRPC.dir/cmake_clean_target.cmake
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RTB-gRPC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
grpc_proto/CMakeFiles/RTB-gRPC.dir/build: lib/libRTB-gRPC.a

.PHONY : grpc_proto/CMakeFiles/RTB-gRPC.dir/build

grpc_proto/CMakeFiles/RTB-gRPC.dir/clean:
	cd /home/burg/Development/C++/rtb_prototype/build/grpc_proto && $(CMAKE_COMMAND) -P CMakeFiles/RTB-gRPC.dir/cmake_clean.cmake
.PHONY : grpc_proto/CMakeFiles/RTB-gRPC.dir/clean

grpc_proto/CMakeFiles/RTB-gRPC.dir/depend: grpc_proto/rtb.pb.cc
grpc_proto/CMakeFiles/RTB-gRPC.dir/depend: grpc_proto/rtb.pb.h
grpc_proto/CMakeFiles/RTB-gRPC.dir/depend: grpc_proto/rtb.grpc.pb.cc
grpc_proto/CMakeFiles/RTB-gRPC.dir/depend: grpc_proto/rtb.grpc.pb.h
	cd /home/burg/Development/C++/rtb_prototype/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/burg/Development/C++/rtb_prototype /home/burg/Development/C++/rtb_prototype/grpc_proto /home/burg/Development/C++/rtb_prototype/build /home/burg/Development/C++/rtb_prototype/build/grpc_proto /home/burg/Development/C++/rtb_prototype/build/grpc_proto/CMakeFiles/RTB-gRPC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : grpc_proto/CMakeFiles/RTB-gRPC.dir/depend

