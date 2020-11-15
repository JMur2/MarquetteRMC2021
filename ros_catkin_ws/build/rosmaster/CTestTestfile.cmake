# CMake generated Testfile for 
# Source directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/ros_comm/rosmaster
# Build directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosmaster
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosmaster_nosetests_test "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosmaster/catkin_generated/env_cached.sh" "/usr/bin/python2" "/home/mars/MarquetteRMC2021/ros_catkin_ws/install/share/catkin/cmake/test/run_tests.py" "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosmaster/test_results/rosmaster/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosmaster/test_results/rosmaster" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/mars/MarquetteRMC2021/ros_catkin_ws/src/ros_comm/rosmaster/test --with-xunit --xunit-file=/home/mars/MarquetteRMC2021/ros_catkin_ws/build/rosmaster/test_results/rosmaster/nosetests-test.xml")
subdirs("gtest")
