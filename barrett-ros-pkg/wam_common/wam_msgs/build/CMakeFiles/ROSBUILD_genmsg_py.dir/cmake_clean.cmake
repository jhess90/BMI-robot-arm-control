FILE(REMOVE_RECURSE
  "../src/wam_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/wam_msgs/msg/__init__.py"
  "../src/wam_msgs/msg/_RTCartPos.py"
  "../src/wam_msgs/msg/_RTJointPos.py"
  "../src/wam_msgs/msg/_RTCartVel.py"
  "../src/wam_msgs/msg/_RTPose.py"
  "../src/wam_msgs/msg/_RTOrtnVel.py"
  "../src/wam_msgs/msg/_RTJointVel.py"
  "../src/wam_msgs/msg/_RTOrtnPos.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
