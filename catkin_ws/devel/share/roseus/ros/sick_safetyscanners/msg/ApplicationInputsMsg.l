;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::ApplicationInputsMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'ApplicationInputsMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::APPLICATIONINPUTSMSG")
  (make-package "SICK_SAFETYSCANNERS::APPLICATIONINPUTSMSG"))

(in-package "ROS")
;;//! \htmlinclude ApplicationInputsMsg.msg.html


(defclass sick_safetyscanners::ApplicationInputsMsg
  :super ros::object
  :slots (_unsafe_inputs_input_sources _unsafe_inputs_flags _monitoring_case_number_inputs _monitoring_case_number_inputs_flags _linear_velocity_inputs_velocity_0 _linear_velocity_inputs_velocity_0_valid _linear_velocity_inputs_velocity_0_transmitted_safely _linear_velocity_inputs_velocity_1 _linear_velocity_inputs_velocity_1_valid _linear_velocity_inputs_velocity_1_transmitted_safely _sleep_mode_input ))

(defmethod sick_safetyscanners::ApplicationInputsMsg
  (:init
   (&key
    ((:unsafe_inputs_input_sources __unsafe_inputs_input_sources) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:unsafe_inputs_flags __unsafe_inputs_flags) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:monitoring_case_number_inputs __monitoring_case_number_inputs) (make-array 0 :initial-element 0 :element-type :integer))
    ((:monitoring_case_number_inputs_flags __monitoring_case_number_inputs_flags) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:linear_velocity_inputs_velocity_0 __linear_velocity_inputs_velocity_0) 0)
    ((:linear_velocity_inputs_velocity_0_valid __linear_velocity_inputs_velocity_0_valid) nil)
    ((:linear_velocity_inputs_velocity_0_transmitted_safely __linear_velocity_inputs_velocity_0_transmitted_safely) nil)
    ((:linear_velocity_inputs_velocity_1 __linear_velocity_inputs_velocity_1) 0)
    ((:linear_velocity_inputs_velocity_1_valid __linear_velocity_inputs_velocity_1_valid) nil)
    ((:linear_velocity_inputs_velocity_1_transmitted_safely __linear_velocity_inputs_velocity_1_transmitted_safely) nil)
    ((:sleep_mode_input __sleep_mode_input) 0)
    )
   (send-super :init)
   (setq _unsafe_inputs_input_sources __unsafe_inputs_input_sources)
   (setq _unsafe_inputs_flags __unsafe_inputs_flags)
   (setq _monitoring_case_number_inputs __monitoring_case_number_inputs)
   (setq _monitoring_case_number_inputs_flags __monitoring_case_number_inputs_flags)
   (setq _linear_velocity_inputs_velocity_0 (round __linear_velocity_inputs_velocity_0))
   (setq _linear_velocity_inputs_velocity_0_valid __linear_velocity_inputs_velocity_0_valid)
   (setq _linear_velocity_inputs_velocity_0_transmitted_safely __linear_velocity_inputs_velocity_0_transmitted_safely)
   (setq _linear_velocity_inputs_velocity_1 (round __linear_velocity_inputs_velocity_1))
   (setq _linear_velocity_inputs_velocity_1_valid __linear_velocity_inputs_velocity_1_valid)
   (setq _linear_velocity_inputs_velocity_1_transmitted_safely __linear_velocity_inputs_velocity_1_transmitted_safely)
   (setq _sleep_mode_input (round __sleep_mode_input))
   self)
  (:unsafe_inputs_input_sources
   (&optional __unsafe_inputs_input_sources)
   (if __unsafe_inputs_input_sources (setq _unsafe_inputs_input_sources __unsafe_inputs_input_sources)) _unsafe_inputs_input_sources)
  (:unsafe_inputs_flags
   (&optional __unsafe_inputs_flags)
   (if __unsafe_inputs_flags (setq _unsafe_inputs_flags __unsafe_inputs_flags)) _unsafe_inputs_flags)
  (:monitoring_case_number_inputs
   (&optional __monitoring_case_number_inputs)
   (if __monitoring_case_number_inputs (setq _monitoring_case_number_inputs __monitoring_case_number_inputs)) _monitoring_case_number_inputs)
  (:monitoring_case_number_inputs_flags
   (&optional __monitoring_case_number_inputs_flags)
   (if __monitoring_case_number_inputs_flags (setq _monitoring_case_number_inputs_flags __monitoring_case_number_inputs_flags)) _monitoring_case_number_inputs_flags)
  (:linear_velocity_inputs_velocity_0
   (&optional __linear_velocity_inputs_velocity_0)
   (if __linear_velocity_inputs_velocity_0 (setq _linear_velocity_inputs_velocity_0 __linear_velocity_inputs_velocity_0)) _linear_velocity_inputs_velocity_0)
  (:linear_velocity_inputs_velocity_0_valid
   (&optional __linear_velocity_inputs_velocity_0_valid)
   (if __linear_velocity_inputs_velocity_0_valid (setq _linear_velocity_inputs_velocity_0_valid __linear_velocity_inputs_velocity_0_valid)) _linear_velocity_inputs_velocity_0_valid)
  (:linear_velocity_inputs_velocity_0_transmitted_safely
   (&optional __linear_velocity_inputs_velocity_0_transmitted_safely)
   (if __linear_velocity_inputs_velocity_0_transmitted_safely (setq _linear_velocity_inputs_velocity_0_transmitted_safely __linear_velocity_inputs_velocity_0_transmitted_safely)) _linear_velocity_inputs_velocity_0_transmitted_safely)
  (:linear_velocity_inputs_velocity_1
   (&optional __linear_velocity_inputs_velocity_1)
   (if __linear_velocity_inputs_velocity_1 (setq _linear_velocity_inputs_velocity_1 __linear_velocity_inputs_velocity_1)) _linear_velocity_inputs_velocity_1)
  (:linear_velocity_inputs_velocity_1_valid
   (&optional __linear_velocity_inputs_velocity_1_valid)
   (if __linear_velocity_inputs_velocity_1_valid (setq _linear_velocity_inputs_velocity_1_valid __linear_velocity_inputs_velocity_1_valid)) _linear_velocity_inputs_velocity_1_valid)
  (:linear_velocity_inputs_velocity_1_transmitted_safely
   (&optional __linear_velocity_inputs_velocity_1_transmitted_safely)
   (if __linear_velocity_inputs_velocity_1_transmitted_safely (setq _linear_velocity_inputs_velocity_1_transmitted_safely __linear_velocity_inputs_velocity_1_transmitted_safely)) _linear_velocity_inputs_velocity_1_transmitted_safely)
  (:sleep_mode_input
   (&optional __sleep_mode_input)
   (if __sleep_mode_input (setq _sleep_mode_input __sleep_mode_input)) _sleep_mode_input)
  (:serialization-length
   ()
   (+
    ;; bool[] _unsafe_inputs_input_sources
    (* 1    (length _unsafe_inputs_input_sources)) 4
    ;; bool[] _unsafe_inputs_flags
    (* 1    (length _unsafe_inputs_flags)) 4
    ;; uint16[] _monitoring_case_number_inputs
    (* 2    (length _monitoring_case_number_inputs)) 4
    ;; bool[] _monitoring_case_number_inputs_flags
    (* 1    (length _monitoring_case_number_inputs_flags)) 4
    ;; int16 _linear_velocity_inputs_velocity_0
    2
    ;; bool _linear_velocity_inputs_velocity_0_valid
    1
    ;; bool _linear_velocity_inputs_velocity_0_transmitted_safely
    1
    ;; int16 _linear_velocity_inputs_velocity_1
    2
    ;; bool _linear_velocity_inputs_velocity_1_valid
    1
    ;; bool _linear_velocity_inputs_velocity_1_transmitted_safely
    1
    ;; uint8 _sleep_mode_input
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _unsafe_inputs_input_sources
     (write-long (length _unsafe_inputs_input_sources) s)
     (dotimes (i (length _unsafe_inputs_input_sources))
       (if (elt _unsafe_inputs_input_sources i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _unsafe_inputs_flags
     (write-long (length _unsafe_inputs_flags) s)
     (dotimes (i (length _unsafe_inputs_flags))
       (if (elt _unsafe_inputs_flags i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint16[] _monitoring_case_number_inputs
     (write-long (length _monitoring_case_number_inputs) s)
     (dotimes (i (length _monitoring_case_number_inputs))
       (write-word (elt _monitoring_case_number_inputs i) s)
       )
     ;; bool[] _monitoring_case_number_inputs_flags
     (write-long (length _monitoring_case_number_inputs_flags) s)
     (dotimes (i (length _monitoring_case_number_inputs_flags))
       (if (elt _monitoring_case_number_inputs_flags i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int16 _linear_velocity_inputs_velocity_0
       (write-word _linear_velocity_inputs_velocity_0 s)
     ;; bool _linear_velocity_inputs_velocity_0_valid
       (if _linear_velocity_inputs_velocity_0_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _linear_velocity_inputs_velocity_0_transmitted_safely
       (if _linear_velocity_inputs_velocity_0_transmitted_safely (write-byte -1 s) (write-byte 0 s))
     ;; int16 _linear_velocity_inputs_velocity_1
       (write-word _linear_velocity_inputs_velocity_1 s)
     ;; bool _linear_velocity_inputs_velocity_1_valid
       (if _linear_velocity_inputs_velocity_1_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _linear_velocity_inputs_velocity_1_transmitted_safely
       (if _linear_velocity_inputs_velocity_1_transmitted_safely (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _sleep_mode_input
       (write-byte _sleep_mode_input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _unsafe_inputs_input_sources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unsafe_inputs_input_sources (make-list n))
     (dotimes (i n)
     (setf (elt _unsafe_inputs_input_sources i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _unsafe_inputs_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _unsafe_inputs_flags (make-list n))
     (dotimes (i n)
     (setf (elt _unsafe_inputs_flags i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint16[] _monitoring_case_number_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _monitoring_case_number_inputs (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _monitoring_case_number_inputs i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; bool[] _monitoring_case_number_inputs_flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _monitoring_case_number_inputs_flags (make-list n))
     (dotimes (i n)
     (setf (elt _monitoring_case_number_inputs_flags i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int16 _linear_velocity_inputs_velocity_0
     (setq _linear_velocity_inputs_velocity_0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _linear_velocity_inputs_velocity_0_valid
     (setq _linear_velocity_inputs_velocity_0_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _linear_velocity_inputs_velocity_0_transmitted_safely
     (setq _linear_velocity_inputs_velocity_0_transmitted_safely (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _linear_velocity_inputs_velocity_1
     (setq _linear_velocity_inputs_velocity_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _linear_velocity_inputs_velocity_1_valid
     (setq _linear_velocity_inputs_velocity_1_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _linear_velocity_inputs_velocity_1_transmitted_safely
     (setq _linear_velocity_inputs_velocity_1_transmitted_safely (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _sleep_mode_input
     (setq _sleep_mode_input (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sick_safetyscanners::ApplicationInputsMsg :md5sum-) "7b0ded75242c9efbfe5da85d5a0cf07c")
(setf (get sick_safetyscanners::ApplicationInputsMsg :datatype-) "sick_safetyscanners/ApplicationInputsMsg")
(setf (get sick_safetyscanners::ApplicationInputsMsg :definition-)
      "bool[] unsafe_inputs_input_sources
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


")



(provide :sick_safetyscanners/ApplicationInputsMsg "7b0ded75242c9efbfe5da85d5a0cf07c")


