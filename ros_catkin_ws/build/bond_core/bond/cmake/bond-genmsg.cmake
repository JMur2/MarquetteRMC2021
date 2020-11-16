# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bond: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ibond:/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg;-Istd_msgs:/home/mars/MarquetteRMC2021/ros_catkin_ws/src/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bond_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" NAME_WE)
add_custom_target(_bond_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bond" "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" ""
)

get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" NAME_WE)
add_custom_target(_bond_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bond" "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bond
)
_generate_msg_cpp(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bond
)

### Generating Services

### Generating Module File
_generate_module_cpp(bond
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bond
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bond_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bond_generate_messages bond_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" NAME_WE)
add_dependencies(bond_generate_messages_cpp _bond_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" NAME_WE)
add_dependencies(bond_generate_messages_cpp _bond_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bond_gencpp)
add_dependencies(bond_gencpp bond_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bond_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bond
)
_generate_msg_eus(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bond
)

### Generating Services

### Generating Module File
_generate_module_eus(bond
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bond
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bond_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bond_generate_messages bond_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" NAME_WE)
add_dependencies(bond_generate_messages_eus _bond_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" NAME_WE)
add_dependencies(bond_generate_messages_eus _bond_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bond_geneus)
add_dependencies(bond_geneus bond_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bond_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bond
)
_generate_msg_lisp(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bond
)

### Generating Services

### Generating Module File
_generate_module_lisp(bond
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bond
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bond_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bond_generate_messages bond_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" NAME_WE)
add_dependencies(bond_generate_messages_lisp _bond_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" NAME_WE)
add_dependencies(bond_generate_messages_lisp _bond_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bond_genlisp)
add_dependencies(bond_genlisp bond_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bond_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bond
)
_generate_msg_nodejs(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bond
)

### Generating Services

### Generating Module File
_generate_module_nodejs(bond
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bond
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bond_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bond_generate_messages bond_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" NAME_WE)
add_dependencies(bond_generate_messages_nodejs _bond_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" NAME_WE)
add_dependencies(bond_generate_messages_nodejs _bond_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bond_gennodejs)
add_dependencies(bond_gennodejs bond_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bond_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bond
)
_generate_msg_py(bond
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bond
)

### Generating Services

### Generating Module File
_generate_module_py(bond
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bond
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bond_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bond_generate_messages bond_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Constants.msg" NAME_WE)
add_dependencies(bond_generate_messages_py _bond_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mars/MarquetteRMC2021/ros_catkin_ws/src/bond_core/bond/msg/Status.msg" NAME_WE)
add_dependencies(bond_generate_messages_py _bond_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bond_genpy)
add_dependencies(bond_genpy bond_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bond_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bond)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bond
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bond_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bond)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bond
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bond_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bond)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bond
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bond_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bond)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bond
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bond_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bond)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bond\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bond
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bond_generate_messages_py std_msgs_generate_messages_py)
endif()
