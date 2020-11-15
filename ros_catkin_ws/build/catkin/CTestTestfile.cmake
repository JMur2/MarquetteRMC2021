# CMake generated Testfile for 
# Source directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin
# Build directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_catkin_nosetests_test.local_tests "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/test_results/catkin/nosetests-test.local_tests.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/test_results/catkin" "/usr/bin/nosetests -P --process-timeout=60 --where=/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin/test/local_tests --with-xunit --xunit-file=/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/test_results/catkin/nosetests-test.local_tests.xml")
add_test(_ctest_catkin_nosetests_test.unit_tests "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/catkin_generated/env_cached.sh" "/usr/bin/python3" "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin/cmake/test/run_tests.py" "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/test_results/catkin/nosetests-test.unit_tests.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/test_results/catkin" "/usr/bin/nosetests -P --process-timeout=60 --where=/home/mars/MarquetteRMC2021/ros_catkin_ws/src/catkin/test/unit_tests --with-xunit --xunit-file=/home/mars/MarquetteRMC2021/ros_catkin_ws/build/catkin/test_results/catkin/nosetests-test.unit_tests.xml")
subdirs("gtest")
