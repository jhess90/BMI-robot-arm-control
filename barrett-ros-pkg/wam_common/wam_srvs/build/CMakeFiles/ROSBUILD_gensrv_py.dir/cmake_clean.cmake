FILE(REMOVE_RECURSE
  "../src/wam_srvs/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/wam_srvs/srv/__init__.py"
  "../src/wam_srvs/srv/_PoseMove.py"
  "../src/wam_srvs/srv/_BHandSpreadPos.py"
  "../src/wam_srvs/srv/_BHandGraspPos.py"
  "../src/wam_srvs/srv/_BHandGraspVel.py"
  "../src/wam_srvs/srv/_CartPosMove.py"
  "../src/wam_srvs/srv/_JointMove.py"
  "../src/wam_srvs/srv/_GravityComp.py"
  "../src/wam_srvs/srv/_BHandSpreadVel.py"
  "../src/wam_srvs/srv/_BHandFingerVel.py"
  "../src/wam_srvs/srv/_BHandFingerPos.py"
  "../src/wam_srvs/srv/_Hold.py"
  "../src/wam_srvs/srv/_OrtnMove.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
