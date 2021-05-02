;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::RawMicroScanDataMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'RawMicroScanDataMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::RAWMICROSCANDATAMSG")
  (make-package "SICK_SAFETYSCANNERS::RAWMICROSCANDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude RawMicroScanDataMsg.msg.html


(defclass sick_safetyscanners::RawMicroScanDataMsg
  :super ros::object
  :slots (_header _derived_values _general_system_state _measurement_data _intrusion_data _application_data ))

(defmethod sick_safetyscanners::RawMicroScanDataMsg
  (:init
   (&key
    ((:header __header) (instance sick_safetyscanners::DataHeaderMsg :init))
    ((:derived_values __derived_values) (instance sick_safetyscanners::DerivedValuesMsg :init))
    ((:general_system_state __general_system_state) (instance sick_safetyscanners::GeneralSystemStateMsg :init))
    ((:measurement_data __measurement_data) (instance sick_safetyscanners::MeasurementDataMsg :init))
    ((:intrusion_data __intrusion_data) (instance sick_safetyscanners::IntrusionDataMsg :init))
    ((:application_data __application_data) (instance sick_safetyscanners::ApplicationDataMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _derived_values __derived_values)
   (setq _general_system_state __general_system_state)
   (setq _measurement_data __measurement_data)
   (setq _intrusion_data __intrusion_data)
   (setq _application_data __application_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:derived_values
   (&rest __derived_values)
   (if (keywordp (car __derived_values))
       (send* _derived_values __derived_values)
     (progn
       (if __derived_values (setq _derived_values (car __derived_values)))
       _derived_values)))
  (:general_system_state
   (&rest __general_system_state)
   (if (keywordp (car __general_system_state))
       (send* _general_system_state __general_system_state)
     (progn
       (if __general_system_state (setq _general_system_state (car __general_system_state)))
       _general_system_state)))
  (:measurement_data
   (&rest __measurement_data)
   (if (keywordp (car __measurement_data))
       (send* _measurement_data __measurement_data)
     (progn
       (if __measurement_data (setq _measurement_data (car __measurement_data)))
       _measurement_data)))
  (:intrusion_data
   (&rest __intrusion_data)
   (if (keywordp (car __intrusion_data))
       (send* _intrusion_data __intrusion_data)
     (progn
       (if __intrusion_data (setq _intrusion_data (car __intrusion_data)))
       _intrusion_data)))
  (:application_data
   (&rest __application_data)
   (if (keywordp (car __application_data))
       (send* _application_data __application_data)
     (progn
       (if __application_data (setq _application_data (car __application_data)))
       _application_data)))
  (:serialization-length
   ()
   (+
    ;; sick_safetyscanners/DataHeaderMsg _header
    (send _header :serialization-length)
    ;; sick_safetyscanners/DerivedValuesMsg _derived_values
    (send _derived_values :serialization-length)
    ;; sick_safetyscanners/GeneralSystemStateMsg _general_system_state
    (send _general_system_state :serialization-length)
    ;; sick_safetyscanners/MeasurementDataMsg _measurement_data
    (send _measurement_data :serialization-length)
    ;; sick_safetyscanners/IntrusionDataMsg _intrusion_data
    (send _intrusion_data :serialization-length)
    ;; sick_safetyscanners/ApplicationDataMsg _application_data
    (send _application_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sick_safetyscanners/DataHeaderMsg _header
       (send _header :serialize s)
     ;; sick_safetyscanners/DerivedValuesMsg _derived_values
       (send _derived_values :serialize s)
     ;; sick_safetyscanners/GeneralSystemStateMsg _general_system_state
       (send _general_system_state :serialize s)
     ;; sick_safetyscanners/MeasurementDataMsg _measurement_data
       (send _measurement_data :serialize s)
     ;; sick_safetyscanners/IntrusionDataMsg _intrusion_data
       (send _intrusion_data :serialize s)
     ;; sick_safetyscanners/ApplicationDataMsg _application_data
       (send _application_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sick_safetyscanners/DataHeaderMsg _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sick_safetyscanners/DerivedValuesMsg _derived_values
     (send _derived_values :deserialize buf ptr-) (incf ptr- (send _derived_values :serialization-length))
   ;; sick_safetyscanners/GeneralSystemStateMsg _general_system_state
     (send _general_system_state :deserialize buf ptr-) (incf ptr- (send _general_system_state :serialization-length))
   ;; sick_safetyscanners/MeasurementDataMsg _measurement_data
     (send _measurement_data :deserialize buf ptr-) (incf ptr- (send _measurement_data :serialization-length))
   ;; sick_safetyscanners/IntrusionDataMsg _intrusion_data
     (send _intrusion_data :deserialize buf ptr-) (incf ptr- (send _intrusion_data :serialization-length))
   ;; sick_safetyscanners/ApplicationDataMsg _application_data
     (send _application_data :deserialize buf ptr-) (incf ptr- (send _application_data :serialization-length))
   ;;
   self)
  )

(setf (get sick_safetyscanners::RawMicroScanDataMsg :md5sum-) "5fc254cfba77c4b6406f3301d7d54b81")
(setf (get sick_safetyscanners::RawMicroScanDataMsg :datatype-) "sick_safetyscanners/RawMicroScanDataMsg")
(setf (get sick_safetyscanners::RawMicroScanDataMsg :definition-)
      "DataHeaderMsg header
DerivedValuesMsg derived_values
GeneralSystemStateMsg general_system_state
MeasurementDataMsg measurement_data
IntrusionDataMsg intrusion_data
ApplicationDataMsg application_data

================================================================================
MSG: sick_safetyscanners/DataHeaderMsg
uint8 version_version
uint8 version_major_version
uint8 version_minor_version
uint8 version_release

uint32 serial_number_of_device
uint32 serial_number_of_channel_plug
uint8 channel_number

uint32 sequence_number
uint32 scan_number

uint16 timestamp_date
uint32 timestamp_time

================================================================================
MSG: sick_safetyscanners/DerivedValuesMsg
uint16 multiplication_factor
uint16 number_of_beams
uint16 scan_time
float32 start_angle
float32 angular_beam_resolution
uint32 interbeam_period

================================================================================
MSG: sick_safetyscanners/GeneralSystemStateMsg
bool run_mode_active
bool standby_mode_active
bool contamination_warning
bool contamination_error
bool reference_contour_status
bool manipulation_status

bool[] safe_cut_off_path
bool[] non_safe_cut_off_path
bool[] reset_required_cut_off_path

uint8 current_monitoring_case_no_table_1
uint8 current_monitoring_case_no_table_2
uint8 current_monitoring_case_no_table_3
uint8 current_monitoring_case_no_table_4

bool application_error
bool device_error

================================================================================
MSG: sick_safetyscanners/MeasurementDataMsg
uint32 number_of_beams
ScanPointMsg[] scan_points


================================================================================
MSG: sick_safetyscanners/ScanPointMsg
float32 angle
uint16 distance
uint8 reflectivity
bool valid
bool infinite
bool glare
bool reflector
bool contamination
bool contamination_warning

================================================================================
MSG: sick_safetyscanners/IntrusionDataMsg
IntrusionDatumMsg[] data

================================================================================
MSG: sick_safetyscanners/IntrusionDatumMsg
uint32 size
bool[] flags

================================================================================
MSG: sick_safetyscanners/ApplicationDataMsg
ApplicationInputsMsg inputs
ApplicationOutputsMsg outputs

================================================================================
MSG: sick_safetyscanners/ApplicationInputsMsg
bool[] unsafe_inputs_input_sources
bool[] unsafe_inputs_flags

uint16[] monitoring_case_number_inputs
bool[] monitoring_case_number_inputs_flags

int16 linear_velocity_inputs_velocity_0
bool linear_velocity_inputs_velocity_0_valid
bool linear_velocity_inputs_velocity_0_transmitted_safely

int16 linear_velocity_inputs_velocity_1
bool linear_velocity_inputs_velocity_1_valid
bool linear_velocity_inputs_velocity_1_transmitted_safely

uint8 sleep_mode_input


================================================================================
MSG: sick_safetyscanners/ApplicationOutputsMsg
bool[] evaluation_path_outputs_eval_out
bool[] evaluation_path_outputs_is_safe
bool[] evaluation_path_outputs_is_valid

uint16[] monitoring_case_number_outputs 
bool[] monitoring_case_number_outputs_flags

uint8 sleep_mode_output
bool sleep_mode_output_valid

bool error_flag_contamination_warning
bool error_flag_contamination_error
bool error_flag_manipulation_error
bool error_flag_glare
bool error_flag_reference_contour_intruded
bool error_flag_critical_error
bool error_flags_are_valid


int16 linear_velocity_outputs_velocity_0
bool linear_velocity_outputs_velocity_0_valid
bool linear_velocity_outputs_velocity_0_transmitted_safely

int16 linear_velocity_outputs_velocity_1
bool linear_velocity_outputs_velocity_1_valid
bool linear_velocity_outputs_velocity_1_transmitted_safely

int16[] resulting_velocity
bool[] resulting_velocity_flags

 

")



(provide :sick_safetyscanners/RawMicroScanDataMsg "5fc254cfba77c4b6406f3301d7d54b81")


