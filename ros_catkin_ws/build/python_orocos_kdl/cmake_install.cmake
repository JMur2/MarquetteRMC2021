# Install script for directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/python_orocos_kdl

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  if(EXISTS "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages" TYPE SHARED_LIBRARY FILES "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/python_orocos_kdl/PyKDL.so")
  if(EXISTS "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so"
         OLD_RPATH "/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/mars/MarquetteRMC2021/ros_catkin_ws/install/lib/python2.7/dist-packages/PyKDL.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/python_orocos_kdl" TYPE FILE FILES "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/python_orocos_kdl/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/python_orocos_kdl/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
