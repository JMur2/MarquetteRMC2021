# Install script for directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stage/assets" TYPE FILE FILES
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/blue.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/death.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/green.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/logo.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/mains.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/mainspower.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/question_mark.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/red.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/stagelogo.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/stall-old.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/stall.png"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/rgb.txt"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stage" TYPE FILE FILES "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/stage/assets/rgb.txt")
endif()

