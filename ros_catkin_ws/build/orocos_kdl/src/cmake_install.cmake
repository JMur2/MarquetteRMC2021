# Install script for directory: /home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborocos-kdl.so.1.4.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborocos-kdl.so.1.4"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborocos-kdl.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "$ORIGIN/../lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/orocos_kdl/src/liborocos-kdl.so.1.4.0"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/orocos_kdl/src/liborocos-kdl.so.1.4"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/orocos_kdl/src/liborocos-kdl.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborocos-kdl.so.1.4.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborocos-kdl.so.1.4"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liborocos-kdl.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::"
           NEW_RPATH "$ORIGIN/../lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kdl" TYPE FILE FILES
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/articulatedbodyinertia.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chain.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chaindynparam.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainfksolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainfksolverpos_recursive.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainfksolvervel_recursive.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainidsolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainidsolver_recursive_newton_euler.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainidsolver_vereshchagin.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolverpos_lma.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolverpos_nr.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolverpos_nr_jl.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolvervel_pinv.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolvervel_pinv_givens.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolvervel_pinv_nso.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainiksolvervel_wdls.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainjnttojacdotsolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/chainjnttojacsolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/frameacc.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/frameacc_io.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/frames.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/frames_io.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/framevel.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/framevel_io.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/jacobian.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/jntarray.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/jntarrayacc.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/jntarrayvel.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/jntspaceinertiamatrix.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/joint.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/kdl.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/kinfam.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/kinfam_io.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/motion.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path_circle.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path_composite.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path_cyclic_closed.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path_line.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path_point.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/path_roundedcomposite.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/rigidbodyinertia.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/rotational_interpolation.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/rotational_interpolation_sa.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/rotationalinertia.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/segment.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/solveri.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/stiffness.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/trajectory.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/trajectory_composite.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/trajectory_segment.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/trajectory_stationary.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/tree.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treefksolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treefksolverpos_recursive.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treeiksolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treeiksolverpos_nr_jl.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treeiksolverpos_online.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treeiksolvervel_wdls.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/treejnttojacsolver.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/velocityprofile.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/velocityprofile_dirac.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/velocityprofile_rect.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/velocityprofile_spline.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/velocityprofile_trap.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/velocityprofile_traphalf.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/frameacc.inl"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/frames.inl"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/framevel.inl"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/orocos_kdl/src/config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kdl/utilities" TYPE FILE FILES
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/error.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/error_stack.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/kdl-config.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/rall1d.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/rall1d_io.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/rall2d.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/rall2d_io.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/rallNd.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/traits.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/utility.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/utility_io.h"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/svd_HH.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/svd_eigen_HH.hpp"
    "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/orocos_kinematics_dynamics/orocos_kdl/src/utilities/svd_eigen_Macie.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/orocos_kdl/src/orocos-kdl.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mars/MarquetteRMC2021/ros_catkin_ws/build/orocos_kdl/src/orocos_kdl.pc")
endif()

