cmake_minimum_required(VERSION 3.0.2)
project(main)

set(path "c:/catkin_ws")

cmake_path(GET path ROOT_DIRECTORY rootDir)
message("Root dir is \"${rootDir}\"")

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  diagnostic_updater
  dynamic_reconfigure
  message_generation
  roscpp
  sensor_msgs
)

## System dependencies are found with CMake's conventions
find_package(Boost REQUIRED COMPONENTS system thread)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

################################################
## Declare ROS messages, services and actions ##
################################################

## To declare and build messages, services or actions from within this
## package, follow these steps:
## * Let MSG_DEP_SET be the set of packages whose message types you use in
##   your messages/services/actions (e.g. std_msgs, actionlib_msgs, ...).
## * In the file package.xml:
##   * add a build_depend tag for "message_generation"
##   * add a build_depend and a exec_depend tag for each package in MSG_DEP_SET
##   * If MSG_DEP_SET isn't empty the following dependency has been pulled in
##     but can be declared for certainty nonetheless:
##     * add a exec_depend tag for "message_runtime"
## * In this file (CMakeLists.txt):
##   * add "message_generation" and every package in MSG_DEP_SET to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * add "message_runtime" and every package in MSG_DEP_SET to
##     catkin_package(CATKIN_DEPENDS ...)
##   * uncomment the add_*_files sections below as needed
##     and list every .msg/.srv/.action file to be processed
##   * uncomment the generate_messages entry below
##   * add every package in MSG_DEP_SET to generate_messages(DEPENDENCIES ...)

add_message_files(
  FILES
  ApplicationDataMsg.msg
  ApplicationInputsMsg.msg
  ApplicationOutputsMsg.msg
  DataHeaderMsg.msg
  DerivedValuesMsg.msg
  ExtendedLaserScanMsg.msg
  FieldMsg.msg
  GeneralSystemStateMsg.msg
  IntrusionDataMsg.msg
  IntrusionDatumMsg.msg
  MeasurementDataMsg.msg
  MonitoringCaseMsg.msg
  OutputPathsMsg.msg
  RawMicroScanDataMsg.msg
  ScanPointMsg.msg
)

add_service_files(
  FILES
  FieldData.srv
)

generate_messages(
  DEPENDENCIES
  sensor_msgs
  std_msgs
)

################################################
## Declare ROS dynamic reconfigure parameters ##
################################################

## To declare and build dynamic reconfigure parameters within this
## package, follow these steps:
## * In the file package.xml:
##   * add a build_depend and a exec_depend tag for "dynamic_reconfigure"
## * In this file (CMakeLists.txt):
##   * add "dynamic_reconfigure" to
##     find_package(catkin REQUIRED COMPONENTS ...)
##   * uncomment the "generate_dynamic_reconfigure_options" section below
##     and list every .cfg file to be processed

generate_dynamic_reconfigure_options(
  config/SickSafetyscannersConfiguration.cfg
)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
  INCLUDE_DIRS
    include
#    ${EIGEN3_INCLUDE_DIR}
  LIBRARIES
    ${PROJECT_NAME}_core
  CATKIN_DEPENDS
    dynamic_reconfigure
    message_runtime
    roscpp
    sensor_msgs
    std_msgs
  DEPENDS
    Boost
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
)

## Declare a C++ library
add_library(${PROJECT_NAME}_core
  src/SickSafetyscanners.cpp
  src/cola2/ApplicationNameVariableCommand.cpp
  src/cola2/ChangeCommSettingsCommand.cpp
  src/cola2/CloseSession.cpp
  src/cola2/Cola2Session.cpp
  src/cola2/Command.cpp
  src/cola2/ConfigMetadataVariableCommand.cpp
  src/cola2/CreateSession.cpp
  src/cola2/DeviceNameVariableCommand.cpp
  src/cola2/DeviceStatusVariableCommand.cpp
  src/cola2/FieldGeometryVariableCommand.cpp
  src/cola2/FieldHeaderVariableCommand.cpp
  src/cola2/FieldSetsVariableCommand.cpp
  src/cola2/FindMeCommand.cpp
  src/cola2/FirmwareVersionVariableCommand.cpp
  src/cola2/MeasurementCurrentConfigVariableCommand.cpp
  src/cola2/MeasurementPersistentConfigVariableCommand.cpp
  src/cola2/MethodCommand.cpp
  src/cola2/MonitoringCaseTableHeaderVariableCommand.cpp
  src/cola2/MonitoringCaseVariableCommand.cpp
  src/cola2/OrderNumberVariableCommand.cpp
  src/cola2/ProjectNameVariableCommand.cpp
  src/cola2/RequiredUserActionVariableCommand.cpp
  src/cola2/SerialNumberVariableCommand.cpp
  src/cola2/StatusOverviewVariableCommand.cpp
  src/cola2/TypeCodeVariableCommand.cpp
  src/cola2/UserNameVariableCommand.cpp
  src/cola2/VariableCommand.cpp
  src/communication/AsyncTCPClient.cpp
  src/communication/AsyncUDPClient.cpp
  src/data_processing/ParseApplicationData.cpp
  src/data_processing/ParseApplicationNameData.cpp
  src/data_processing/ParseConfigMetadata.cpp
  src/data_processing/ParseData.cpp
  src/data_processing/ParseDataHeader.cpp
  src/data_processing/ParseDatagramHeader.cpp
  src/data_processing/ParseDerivedValues.cpp
  src/data_processing/ParseDeviceName.cpp
  src/data_processing/ParseDeviceStatus.cpp
  src/data_processing/ParseFieldGeometryData.cpp
  src/data_processing/ParseFieldHeaderData.cpp
  src/data_processing/ParseFieldSetsData.cpp
  src/data_processing/ParseFirmwareVersion.cpp
  src/data_processing/ParseGeneralSystemState.cpp
  src/data_processing/ParseIntrusionData.cpp
  src/data_processing/ParseMeasurementCurrentConfigData.cpp
  src/data_processing/ParseMeasurementData.cpp
  src/data_processing/ParseMeasurementPersistentConfigData.cpp
  src/data_processing/ParseMonitoringCaseData.cpp
  src/data_processing/ParseOrderNumber.cpp
  src/data_processing/ParseProjectName.cpp
  src/data_processing/ParseRequiredUserAction.cpp
  src/data_processing/ParseSerialNumber.cpp
  src/data_processing/ParseStatusOverview.cpp
  src/data_processing/ParseTCPPacket.cpp
  src/data_processing/ParseTypeCodeData.cpp
  src/data_processing/ParseUserNameData.cpp
  src/data_processing/TCPPacketMerger.cpp
  src/data_processing/UDPPacketMerger.cpp
  src/datastructure/ApplicationData.cpp
  src/datastructure/ApplicationInputs.cpp
  src/datastructure/ApplicationName.cpp
  src/datastructure/ApplicationOutputs.cpp
  src/datastructure/CommSettings.cpp
  src/datastructure/ConfigData.cpp
  src/datastructure/ConfigMetadata.cpp
  src/datastructure/Data.cpp
  src/datastructure/DatagramHeader.cpp
  src/datastructure/DataHeader.cpp
  src/datastructure/DerivedValues.cpp
  src/datastructure/DeviceName.cpp
  src/datastructure/DeviceStatus.cpp
  src/datastructure/FieldData.cpp
  src/datastructure/FieldSets.cpp
  src/datastructure/FirmwareVersion.cpp
  src/datastructure/GeneralSystemState.cpp
  src/datastructure/IntrusionData.cpp
  src/datastructure/IntrusionDatum.cpp
  src/datastructure/LatestTelegram.cpp
  src/datastructure/MeasurementData.cpp
  src/datastructure/MonitoringCaseData.cpp
  src/datastructure/OrderNumber.cpp
  src/datastructure/PacketBuffer.cpp
  src/datastructure/ParsedPacketBuffer.cpp
  src/datastructure/ProjectName.cpp
  src/datastructure/RequiredUserAction.cpp
  src/datastructure/ScanPoint.cpp
  src/datastructure/SerialNumber.cpp
  src/datastructure/StatusOverview.cpp
  src/datastructure/TypeCode.cpp
  src/datastructure/UserName.cpp
)

## Add cmake target dependencies of the library
## as an example, code may need to be generated before libraries
## either from message generation or dynamic reconfigure
add_dependencies(${PROJECT_NAME}_core
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)

#add_dependencies(${PROJECT_NAME}_node
#  ${${PROJECT_NAME}_EXPORTED_TARGETS}
#  ${catkin_EXPORTED_TARGETS}
#)

## Declare a C++ executable
## With catkin_make all packages are built within a single CMake context
## The recommended prefix ensures that target names across packages don't collide
#add_executable(${PROJECT_NAME}_node
#  nodes/${PROJECT_NAME}_node.cpp
#  src/SickSafetyscannersRos.cpp
#)

## Rename C++ executable without prefix
## The above recommended prefix causes long target names, the following renames the
## target back to the shorter version for ease of user use
## e.g. "rosrun someones_pkg node" instead of "rosrun someones_pkg someones_pkg_node"
# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

## Add cmake target dependencies of the executable
## same as for the library above
# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
target_link_libraries(${PROJECT_NAME}_core
  ${catkin_LIBRARIES}
)

#target_link_libraries(${PROJECT_NAME}_node
#  ${PROJECT_NAME}_core
#  ${catkin_LIBRARIES}
#)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# catkin_install_python(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables for installation
## See http://docs.ros.org/melodic/api/catkin/html/howto/format1/building_executables.html
install(
  TARGETS ${PROJECT_NAME}_core
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

#install(
#  TARGETS ${PROJECT_NAME}_node
#  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)

## Mark cpp header files for installation
install(
  DIRECTORY /${rootDir}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING
    PATTERN "*.h"
    PATTERN "*.hpp"
)

## Mark other files for installation (e.g. launch and bag files, etc.)
#install(
#  DIRECTORY docs launch
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
#)

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_main.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
