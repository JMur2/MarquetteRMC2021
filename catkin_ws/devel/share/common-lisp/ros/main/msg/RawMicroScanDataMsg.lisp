; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude RawMicroScanDataMsg.msg.html

(cl:defclass <RawMicroScanDataMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type main-msg:DataHeaderMsg
    :initform (cl:make-instance 'main-msg:DataHeaderMsg))
   (derived_values
    :reader derived_values
    :initarg :derived_values
    :type main-msg:DerivedValuesMsg
    :initform (cl:make-instance 'main-msg:DerivedValuesMsg))
   (general_system_state
    :reader general_system_state
    :initarg :general_system_state
    :type main-msg:GeneralSystemStateMsg
    :initform (cl:make-instance 'main-msg:GeneralSystemStateMsg))
   (measurement_data
    :reader measurement_data
    :initarg :measurement_data
    :type main-msg:MeasurementDataMsg
    :initform (cl:make-instance 'main-msg:MeasurementDataMsg))
   (intrusion_data
    :reader intrusion_data
    :initarg :intrusion_data
    :type main-msg:IntrusionDataMsg
    :initform (cl:make-instance 'main-msg:IntrusionDataMsg))
   (application_data
    :reader application_data
    :initarg :application_data
    :type main-msg:ApplicationDataMsg
    :initform (cl:make-instance 'main-msg:ApplicationDataMsg)))
)

(cl:defclass RawMicroScanDataMsg (<RawMicroScanDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawMicroScanDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawMicroScanDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<RawMicroScanDataMsg> is deprecated: use main-msg:RawMicroScanDataMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawMicroScanDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:header-val is deprecated.  Use main-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'derived_values-val :lambda-list '(m))
(cl:defmethod derived_values-val ((m <RawMicroScanDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:derived_values-val is deprecated.  Use main-msg:derived_values instead.")
  (derived_values m))

(cl:ensure-generic-function 'general_system_state-val :lambda-list '(m))
(cl:defmethod general_system_state-val ((m <RawMicroScanDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:general_system_state-val is deprecated.  Use main-msg:general_system_state instead.")
  (general_system_state m))

(cl:ensure-generic-function 'measurement_data-val :lambda-list '(m))
(cl:defmethod measurement_data-val ((m <RawMicroScanDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:measurement_data-val is deprecated.  Use main-msg:measurement_data instead.")
  (measurement_data m))

(cl:ensure-generic-function 'intrusion_data-val :lambda-list '(m))
(cl:defmethod intrusion_data-val ((m <RawMicroScanDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:intrusion_data-val is deprecated.  Use main-msg:intrusion_data instead.")
  (intrusion_data m))

(cl:ensure-generic-function 'application_data-val :lambda-list '(m))
(cl:defmethod application_data-val ((m <RawMicroScanDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:application_data-val is deprecated.  Use main-msg:application_data instead.")
  (application_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawMicroScanDataMsg>) ostream)
  "Serializes a message object of type '<RawMicroScanDataMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'derived_values) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'general_system_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'measurement_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intrusion_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'application_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawMicroScanDataMsg>) istream)
  "Deserializes a message object of type '<RawMicroScanDataMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'derived_values) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'general_system_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'measurement_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intrusion_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'application_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawMicroScanDataMsg>)))
  "Returns string type for a message object of type '<RawMicroScanDataMsg>"
  "main/RawMicroScanDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawMicroScanDataMsg)))
  "Returns string type for a message object of type 'RawMicroScanDataMsg"
  "main/RawMicroScanDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawMicroScanDataMsg>)))
  "Returns md5sum for a message object of type '<RawMicroScanDataMsg>"
  "5fc254cfba77c4b6406f3301d7d54b81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawMicroScanDataMsg)))
  "Returns md5sum for a message object of type 'RawMicroScanDataMsg"
  "5fc254cfba77c4b6406f3301d7d54b81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawMicroScanDataMsg>)))
  "Returns full string definition for message of type '<RawMicroScanDataMsg>"
  (cl:format cl:nil "DataHeaderMsg header~%DerivedValuesMsg derived_values~%GeneralSystemStateMsg general_system_state~%MeasurementDataMsg measurement_data~%IntrusionDataMsg intrusion_data~%ApplicationDataMsg application_data~%~%================================================================================~%MSG: main/DataHeaderMsg~%uint8 version_version~%uint8 version_major_version~%uint8 version_minor_version~%uint8 version_release~%~%uint32 serial_number_of_device~%uint32 serial_number_of_channel_plug~%uint8 channel_number~%~%uint32 sequence_number~%uint32 scan_number~%~%uint16 timestamp_date~%uint32 timestamp_time~%~%================================================================================~%MSG: main/DerivedValuesMsg~%uint16 multiplication_factor~%uint16 number_of_beams~%uint16 scan_time~%float32 start_angle~%float32 angular_beam_resolution~%uint32 interbeam_period~%~%================================================================================~%MSG: main/GeneralSystemStateMsg~%bool run_mode_active~%bool standby_mode_active~%bool contamination_warning~%bool contamination_error~%bool reference_contour_status~%bool manipulation_status~%~%bool[] safe_cut_off_path~%bool[] non_safe_cut_off_path~%bool[] reset_required_cut_off_path~%~%uint8 current_monitoring_case_no_table_1~%uint8 current_monitoring_case_no_table_2~%uint8 current_monitoring_case_no_table_3~%uint8 current_monitoring_case_no_table_4~%~%bool application_error~%bool device_error~%~%================================================================================~%MSG: main/MeasurementDataMsg~%uint32 number_of_beams~%ScanPointMsg[] scan_points~%~%~%================================================================================~%MSG: main/ScanPointMsg~%float32 angle~%uint16 distance~%uint8 reflectivity~%bool valid~%bool infinite~%bool glare~%bool reflector~%bool contamination~%bool contamination_warning~%~%================================================================================~%MSG: main/IntrusionDataMsg~%IntrusionDatumMsg[] data~%~%================================================================================~%MSG: main/IntrusionDatumMsg~%uint32 size~%bool[] flags~%~%================================================================================~%MSG: main/ApplicationDataMsg~%ApplicationInputsMsg inputs~%ApplicationOutputsMsg outputs~%~%================================================================================~%MSG: main/ApplicationInputsMsg~%bool[] unsafe_inputs_input_sources~%bool[] unsafe_inputs_flags~%~%uint16[] monitoring_case_number_inputs~%bool[] monitoring_case_number_inputs_flags~%~%int16 linear_velocity_inputs_velocity_0~%bool linear_velocity_inputs_velocity_0_valid~%bool linear_velocity_inputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_inputs_velocity_1~%bool linear_velocity_inputs_velocity_1_valid~%bool linear_velocity_inputs_velocity_1_transmitted_safely~%~%uint8 sleep_mode_input~%~%~%================================================================================~%MSG: main/ApplicationOutputsMsg~%bool[] evaluation_path_outputs_eval_out~%bool[] evaluation_path_outputs_is_safe~%bool[] evaluation_path_outputs_is_valid~%~%uint16[] monitoring_case_number_outputs ~%bool[] monitoring_case_number_outputs_flags~%~%uint8 sleep_mode_output~%bool sleep_mode_output_valid~%~%bool error_flag_contamination_warning~%bool error_flag_contamination_error~%bool error_flag_manipulation_error~%bool error_flag_glare~%bool error_flag_reference_contour_intruded~%bool error_flag_critical_error~%bool error_flags_are_valid~%~%~%int16 linear_velocity_outputs_velocity_0~%bool linear_velocity_outputs_velocity_0_valid~%bool linear_velocity_outputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_outputs_velocity_1~%bool linear_velocity_outputs_velocity_1_valid~%bool linear_velocity_outputs_velocity_1_transmitted_safely~%~%int16[] resulting_velocity~%bool[] resulting_velocity_flags~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawMicroScanDataMsg)))
  "Returns full string definition for message of type 'RawMicroScanDataMsg"
  (cl:format cl:nil "DataHeaderMsg header~%DerivedValuesMsg derived_values~%GeneralSystemStateMsg general_system_state~%MeasurementDataMsg measurement_data~%IntrusionDataMsg intrusion_data~%ApplicationDataMsg application_data~%~%================================================================================~%MSG: main/DataHeaderMsg~%uint8 version_version~%uint8 version_major_version~%uint8 version_minor_version~%uint8 version_release~%~%uint32 serial_number_of_device~%uint32 serial_number_of_channel_plug~%uint8 channel_number~%~%uint32 sequence_number~%uint32 scan_number~%~%uint16 timestamp_date~%uint32 timestamp_time~%~%================================================================================~%MSG: main/DerivedValuesMsg~%uint16 multiplication_factor~%uint16 number_of_beams~%uint16 scan_time~%float32 start_angle~%float32 angular_beam_resolution~%uint32 interbeam_period~%~%================================================================================~%MSG: main/GeneralSystemStateMsg~%bool run_mode_active~%bool standby_mode_active~%bool contamination_warning~%bool contamination_error~%bool reference_contour_status~%bool manipulation_status~%~%bool[] safe_cut_off_path~%bool[] non_safe_cut_off_path~%bool[] reset_required_cut_off_path~%~%uint8 current_monitoring_case_no_table_1~%uint8 current_monitoring_case_no_table_2~%uint8 current_monitoring_case_no_table_3~%uint8 current_monitoring_case_no_table_4~%~%bool application_error~%bool device_error~%~%================================================================================~%MSG: main/MeasurementDataMsg~%uint32 number_of_beams~%ScanPointMsg[] scan_points~%~%~%================================================================================~%MSG: main/ScanPointMsg~%float32 angle~%uint16 distance~%uint8 reflectivity~%bool valid~%bool infinite~%bool glare~%bool reflector~%bool contamination~%bool contamination_warning~%~%================================================================================~%MSG: main/IntrusionDataMsg~%IntrusionDatumMsg[] data~%~%================================================================================~%MSG: main/IntrusionDatumMsg~%uint32 size~%bool[] flags~%~%================================================================================~%MSG: main/ApplicationDataMsg~%ApplicationInputsMsg inputs~%ApplicationOutputsMsg outputs~%~%================================================================================~%MSG: main/ApplicationInputsMsg~%bool[] unsafe_inputs_input_sources~%bool[] unsafe_inputs_flags~%~%uint16[] monitoring_case_number_inputs~%bool[] monitoring_case_number_inputs_flags~%~%int16 linear_velocity_inputs_velocity_0~%bool linear_velocity_inputs_velocity_0_valid~%bool linear_velocity_inputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_inputs_velocity_1~%bool linear_velocity_inputs_velocity_1_valid~%bool linear_velocity_inputs_velocity_1_transmitted_safely~%~%uint8 sleep_mode_input~%~%~%================================================================================~%MSG: main/ApplicationOutputsMsg~%bool[] evaluation_path_outputs_eval_out~%bool[] evaluation_path_outputs_is_safe~%bool[] evaluation_path_outputs_is_valid~%~%uint16[] monitoring_case_number_outputs ~%bool[] monitoring_case_number_outputs_flags~%~%uint8 sleep_mode_output~%bool sleep_mode_output_valid~%~%bool error_flag_contamination_warning~%bool error_flag_contamination_error~%bool error_flag_manipulation_error~%bool error_flag_glare~%bool error_flag_reference_contour_intruded~%bool error_flag_critical_error~%bool error_flags_are_valid~%~%~%int16 linear_velocity_outputs_velocity_0~%bool linear_velocity_outputs_velocity_0_valid~%bool linear_velocity_outputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_outputs_velocity_1~%bool linear_velocity_outputs_velocity_1_valid~%bool linear_velocity_outputs_velocity_1_transmitted_safely~%~%int16[] resulting_velocity~%bool[] resulting_velocity_flags~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawMicroScanDataMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'derived_values))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'general_system_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'measurement_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intrusion_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'application_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawMicroScanDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RawMicroScanDataMsg
    (cl:cons ':header (header msg))
    (cl:cons ':derived_values (derived_values msg))
    (cl:cons ':general_system_state (general_system_state msg))
    (cl:cons ':measurement_data (measurement_data msg))
    (cl:cons ':intrusion_data (intrusion_data msg))
    (cl:cons ':application_data (application_data msg))
))
