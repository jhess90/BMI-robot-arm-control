FILE(REMOVE_RECURSE
  "../src/wam_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/wam_msgs/RTCartPos.h"
  "../msg_gen/cpp/include/wam_msgs/RTJointPos.h"
  "../msg_gen/cpp/include/wam_msgs/RTCartVel.h"
  "../msg_gen/cpp/include/wam_msgs/RTPose.h"
  "../msg_gen/cpp/include/wam_msgs/RTOrtnVel.h"
  "../msg_gen/cpp/include/wam_msgs/RTJointVel.h"
  "../msg_gen/cpp/include/wam_msgs/RTOrtnPos.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
