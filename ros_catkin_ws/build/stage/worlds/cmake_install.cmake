# Install script for directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mars/MarquetteRMC2021/ros_catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stage/worlds" TYPE FILE FILES
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/amcl-sonar.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/autolab.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/camera.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/everything.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/lsp_test.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/mbicp.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/nd.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/roomba.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/simple.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/test.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/uoa_robotics_lab.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/vfh.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/wavefront-remote.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/wavefront.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/wifi.cfg"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/SFU.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/autolab.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/camera.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/everything.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/fasr.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/fasr2.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/fasr_plan.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/large.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/lsp_test.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/mbicp.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/pioneer_flocking.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/pioneer_walle.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/roomba.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/sensor_noise_demo.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/sensor_noise_module_demo.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/simple.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/uoa_robotics_lab.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/wifi.world"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/beacons.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/chatterbox.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/hokuyo.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/irobot.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/map.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/objects.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/pantilt.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/pioneer.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/sick.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/ubot.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/uoa_robotics_lab_models.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/walle.inc"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/cfggen.sh"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/test.sh"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/worlds/worldgen.sh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/mars/MarquetteRMC2021/ros_catkin_ws/build/stage/worlds/benchmark/cmake_install.cmake")
  include("/home/mars/MarquetteRMC2021/ros_catkin_ws/build/stage/worlds/bitmaps/cmake_install.cmake")
  include("/home/mars/MarquetteRMC2021/ros_catkin_ws/build/stage/worlds/wifi/cmake_install.cmake")

endif()

