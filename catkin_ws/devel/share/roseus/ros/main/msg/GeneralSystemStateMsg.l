;; Auto-generated. Do not edit!


(when (boundp 'main::GeneralSystemStateMsg)
  (if (not (find-package "MAIN"))
    (make-package "MAIN"))
  (shadow 'GeneralSystemStateMsg (find-package "MAIN")))
(unless (find-package "MAIN::GENERALSYSTEMSTATEMSG")
  (make-package "MAIN::GENERALSYSTEMSTATEMSG"))

(in-package "ROS")
;;//! \htmlinclude GeneralSystemStateMsg.msg.html


(defclass main::GeneralSystemStateMsg
  :super ros::object
  :slots (_run_mode_active _standby_mode_active _contamination_warning _contamination_error _reference_contour_status _manipulation_status _safe_cut_off_path _non_safe_cut_off_path _reset_required_cut_off_path _current_monitoring_case_no_table_1 _current_monitoring_case_no_table_2 _current_monitoring_case_no_table_3 _current_monitoring_case_no_table_4 _application_error _device_error ))

(defmethod main::GeneralSystemStateMsg
  (:init
   (&key
    ((:run_mode_active __run_mode_active) nil)
    ((:standby_mode_active __standby_mode_active) nil)
    ((:contamination_warning __contamination_warning) nil)
    ((:contamination_error __contamination_error) nil)
    ((:reference_contour_status __reference_contour_status) nil)
    ((:manipulation_status __manipulation_status) nil)
    ((:safe_cut_off_path __safe_cut_off_path) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:non_safe_cut_off_path __non_safe_cut_off_path) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:reset_required_cut_off_path __reset_required_cut_off_path) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:current_monitoring_case_no_table_1 __current_monitoring_case_no_table_1) 0)
    ((:current_monitoring_case_no_table_2 __current_monitoring_case_no_table_2) 0)
    ((:current_monitoring_case_no_table_3 __current_monitoring_case_no_table_3) 0)
    ((:current_monitoring_case_no_table_4 __current_monitoring_case_no_table_4) 0)
    ((:application_error __application_error) nil)
    ((:device_error __device_error) nil)
    )
   (send-super :init)
   (setq _run_mode_active __run_mode_active)
   (setq _standby_mode_active __standby_mode_active)
   (setq _contamination_warning __contamination_warning)
   (setq _contamination_error __contamination_error)
   (setq _reference_contour_status __reference_contour_status)
   (setq _manipulation_status __manipulation_status)
   (setq _safe_cut_off_path __safe_cut_off_path)
   (setq _non_safe_cut_off_path __non_safe_cut_off_path)
   (setq _reset_required_cut_off_path __reset_required_cut_off_path)
   (setq _current_monitoring_case_no_table_1 (round __current_monitoring_case_no_table_1))
   (setq _current_monitoring_case_no_table_2 (round __current_monitoring_case_no_table_2))
   (setq _current_monitoring_case_no_table_3 (round __current_monitoring_case_no_table_3))
   (setq _current_monitoring_case_no_table_4 (round __current_monitoring_case_no_table_4))
   (setq _application_error __application_error)
   (setq _device_error __device_error)
   self)
  (:run_mode_active
   (&optional __run_mode_active)
   (if __run_mode_active (setq _run_mode_active __run_mode_active)) _run_mode_active)
  (:standby_mode_active
   (&optional __standby_mode_active)
   (if __standby_mode_active (setq _standby_mode_active __standby_mode_active)) _standby_mode_active)
  (:contamination_warning
   (&optional __contamination_warning)
   (if __contamination_warning (setq _contamination_warning __contamination_warning)) _contamination_warning)
  (:contamination_error
   (&optional __contamination_error)
   (if __contamination_error (setq _contamination_error __contamination_error)) _contamination_error)
  (:reference_contour_status
   (&optional __reference_contour_status)
   (if __reference_contour_status (setq _reference_contour_status __reference_contour_status)) _reference_contour_status)
  (:manipulation_status
   (&optional __manipulation_status)
   (if __manipulation_status (setq _manipulation_status __manipulation_status)) _manipulation_status)
  (:safe_cut_off_path
   (&optional __safe_cut_off_path)
   (if __safe_cut_off_path (setq _safe_cut_off_path __safe_cut_off_path)) _safe_cut_off_path)
  (:non_safe_cut_off_path
   (&optional __non_safe_cut_off_path)
   (if __non_safe_cut_off_path (setq _non_safe_cut_off_path __non_safe_cut_off_path)) _non_safe_cut_off_path)
  (:reset_required_cut_off_path
   (&optional __reset_required_cut_off_path)
   (if __reset_required_cut_off_path (setq _reset_required_cut_off_path __reset_required_cut_off_path)) _reset_required_cut_off_path)
  (:current_monitoring_case_no_table_1
   (&optional __current_monitoring_case_no_table_1)
   (if __current_monitoring_case_no_table_1 (setq _current_monitoring_case_no_table_1 __current_monitoring_case_no_table_1)) _current_monitoring_case_no_table_1)
  (:current_monitoring_case_no_table_2
   (&optional __current_monitoring_case_no_table_2)
   (if __current_monitoring_case_no_table_2 (setq _current_monitoring_case_no_table_2 __current_monitoring_case_no_table_2)) _current_monitoring_case_no_table_2)
  (:current_monitoring_case_no_table_3
   (&optional __current_monitoring_case_no_table_3)
   (if __current_monitoring_case_no_table_3 (setq _current_monitoring_case_no_table_3 __current_monitoring_case_no_table_3)) _current_monitoring_case_no_table_3)
  (:current_monitoring_case_no_table_4
   (&optional __current_monitoring_case_no_table_4)
   (if __current_monitoring_case_no_table_4 (setq _current_monitoring_case_no_table_4 __current_monitoring_case_no_table_4)) _current_monitoring_case_no_table_4)
  (:application_error
   (&optional __application_error)
   (if __application_error (setq _application_error __application_error)) _application_error)
  (:device_error
   (&optional __device_error)
   (if __device_error (setq _device_error __device_error)) _device_error)
  (:serialization-length
   ()
   (+
    ;; bool _run_mode_active
    1
    ;; bool _standby_mode_active
    1
    ;; bool _contamination_warning
    1
    ;; bool _contamination_error
    1
    ;; bool _reference_contour_status
    1
    ;; bool _manipulation_status
    1
    ;; bool[] _safe_cut_off_path
    (* 1    (length _safe_cut_off_path)) 4
    ;; bool[] _non_safe_cut_off_path
    (* 1    (length _non_safe_cut_off_path)) 4
    ;; bool[] _reset_required_cut_off_path
    (* 1    (length _reset_required_cut_off_path)) 4
    ;; uint8 _current_monitoring_case_no_table_1
    1
    ;; uint8 _current_monitoring_case_no_table_2
    1
    ;; uint8 _current_monitoring_case_no_table_3
    1
    ;; uint8 _current_monitoring_case_no_table_4
    1
    ;; bool _application_error
    1
    ;; bool _device_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _run_mode_active
       (if _run_mode_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _standby_mode_active
       (if _standby_mode_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _contamination_warning
       (if _contamination_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _contamination_error
       (if _contamination_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _reference_contour_status
       (if _reference_contour_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _manipulation_status
       (if _manipulation_status (write-byte -1 s) (write-byte 0 s))
     ;; bool[] _safe_cut_off_path
     (write-long (length _safe_cut_off_path) s)
     (dotimes (i (length _safe_cut_off_path))
       (if (elt _safe_cut_off_path i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _non_safe_cut_off_path
     (write-long (length _non_safe_cut_off_path) s)
     (dotimes (i (length _non_safe_cut_off_path))
       (if (elt _non_safe_cut_off_path i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _reset_required_cut_off_path
     (write-long (length _reset_required_cut_off_path) s)
     (dotimes (i (length _reset_required_cut_off_path))
       (if (elt _reset_required_cut_off_path i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint8 _current_monitoring_case_no_table_1
       (write-byte _current_monitoring_case_no_table_1 s)
     ;; uint8 _current_monitoring_case_no_table_2
       (write-byte _current_monitoring_case_no_table_2 s)
     ;; uint8 _current_monitoring_case_no_table_3
       (write-byte _current_monitoring_case_no_table_3 s)
     ;; uint8 _current_monitoring_case_no_table_4
       (write-byte _current_monitoring_case_no_table_4 s)
     ;; bool _application_error
       (if _application_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _device_error
       (if _device_error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _run_mode_active
     (setq _run_mode_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _standby_mode_active
     (setq _standby_mode_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _contamination_warning
     (setq _contamination_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _contamination_error
     (setq _contamination_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reference_contour_status
     (setq _reference_contour_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _manipulation_status
     (setq _manipulation_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool[] _safe_cut_off_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _safe_cut_off_path (make-list n))
     (dotimes (i n)
     (setf (elt _safe_cut_off_path i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _non_safe_cut_off_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _non_safe_cut_off_path (make-list n))
     (dotimes (i n)
     (setf (elt _non_safe_cut_off_path i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _reset_required_cut_off_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reset_required_cut_off_path (make-list n))
     (dotimes (i n)
     (setf (elt _reset_required_cut_off_path i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint8 _current_monitoring_case_no_table_1
     (setq _current_monitoring_case_no_table_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_monitoring_case_no_table_2
     (setq _current_monitoring_case_no_table_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_monitoring_case_no_table_3
     (setq _current_monitoring_case_no_table_3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_monitoring_case_no_table_4
     (setq _current_monitoring_case_no_table_4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _application_error
     (setq _application_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _device_error
     (setq _device_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get main::GeneralSystemStateMsg :md5sum-) "fda37ee099981af2c442eec5d758ecbd")
(setf (get main::GeneralSystemStateMsg :datatype-) "main/GeneralSystemStateMsg")
(setf (get main::GeneralSystemStateMsg :definition-)
      "bool run_mode_active
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

")



(provide :main/GeneralSystemStateMsg "fda37ee099981af2c442eec5d758ecbd")


