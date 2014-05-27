FILE(REMOVE_RECURSE
  "../srv_gen"
  "../src/wam_srvs/srv"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/wam_srvs/BHandSpreadPos.h"
  "../srv_gen/cpp/include/wam_srvs/OrtnMove.h"
  "../srv_gen/cpp/include/wam_srvs/BHandGraspVel.h"
  "../srv_gen/cpp/include/wam_srvs/BHandFingerPos.h"
  "../srv_gen/cpp/include/wam_srvs/BHandFingerVel.h"
  "../srv_gen/cpp/include/wam_srvs/BHandSpreadVel.h"
  "../srv_gen/cpp/include/wam_srvs/GravityComp.h"
  "../srv_gen/cpp/include/wam_srvs/BHandGraspPos.h"
  "../srv_gen/cpp/include/wam_srvs/PoseMove.h"
  "../srv_gen/cpp/include/wam_srvs/CartPosMove.h"
  "../srv_gen/cpp/include/wam_srvs/JointMove.h"
  "../srv_gen/cpp/include/wam_srvs/Hold.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
