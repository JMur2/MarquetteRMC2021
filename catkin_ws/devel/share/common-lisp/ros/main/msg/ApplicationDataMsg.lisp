; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude ApplicationDataMsg.msg.html

(cl:defclass <ApplicationDataMsg> (roslisp-msg-protocol:ros-message)
  ((inputs
    :reader inputs
    :initarg :inputs
    :type main-msg:ApplicationInputsMsg
    :initform (cl:make-instance 'main-msg:ApplicationInputsMsg))
   (outputs
    :reader outputs
    :initarg :outputs
    :type main-msg:ApplicationOutputsMsg
    :initform (cl:make-instance 'main-msg:ApplicationOutputsMsg)))
)

(cl:defclass ApplicationDataMsg (<ApplicationDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplicationDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplicationDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<ApplicationDataMsg> is deprecated: use main-msg:ApplicationDataMsg instead.")))

(cl:ensure-generic-function 'inputs-val :lambda-list '(m))
(cl:defmethod inputs-val ((m <ApplicationDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:inputs-val is deprecated.  Use main-msg:inputs instead.")
  (inputs m))

(cl:ensure-generic-function 'outputs-val :lambda-list '(m))
(cl:defmethod outputs-val ((m <ApplicationDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:outputs-val is deprecated.  Use main-msg:outputs instead.")
  (outputs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplicationDataMsg>) ostream)
  "Serializes a message object of type '<ApplicationDataMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inputs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'outputs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplicationDataMsg>) istream)
  "Deserializes a message object of type '<ApplicationDataMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inputs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'outputs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplicationDataMsg>)))
  "Returns string type for a message object of type '<ApplicationDataMsg>"
  "main/ApplicationDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplicationDataMsg)))
  "Returns string type for a message object of type 'ApplicationDataMsg"
  "main/ApplicationDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplicationDataMsg>)))
  "Returns md5sum for a message object of type '<ApplicationDataMsg>"
  "e2c1cd2050a13f8b7c83b35c17583a56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplicationDataMsg)))
  "Returns md5sum for a message object of type 'ApplicationDataMsg"
  "e2c1cd2050a13f8b7c83b35c17583a56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplicationDataMsg>)))
  "Returns full string definition for message of type '<ApplicationDataMsg>"
  (cl:format cl:nil "ApplicationInputsMsg inputs~%ApplicationOutputsMsg outputs~%~%================================================================================~%MSG: main/ApplicationInputsMsg~%bool[] unsafe_inputs_input_sources~%bool[] unsafe_inputs_flags~%~%uint16[] monitoring_case_number_inputs~%bool[] monitoring_case_number_inputs_flags~%~%int16 linear_velocity_inputs_velocity_0~%bool linear_velocity_inputs_velocity_0_valid~%bool linear_velocity_inputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_inputs_velocity_1~%bool linear_velocity_inputs_velocity_1_valid~%bool linear_velocity_inputs_velocity_1_transmitted_safely~%~%uint8 sleep_mode_input~%~%~%================================================================================~%MSG: main/ApplicationOutputsMsg~%bool[] evaluation_path_outputs_eval_out~%bool[] evaluation_path_outputs_is_safe~%bool[] evaluation_path_outputs_is_valid~%~%uint16[] monitoring_case_number_outputs ~%bool[] monitoring_case_number_outputs_flags~%~%uint8 sleep_mode_output~%bool sleep_mode_output_valid~%~%bool error_flag_contamination_warning~%bool error_flag_contamination_error~%bool error_flag_manipulation_error~%bool error_flag_glare~%bool error_flag_reference_contour_intruded~%bool error_flag_critical_error~%bool error_flags_are_valid~%~%~%int16 linear_velocity_outputs_velocity_0~%bool linear_velocity_outputs_velocity_0_valid~%bool linear_velocity_outputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_outputs_velocity_1~%bool linear_velocity_outputs_velocity_1_valid~%bool linear_velocity_outputs_velocity_1_transmitted_safely~%~%int16[] resulting_velocity~%bool[] resulting_velocity_flags~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplicationDataMsg)))
  "Returns full string definition for message of type 'ApplicationDataMsg"
  (cl:format cl:nil "ApplicationInputsMsg inputs~%ApplicationOutputsMsg outputs~%~%================================================================================~%MSG: main/ApplicationInputsMsg~%bool[] unsafe_inputs_input_sources~%bool[] unsafe_inputs_flags~%~%uint16[] monitoring_case_number_inputs~%bool[] monitoring_case_number_inputs_flags~%~%int16 linear_velocity_inputs_velocity_0~%bool linear_velocity_inputs_velocity_0_valid~%bool linear_velocity_inputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_inputs_velocity_1~%bool linear_velocity_inputs_velocity_1_valid~%bool linear_velocity_inputs_velocity_1_transmitted_safely~%~%uint8 sleep_mode_input~%~%~%================================================================================~%MSG: main/ApplicationOutputsMsg~%bool[] evaluation_path_outputs_eval_out~%bool[] evaluation_path_outputs_is_safe~%bool[] evaluation_path_outputs_is_valid~%~%uint16[] monitoring_case_number_outputs ~%bool[] monitoring_case_number_outputs_flags~%~%uint8 sleep_mode_output~%bool sleep_mode_output_valid~%~%bool error_flag_contamination_warning~%bool error_flag_contamination_error~%bool error_flag_manipulation_error~%bool error_flag_glare~%bool error_flag_reference_contour_intruded~%bool error_flag_critical_error~%bool error_flags_are_valid~%~%~%int16 linear_velocity_outputs_velocity_0~%bool linear_velocity_outputs_velocity_0_valid~%bool linear_velocity_outputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_outputs_velocity_1~%bool linear_velocity_outputs_velocity_1_valid~%bool linear_velocity_outputs_velocity_1_transmitted_safely~%~%int16[] resulting_velocity~%bool[] resulting_velocity_flags~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplicationDataMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inputs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'outputs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplicationDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplicationDataMsg
    (cl:cons ':inputs (inputs msg))
    (cl:cons ':outputs (outputs msg))
))
