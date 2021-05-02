;; Auto-generated. Do not edit!


(when (boundp 'main::ApplicationOutputsMsg)
  (if (not (find-package "MAIN"))
    (make-package "MAIN"))
  (shadow 'ApplicationOutputsMsg (find-package "MAIN")))
(unless (find-package "MAIN::APPLICATIONOUTPUTSMSG")
  (make-package "MAIN::APPLICATIONOUTPUTSMSG"))

(in-package "ROS")
;;//! \htmlinclude ApplicationOutputsMsg.msg.html


(defclass main::ApplicationOutputsMsg
  :super ros::object
  :slots (_evaluation_path_outputs_eval_out _evaluation_path_outputs_is_safe _evaluation_path_outputs_is_valid _monitoring_case_number_outputs _monitoring_case_number_outputs_flags _sleep_mode_output _sleep_mode_output_valid _error_flag_contamination_warning _error_flag_contamination_error _error_flag_manipulation_error _error_flag_glare _error_flag_reference_contour_intruded _error_flag_critical_error _error_flags_are_valid _linear_velocity_outputs_velocity_0 _linear_velocity_outputs_velocity_0_valid _linear_velocity_outputs_velocity_0_transmitted_safely _linear_velocity_outputs_velocity_1 _linear_velocity_outputs_velocity_1_valid _linear_velocity_outputs_velocity_1_transmitted_safely _resulting_velocity _resulting_velocity_flags ))

(defmethod main::ApplicationOutputsMsg
  (:init
   (&key
    ((:evaluation_path_outputs_eval_out __evaluation_path_outputs_eval_out) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:evaluation_path_outputs_is_safe __evaluation_path_outputs_is_safe) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:evaluation_path_outputs_is_valid __evaluation_path_outputs_is_valid) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:monitoring_case_number_outputs __monitoring_case_number_outputs) (make-array 0 :initial-element 0 :element-type :integer))
    ((:monitoring_case_number_outputs_flags __monitoring_case_number_outputs_flags) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:sleep_mode_output __sleep_mode_output) 0)
    ((:sleep_mode_output_valid __sleep_mode_output_valid) nil)
    ((:error_flag_contamination_warning __error_flag_contamination_warning) nil)
    ((:error_flag_contamination_error __error_flag_contamination_error) nil)
    ((:error_flag_manipulation_error __error_flag_manipulation_error) nil)
    ((:error_flag_glare __error_flag_glare) nil)
    ((:error_flag_reference_contour_intruded __error_flag_reference_contour_intruded) nil)
    ((:error_flag_critical_error __error_flag_critical_error) nil)
    ((:error_flags_are_valid __error_flags_are_valid) nil)
    ((:linear_velocity_outputs_velocity_0 __linear_velocity_outputs_velocity_0) 0)
    ((:linear_velocity_outputs_velocity_0_valid __linear_velocity_outputs_velocity_0_valid) nil)
    ((:linear_velocity_outputs_velocity_0_transmitted_safely __linear_velocity_outputs_velocity_0_transmitted_safely) nil)
    ((:linear_velocity_outputs_velocity_1 __linear_velocity_outputs_velocity_1) 0)
    ((:linear_velocity_outputs_velocity_1_valid __linear_velocity_outputs_velocity_1_valid) nil)
    ((:linear_velocity_outputs_velocity_1_transmitted_safely __linear_velocity_outputs_velocity_1_transmitted_safely) nil)
    ((:resulting_velocity __resulting_velocity) (make-array 0 :initial-element 0 :element-type :integer))
    ((:resulting_velocity_flags __resulting_velocity_flags) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _evaluation_path_outputs_eval_out __evaluation_path_outputs_eval_out)
   (setq _evaluation_path_outputs_is_safe __evaluation_path_outputs_is_safe)
   (setq _evaluation_path_outputs_is_valid __evaluation_path_outputs_is_valid)
   (setq _monitoring_case_number_outputs __monitoring_case_number_outputs)
   (setq _monitoring_case_number_outputs_flags __monitoring_case_number_outputs_flags)
   (setq _sleep_mode_output (round __sleep_mode_output))
   (setq _sleep_mode_output_valid __sleep_mode_output_valid)
   (setq _error_flag_contamination_warning __error_flag_contamination_warning)
   (setq _error_flag_contamination_error __error_flag_contamination_error)
   (setq _error_flag_manipulation_error __error_flag_manipulation_error)
   (setq _error_flag_glare __error_flag_glare)
   (setq _error_flag_reference_contour_intruded __error_flag_reference_contour_intruded)
   (setq _error_flag_critical_error __error_flag_critical_error)
   (setq _error_flags_are_valid __error_flags_are_valid)
   (setq _linear_velocity_outputs_velocity_0 (round __linear_velocity_outputs_velocity_0))
   (setq _linear_velocity_outputs_velocity_0_valid __linear_velocity_outputs_velocity_0_valid)
   (setq _linear_velocity_outputs_velocity_0_transmitted_safely __linear_velocity_outputs_velocity_0_transmitted_safely)
   (setq _linear_velocity_outputs_velocity_1 (round __linear_velocity_outputs_velocity_1))
   (setq _linear_velocity_outputs_velocity_1_valid __linear_velocity_outputs_velocity_1_valid)
   (setq _linear_velocity_outputs_velocity_1_transmitted_safely __linear_velocity_outputs_velocity_1_transmitted_safely)
   (setq _resulting_velocity __resulting_velocity)
   (setq _resulting_velocity_flags __resulting_velocity_flags)
   self)
  (:evaluation_path_outputs_eval_out
   (&optional __evaluation_path_outputs_eval_out)
   (if __evaluation_path_outputs_eval_out (setq _evaluation_path_outputs_eval_out __evaluation_path_outputs_eval_out)) _evaluation_path_outputs_eval_out)
  (:evaluation_path_outputs_is_safe
   (&optional __evaluation_path_outputs_is_safe)
   (if __evaluation_path_outputs_is_safe (setq _evaluation_path_outputs_is_safe __evaluation_path_outputs_is_safe)) _evaluation_path_outputs_is_safe)
  (:evaluation_path_outputs_is_valid
   (&optional __evaluation_path_outputs_is_valid)
   (if __evaluation_path_outputs_is_valid (setq _evaluation_path_outputs_is_valid __evaluation_path_outputs_is_valid)) _evaluation_path_outputs_is_valid)
  (:monitoring_case_number_outputs
   (&optional __monitoring_case_number_outputs)
   (if __monitoring_case_number_outputs (setq _monitoring_case_number_outputs __monitoring_case_number_outputs)) _monitoring_case_number_outputs)
  (:monitoring_case_number_outputs_flags
   (&optional __monitoring_case_number_outputs_flags)
   (if __monitoring_case_number_outputs_flags (setq _monitoring_case_number_outputs_flags __monitoring_case_number_outputs_flags)) _monitoring_case_number_outputs_flags)
  (:sleep_mode_output
   (&optional __sleep_mode_output)
   (if __sleep_mode_output (setq _sleep_mode_output __sleep_mode_output)) _sleep_mode_output)
  (:sleep_mode_output_valid
   (&optional __sleep_mode_output_valid)
   (if __sleep_mode_output_valid (setq _sleep_mode_output_valid __sleep_mode_output_valid)) _sleep_mode_output_valid)
  (:error_flag_contamination_warning
   (&optional __error_flag_contamination_warning)
   (if __error_flag_contamination_warning (setq _error_flag_contamination_warning __error_flag_contamination_warning)) _error_flag_contamination_warning)
  (:error_flag_contamination_error
   (&optional __error_flag_contamination_error)
   (if __error_flag_contamination_error (setq _error_flag_contamination_error __error_flag_contamination_error)) _error_flag_contamination_error)
  (:error_flag_manipulation_error
   (&optional __error_flag_manipulation_error)
   (if __error_flag_manipulation_error (setq _error_flag_manipulation_error __error_flag_manipulation_error)) _error_flag_manipulation_error)
  (:error_flag_glare
   (&optional __error_flag_glare)
   (if __error_flag_glare (setq _error_flag_glare __error_flag_glare)) _error_flag_glare)
  (:error_flag_reference_contour_intruded
   (&optional __error_flag_reference_contour_intruded)
   (if __error_flag_reference_contour_intruded (setq _error_flag_reference_contour_intruded __error_flag_reference_contour_intruded)) _error_flag_reference_contour_intruded)
  (:error_flag_critical_error
   (&optional __error_flag_critical_error)
   (if __error_flag_critical_error (setq _error_flag_critical_error __error_flag_critical_error)) _error_flag_critical_error)
  (:error_flags_are_valid
   (&optional __error_flags_are_valid)
   (if __error_flags_are_valid (setq _error_flags_are_valid __error_flags_are_valid)) _error_flags_are_valid)
  (:linear_velocity_outputs_velocity_0
   (&optional __linear_velocity_outputs_velocity_0)
   (if __linear_velocity_outputs_velocity_0 (setq _linear_velocity_outputs_velocity_0 __linear_velocity_outputs_velocity_0)) _linear_velocity_outputs_velocity_0)
  (:linear_velocity_outputs_velocity_0_valid
   (&optional __linear_velocity_outputs_velocity_0_valid)
   (if __linear_velocity_outputs_velocity_0_valid (setq _linear_velocity_outputs_velocity_0_valid __linear_velocity_outputs_velocity_0_valid)) _linear_velocity_outputs_velocity_0_valid)
  (:linear_velocity_outputs_velocity_0_transmitted_safely
   (&optional __linear_velocity_outputs_velocity_0_transmitted_safely)
   (if __linear_velocity_outputs_velocity_0_transmitted_safely (setq _linear_velocity_outputs_velocity_0_transmitted_safely __linear_velocity_outputs_velocity_0_transmitted_safely)) _linear_velocity_outputs_velocity_0_transmitted_safely)
  (:linear_velocity_outputs_velocity_1
   (&optional __linear_velocity_outputs_velocity_1)
   (if __linear_velocity_outputs_velocity_1 (setq _linear_velocity_outputs_velocity_1 __linear_velocity_outputs_velocity_1)) _linear_velocity_outputs_velocity_1)
  (:linear_velocity_outputs_velocity_1_valid
   (&optional __linear_velocity_outputs_velocity_1_valid)
   (if __linear_velocity_outputs_velocity_1_valid (setq _linear_velocity_outputs_velocity_1_valid __linear_velocity_outputs_velocity_1_valid)) _linear_velocity_outputs_velocity_1_valid)
  (:linear_velocity_outputs_velocity_1_transmitted_safely
   (&optional __linear_velocity_outputs_velocity_1_transmitted_safely)
   (if __linear_velocity_outputs_velocity_1_transmitted_safely (setq _linear_velocity_outputs_velocity_1_transmitted_safely __linear_velocity_outputs_velocity_1_transmitted_safely)) _linear_velocity_outputs_velocity_1_transmitted_safely)
  (:resulting_velocity
   (&optional __resulting_velocity)
   (if __resulting_velocity (setq _resulting_velocity __resulting_velocity)) _resulting_velocity)
  (:resulting_velocity_flags
   (&optional __resulting_velocity_flags)
   (if __resulting_velocity_flags (setq _resulting_velocity_flags __resulting_velocity_flags)) _resulting_velocity_flags)
  (:serialization-length
   ()
   (+
    ;; bool[] _evaluation_path_outputs_eval_out
    (* 1    (length _evaluation_path_outputs_eval_out)) 4
    ;; bool[] _evaluation_path_outputs_is_safe
    (* 1    (length _evaluation_path_outputs_is_safe)) 4
    ;; bool[] _evaluation_path_outputs_is_valid
    (* 1    (length _evaluation_path_outputs_is_valid)) 4
    ;; uint16[] _monitoring_case_number_outputs
    (* 2    (length _monitoring_case_number_outputs)) 4
    ;; bool[] _monitoring_case_number_outputs_flags
    (* 1    (length _monitoring_case_number_outputs_flags)) 4
    ;; uint8 _sleep_mode_output
    1
    ;; bool _sleep_mode_output_valid
    1
    ;; bool _error_flag_contamination_warning
    1
    ;; bool _error_flag_contamination_error
    1
    ;; bool _error_flag_manipulation_error
    1
    ;; bool _error_flag_glare
    1
    ;; bool _error_flag_reference_contour_intruded
    1
    ;; bool _error_flag_critical_error
    1
    ;; bool _error_flags_are_valid
    1
    ;; int16 _linear_velocity_outputs_velocity_0
    2
    ;; bool _linear_velocity_outputs_velocity_0_valid
    1
    ;; bool _linear_velocity_outputs_velocity_0_transmitted_safely
    1
    ;; int16 _linear_velocity_outputs_velocity_1
    2
    ;; bool _linear_velocity_outputs_velocity_1_valid
    1
    ;; bool _linear_velocity_outputs_velocity_1_transmitted_safely
    1
    ;; int16[] _resulting_velocity
    (* 2    (length _resulting_velocity)) 4
    ;; bool[] _resulting_velocity_flags
    (* 1    (length _resulting_velocity_flags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _evaluation_path_outputs_eval_out
     (write-long (length _evaluation_path_outputs_eval_out) s)
     (dotimes (i (length _evaluation_path_outputs_eval_out))
       (if (elt _evaluation_path_outputs_eval_out i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _evaluation_path_outputs_is_safe
     (write-long (length _evaluation_path_outputs_is_safe) s)
     (dotimes (i (length _evaluation_path_outputs_is_safe))
       (if (elt _evaluation_path_outputs_is_safe i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _evaluation_path_outputs_is_valid
     (write-long (length _evaluation_path_outputs_is_valid) s)
     (dotimes (i (length _evaluation_path_outputs_is_valid))
       (if (elt _evaluation_path_outputs_is_valid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint16[] _monitoring_case_number_outputs
     (write-long (length _monitoring_case_number_outputs) s)
     (dotimes (i (length _monitoring_case_number_outputs))
       (write-word (elt _monitoring_case_number_outputs i) s)
       )
     ;; bool[] _monitoring_case_number_outputs_flags
     (write-long (length _monitoring_case_number_outputs_flags) s)
     (dotimes (i (length _monitoring_case_number_outputs_flags))
       (if (elt _monitoring_case_number_outputs_flags i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint8 _sleep_mode_output
       (write-byte _sleep_mode_output s)
     ;; bool _sleep_mode_output_valid
       (if _sleep_mode_output_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag_contamination_warning
       (if _error_flag_contamination_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag_contamination_error
       (if _error_flag_contamination_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag_manipulation_error
       (if _error_flag_manipulation_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag_glare
       (if _error_flag_glare (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag_reference_contour_intruded
       (if _error_flag_reference_contour_intruded (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag_critical_error
       (if _error_flag_critical_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flags_are_valid
       (if _error_flags_are_valid (write-byte -1 s) (write-byte 0 s))
     ;; int16 _linear_velocity_outputs_velocity_0
       (write-word _linear_velocity_outputs_velocity_0 s)
     ;; bool _linear_velocity_outputs_velocity_0_valid
       (if _linear_velocity_outputs_velocity_0_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _linear_velocity_outputs_velocity_0_transmitted_safely
       (if _linear_velocity_outputs_velocity_0_transmitted_safely (write-byte -1 s) (write-byte 0 s))
     ;; int16 _linear_velocity_outputs_velocity_1
       (write-word _linear_velocity_outputs_velocity_1 s)
     ;; bool _linear_velocity_outputs_velocity_1_valid
       (if _linear_velocity_outputs_velocity_1_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _linear_velocity_outputs_velocity_1_transmitted_safely
       (if _linear_velocity_outputs_velocity_1_transmitted_safely (write-byte -1 s) (write-byte 0 s))
     ;; int16[] _resulting_velocity
     (write-long (length _resulting_velocity) s)
     (dotimes (i (length _resulting_velocity))
       (write-word (elt _resulting_velocity i) s)
       )
     ;; bool[] _resulting_velocity_flags
     (write-long (length _resulting_velocity_flags) s)
     (dotimes (i (length _resulting_velocity_flags))
       (if (elt _resulting_velocity_flags i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _evaluation_path_outputs_eval_out
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _evaluation_path_outputs_eval_out (make-list n))
     (dotimes (i n)
     (setf (elt _evaluation_path_outputs_eval_out i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _evaluation_path_outputs_is_safe
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _evaluation_path_outputs_is_safe (make-list n))
     (dotimes (i n)
     (setf (elt _evaluation_path_outputs_is_safe i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _evaluation_path_outputs_is_valid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _evaluation_path_outputs_is_valid (make-list n))
     (dotimes (i n)
     (setf (elt _evaluation_path_outputs_is_valid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint16[] _monitoring_case_number_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _monitoring_case_number_outputs (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _monitoring_case_number_outputs i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; bool[] _monitoring_case_number_outputs_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _monitoring_case_number_outputs_flags (make-list n))
     (dotimes (i n)
     (setf (elt _monitoring_case_number_outputs_flags i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint8 _sleep_mode_output
     (setq _sleep_mode_output (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _sleep_mode_output_valid
     (setq _sleep_mode_output_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag_contamination_warning
     (setq _error_flag_contamination_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag_contamination_error
     (setq _error_flag_contamination_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag_manipulation_error
     (setq _error_flag_manipulation_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag_glare
     (setq _error_flag_glare (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag_reference_contour_intruded
     (setq _error_flag_reference_contour_intruded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag_critical_error
     (setq _error_flag_critical_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flags_are_valid
     (setq _error_flags_are_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _linear_velocity_outputs_velocity_0
     (setq _linear_velocity_outputs_velocity_0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _linear_velocity_outputs_velocity_0_valid
     (setq _linear_velocity_outputs_velocity_0_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _linear_velocity_outputs_velocity_0_transmitted_safely
     (setq _linear_velocity_outputs_velocity_0_transmitted_safely (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _linear_velocity_outputs_velocity_1
     (setq _linear_velocity_outputs_velocity_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _linear_velocity_outputs_velocity_1_valid
     (setq _linear_velocity_outputs_velocity_1_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _linear_velocity_outputs_velocity_1_transmitted_safely
     (setq _linear_velocity_outputs_velocity_1_transmitted_safely (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16[] _resulting_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resulting_velocity (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _resulting_velocity i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; bool[] _resulting_velocity_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resulting_velocity_flags (make-list n))
     (dotimes (i n)
     (setf (elt _resulting_velocity_flags i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get main::ApplicationOutputsMsg :md5sum-) "04afaf34d19dee3d3399e6f11d12df15")
(setf (get main::ApplicationOutputsMsg :datatype-) "main/ApplicationOutputsMsg")
(setf (get main::ApplicationOutputsMsg :definition-)
      "bool[] evaluation_path_outputs_eval_out
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



(provide :main/ApplicationOutputsMsg "04afaf34d19dee3d3399e6f11d12df15")


