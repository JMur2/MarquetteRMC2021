# CMake generated Testfile for 
# Source directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/ros_comm/rosgraph
# Build directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosgraph
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosgraph_nosetests_test "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosgraph/catkin_generated/env_cached.sh" "/usr/bin/python2" "/home/mars/MarquetteRMC2021/ros_catkin_ws/install/share/catkin/cmake/test/run_tests.py" "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosgraph/test_results/rosgraph/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosgraph/test_results/rosgraph" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/mars/MarquetteRMC2021/ros_catkin_ws/src/ros_comm/rosgraph/test --with-xunit --xunit-file=/home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosgraph/test_results/rosgraph/nosetests-test.xml")
subdirs("gtest")
