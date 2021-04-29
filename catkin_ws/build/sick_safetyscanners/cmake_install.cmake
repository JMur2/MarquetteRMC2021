# Install script for directory: /home/mars/catkin_ws/src/sick_safetyscanners

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mars/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sick_safetyscanners" TYPE FILE FILES "/home/mars/catkin_ws/devel/include/sick_safetyscanners/SickSafetyscannersConfigurationConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/sick_safetyscanners" TYPE FILE FILES "/home/mars/catkin_ws/devel/lib/python2.7/dist-packages/sick_safetyscanners/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mars/catkin_ws/devel/lib/python2.7/dist-packages/sick_safetyscanners/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/sick_safetyscanners" TYPE DIRECTORY FILES "/home/mars/catkin_ws/devel/lib/python2.7/dist-packages/sick_safetyscanners/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners/msg" TYPE FILE FILES
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/ApplicationDataMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/ApplicationInputsMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/ApplicationOutputsMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/DataHeaderMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/DerivedValuesMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/ExtendedLaserScanMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/FieldMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/GeneralSystemStateMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/IntrusionDataMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/IntrusionDatumMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/MeasurementDataMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/MonitoringCaseMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/OutputPathsMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/RawMicroScanDataMsg.msg"
    "/home/mars/catkin_ws/src/sick_safetyscanners/msg/ScanPointMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners/srv" TYPE FILE FILES "/home/mars/catkin_ws/src/sick_safetyscanners/srv/FieldData.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners/cmake" TYPE FILE FILES "/home/mars/catkin_ws/build/sick_safetyscanners/catkin_generated/installspace/sick_safetyscanners-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mars/catkin_ws/devel/include/sick_safetyscanners")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mars/catkin_ws/devel/share/roseus/ros/sick_safetyscanners")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mars/catkin_ws/devel/share/common-lisp/ros/sick_safetyscanners")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mars/catkin_ws/devel/share/gennodejs/ros/sick_safetyscanners")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mars/catkin_ws/devel/lib/python2.7/dist-packages/sick_safetyscanners")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mars/catkin_ws/devel/lib/python2.7/dist-packages/sick_safetyscanners")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mars/catkin_ws/build/sick_safetyscanners/catkin_generated/installspace/sick_safetyscanners.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners/cmake" TYPE FILE FILES "/home/mars/catkin_ws/build/sick_safetyscanners/catkin_generated/installspace/sick_safetyscanners-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners/cmake" TYPE FILE FILES
    "/home/mars/catkin_ws/build/sick_safetyscanners/catkin_generated/installspace/sick_safetyscannersConfig.cmake"
    "/home/mars/catkin_ws/build/sick_safetyscanners/catkin_generated/installspace/sick_safetyscannersConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners" TYPE FILE FILES "/home/mars/catkin_ws/src/sick_safetyscanners/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/mars/catkin_ws/devel/lib/libsick_safetyscanners_core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so"
         OLD_RPATH "/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsick_safetyscanners_core.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners" TYPE EXECUTABLE FILES "/home/mars/catkin_ws/devel/lib/sick_safetyscanners/sick_safetyscanners_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node"
         OLD_RPATH "/home/mars/catkin_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/sick_safetyscanners/sick_safetyscanners_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sick_safetyscanners" TYPE DIRECTORY FILES "/home/mars/catkin_ws/src/sick_safetyscanners/include/sick_safetyscanners/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.hpp$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sick_safetyscanners" TYPE DIRECTORY FILES
    "/home/mars/catkin_ws/src/sick_safetyscanners/docs"
    "/home/mars/catkin_ws/src/sick_safetyscanners/launch"
    )
endif()

