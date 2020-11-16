# CMake generated Testfile for 
# Source directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/genmsg
# Build directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/build_isolated/genmsg
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_genmsg_nosetests_test "/home/mars/MarquetteRMC2021/ros_catkin_ws/build_isolated/genmsg/catkin_generated/env_cached.sh" "/usr/bin/python2" "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/mars/MarquetteRMC2021/ros_catkin_ws/build_isolated/genmsg/test_results/genmsg/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/mars/MarquetteRMC2021/ros_catkin_ws/build_isolated/genmsg/test_results/genmsg" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/mars/MarquetteRMC2021/ros_catkin_ws/src/genmsg/test --with-xunit --xunit-file=/home/mars/MarquetteRMC2021/ros_catkin_ws/build_isolated/genmsg/test_results/genmsg/nosetests-test.xml")
subdirs("gtest")
