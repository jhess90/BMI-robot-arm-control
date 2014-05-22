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
CMAKE_SOURCE_DIR = /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build

# Utility rule file for ROSBUILD_gensrv_cpp.

# Include the progress variables for this target.
include CMakeFiles/ROSBUILD_gensrv_cpp.dir/progress.make

CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/PoseMove.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/CartPosMove.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/JointMove.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/GravityComp.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/Hold.h
CMakeFiles/ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/OrtnMove.h

../srv_gen/cpp/include/wam_srvs/PoseMove.h: ../srv/PoseMove.srv
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/geometry_msgs/msg/Pose.msg
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/geometry_msgs/msg/Quaternion.msg
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/geometry_msgs/msg/Point.msg
../srv_gen/cpp/include/wam_srvs/PoseMove.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/PoseMove.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/PoseMove.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/PoseMove.srv

../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h: ../srv/BHandSpreadPos.srv
../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/BHandSpreadPos.srv

../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h: ../srv/BHandGraspPos.srv
../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/BHandGraspPos.srv

../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h: ../srv/BHandGraspVel.srv
../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/BHandGraspVel.srv

../srv_gen/cpp/include/wam_srvs/CartPosMove.h: ../srv/CartPosMove.srv
../srv_gen/cpp/include/wam_srvs/CartPosMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/CartPosMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/CartPosMove.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/CartPosMove.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/CartPosMove.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/CartPosMove.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/CartPosMove.srv

../srv_gen/cpp/include/wam_srvs/JointMove.h: ../srv/JointMove.srv
../srv_gen/cpp/include/wam_srvs/JointMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/JointMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/JointMove.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/JointMove.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/JointMove.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/JointMove.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/JointMove.srv

../srv_gen/cpp/include/wam_srvs/GravityComp.h: ../srv/GravityComp.srv
../srv_gen/cpp/include/wam_srvs/GravityComp.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/GravityComp.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/GravityComp.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/GravityComp.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/GravityComp.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/GravityComp.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/GravityComp.srv

../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h: ../srv/BHandSpreadVel.srv
../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/BHandSpreadVel.srv

../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h: ../srv/BHandFingerVel.srv
../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/BHandFingerVel.srv

../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h: ../srv/BHandFingerPos.srv
../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/BHandFingerPos.srv

../srv_gen/cpp/include/wam_srvs/Hold.h: ../srv/Hold.srv
../srv_gen/cpp/include/wam_srvs/Hold.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/Hold.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/Hold.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/Hold.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/Hold.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/Hold.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/Hold.srv

../srv_gen/cpp/include/wam_srvs/OrtnMove.h: ../srv/OrtnMove.srv
../srv_gen/cpp/include/wam_srvs/OrtnMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
../srv_gen/cpp/include/wam_srvs/OrtnMove.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
../srv_gen/cpp/include/wam_srvs/OrtnMove.h: /opt/ros/fuerte/share/roslib/bin/gendeps
../srv_gen/cpp/include/wam_srvs/OrtnMove.h: ../manifest.xml
../srv_gen/cpp/include/wam_srvs/OrtnMove.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../srv_gen/cpp/include/wam_srvs/OrtnMove.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/srv/OrtnMove.srv

ROSBUILD_gensrv_cpp: CMakeFiles/ROSBUILD_gensrv_cpp
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/PoseMove.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/CartPosMove.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/JointMove.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/GravityComp.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/Hold.h
ROSBUILD_gensrv_cpp: ../srv_gen/cpp/include/wam_srvs/OrtnMove.h
ROSBUILD_gensrv_cpp: CMakeFiles/ROSBUILD_gensrv_cpp.dir/build.make
.PHONY : ROSBUILD_gensrv_cpp

# Rule to build all files generated by this target.
CMakeFiles/ROSBUILD_gensrv_cpp.dir/build: ROSBUILD_gensrv_cpp
.PHONY : CMakeFiles/ROSBUILD_gensrv_cpp.dir/build

CMakeFiles/ROSBUILD_gensrv_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ROSBUILD_gensrv_cpp.dir/clean

CMakeFiles/ROSBUILD_gensrv_cpp.dir/depend:
	cd /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build /home/robot/fuerte_workspace/sandbox/barrett-ros-pkg/wam_common/wam_srvs/build/CMakeFiles/ROSBUILD_gensrv_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ROSBUILD_gensrv_cpp.dir/depend

