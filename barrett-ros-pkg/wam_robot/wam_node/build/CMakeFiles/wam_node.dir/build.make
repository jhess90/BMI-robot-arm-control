# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/build

# Include any dependencies generated for this target.
include CMakeFiles/wam_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wam_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wam_node.dir/flags.make

CMakeFiles/wam_node.dir/src/wam_node.o: CMakeFiles/wam_node.dir/flags.make
CMakeFiles/wam_node.dir/src/wam_node.o: ../src/wam_node.cpp
CMakeFiles/wam_node.dir/src/wam_node.o: ../manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/std_srvs/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_msgs/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/manifest.xml
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/wam_node.dir/src/wam_node.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
CMakeFiles/wam_node.dir/src/wam_node.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_msgs/msg_gen/generated
CMakeFiles/wam_node.dir/src/wam_node.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/wam_node.dir/src/wam_node.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/wam_node.dir/src/wam_node.o -c /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/src/wam_node.cpp

CMakeFiles/wam_node.dir/src/wam_node.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wam_node.dir/src/wam_node.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/src/wam_node.cpp > CMakeFiles/wam_node.dir/src/wam_node.i

CMakeFiles/wam_node.dir/src/wam_node.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wam_node.dir/src/wam_node.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/src/wam_node.cpp -o CMakeFiles/wam_node.dir/src/wam_node.s

CMakeFiles/wam_node.dir/src/wam_node.o.requires:
.PHONY : CMakeFiles/wam_node.dir/src/wam_node.o.requires

CMakeFiles/wam_node.dir/src/wam_node.o.provides: CMakeFiles/wam_node.dir/src/wam_node.o.requires
	$(MAKE) -f CMakeFiles/wam_node.dir/build.make CMakeFiles/wam_node.dir/src/wam_node.o.provides.build
.PHONY : CMakeFiles/wam_node.dir/src/wam_node.o.provides

CMakeFiles/wam_node.dir/src/wam_node.o.provides.build: CMakeFiles/wam_node.dir/src/wam_node.o

# Object files for target wam_node
wam_node_OBJECTS = \
"CMakeFiles/wam_node.dir/src/wam_node.o"

# External object files for target wam_node
wam_node_EXTERNAL_OBJECTS =

../bin/wam_node: CMakeFiles/wam_node.dir/src/wam_node.o
../bin/wam_node: /usr/xenomai/lib/libnative.so
../bin/wam_node: /usr/xenomai/lib/libxenomai.so
../bin/wam_node: /usr/xenomai/lib/librtdm.so
../bin/wam_node: CMakeFiles/wam_node.dir/build.make
../bin/wam_node: CMakeFiles/wam_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/wam_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wam_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wam_node.dir/build: ../bin/wam_node
.PHONY : CMakeFiles/wam_node.dir/build

CMakeFiles/wam_node.dir/requires: CMakeFiles/wam_node.dir/src/wam_node.o.requires
.PHONY : CMakeFiles/wam_node.dir/requires

CMakeFiles/wam_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wam_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wam_node.dir/clean

CMakeFiles/wam_node.dir/depend:
	cd /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/build /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/build /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/build/CMakeFiles/wam_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wam_node.dir/depend

