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
CMAKE_SOURCE_DIR = /home/robot/fuerte_workspace/sandbox/wam_control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robot/fuerte_workspace/sandbox/wam_control

# Include any dependencies generated for this target.
include CMakeFiles/posi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/posi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/posi.dir/flags.make

CMakeFiles/posi.dir/posi.o: CMakeFiles/posi.dir/flags.make
CMakeFiles/posi.dir/posi.o: posi.cpp
CMakeFiles/posi.dir/posi.o: manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/std_srvs/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/stacks/bullet/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/rosconsole/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/stacks/geometry/angles/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/rospy/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/rostest/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/roswtf/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/share/message_filters/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/stacks/geometry/tf/manifest.xml
CMakeFiles/posi.dir/posi.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_msgs/manifest.xml
CMakeFiles/posi.dir/posi.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/manifest.xml
CMakeFiles/posi.dir/posi.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_robot/wam_node/manifest.xml
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/stacks/geometry/tf/msg_gen/generated
CMakeFiles/posi.dir/posi.o: /opt/ros/fuerte/stacks/geometry/tf/srv_gen/generated
CMakeFiles/posi.dir/posi.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_msgs/msg_gen/generated
CMakeFiles/posi.dir/posi.o: /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/wam_control/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/posi.dir/posi.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/posi.dir/posi.o -c /home/robot/fuerte_workspace/sandbox/wam_control/posi.cpp

CMakeFiles/posi.dir/posi.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/posi.dir/posi.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/robot/fuerte_workspace/sandbox/wam_control/posi.cpp > CMakeFiles/posi.dir/posi.i

CMakeFiles/posi.dir/posi.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/posi.dir/posi.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -DBT_USE_DOUBLE_PRECISION -DBT_EULER_DEFAULT_ZYX -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/robot/fuerte_workspace/sandbox/wam_control/posi.cpp -o CMakeFiles/posi.dir/posi.s

CMakeFiles/posi.dir/posi.o.requires:
.PHONY : CMakeFiles/posi.dir/posi.o.requires

CMakeFiles/posi.dir/posi.o.provides: CMakeFiles/posi.dir/posi.o.requires
	$(MAKE) -f CMakeFiles/posi.dir/build.make CMakeFiles/posi.dir/posi.o.provides.build
.PHONY : CMakeFiles/posi.dir/posi.o.provides

CMakeFiles/posi.dir/posi.o.provides.build: CMakeFiles/posi.dir/posi.o

# Object files for target posi
posi_OBJECTS = \
"CMakeFiles/posi.dir/posi.o"

# External object files for target posi
posi_EXTERNAL_OBJECTS =

bin/posi: CMakeFiles/posi.dir/posi.o
bin/posi: CMakeFiles/posi.dir/build.make
bin/posi: CMakeFiles/posi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bin/posi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/posi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/posi.dir/build: bin/posi
.PHONY : CMakeFiles/posi.dir/build

CMakeFiles/posi.dir/requires: CMakeFiles/posi.dir/posi.o.requires
.PHONY : CMakeFiles/posi.dir/requires

CMakeFiles/posi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/posi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/posi.dir/clean

CMakeFiles/posi.dir/depend:
	cd /home/robot/fuerte_workspace/sandbox/wam_control && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robot/fuerte_workspace/sandbox/wam_control /home/robot/fuerte_workspace/sandbox/wam_control /home/robot/fuerte_workspace/sandbox/wam_control /home/robot/fuerte_workspace/sandbox/wam_control /home/robot/fuerte_workspace/sandbox/wam_control/CMakeFiles/posi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/posi.dir/depend
