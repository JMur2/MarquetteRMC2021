;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::ApplicationDataMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'ApplicationDataMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::APPLICATIONDATAMSG")
  (make-package "SICK_SAFETYSCANNERS::APPLICATIONDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude ApplicationDataMsg.msg.html


(defclass sick_safetyscanners::ApplicationDataMsg
  :super ros::object
  :slots (_inputs _outputs ))

(defmethod sick_safetyscanners::ApplicationDataMsg
  (:init
   (&key
    ((:inputs __inputs) (instance sick_safetyscanners::ApplicationInputsMsg :init))
    ((:outputs __outputs) (instance sick_safetyscanners::ApplicationOutputsMsg :init))
    )
   (send-super :init)
   (setq _inputs __inputs)
   (setq _outputs __outputs)
   self)
  (:inputs
   (&rest __inputs)
   (if (keywordp (car __inputs))
       (send* _inputs __inputs)
     (progn
       (if __inputs (setq _inputs (car __inputs)))
       _inputs)))
  (:outputs
   (&rest __outputs)
   (if (keywordp (car __outputs))
       (send* _outputs __outputs)
     (progn
       (if __outputs (setq _outputs (car __outputs)))
       _outputs)))
  (:serialization-length
   ()
   (+
    ;; sick_safetyscanners/ApplicationInputsMsg _inputs
    (send _inputs :serialization-length)
    ;; sick_safetyscanners/ApplicationOutputsMsg _outputs
    (send _outputs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sick_safetyscanners/ApplicationInputsMsg _inputs
       (send _inputs :serialize s)
     ;; sick_safetyscanners/ApplicationOutputsMsg _outputs
       (send _outputs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sick_safetyscanners/ApplicationInputsMsg _inputs
     (send _inputs :deserialize buf ptr-) (incf ptr- (send _inputs :serialization-length))
   ;; sick_safetyscanners/ApplicationOutputsMsg _outputs
     (send _outputs :deserialize buf ptr-) (incf ptr- (send _outputs :serialization-length))
   ;;
   self)
  )

(setf (get sick_safetyscanners::ApplicationDataMsg :md5sum-) "e2c1cd2050a13f8b7c83b35c17583a56")
(setf (get sick_safetyscanners::ApplicationDataMsg :datatype-) "sick_safetyscanners/ApplicationDataMsg")
(setf (get sick_safetyscanners::ApplicationDataMsg :definition-)
      "ApplicationInputsMsg inputs
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



(provide :sick_safetyscanners/ApplicationDataMsg "e2c1cd2050a13f8b7c83b35c17583a56")


