;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::OutputPathsMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'OutputPathsMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::OUTPUTPATHSMSG")
  (make-package "SICK_SAFETYSCANNERS::OUTPUTPATHSMSG"))

(in-package "ROS")
;;//! \htmlinclude OutputPathsMsg.msg.html


(defclass sick_safetyscanners::OutputPathsMsg
  :super ros::object
  :slots (_status _is_safe _is_valid _active_monitoring_case ))

(defmethod sick_safetyscanners::OutputPathsMsg
  (:init
   (&key
    ((:status __status) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:is_safe __is_safe) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:is_valid __is_valid) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:active_monitoring_case __active_monitoring_case) 0)
    )
   (send-super :init)
   (setq _status __status)
   (setq _is_safe __is_safe)
   (setq _is_valid __is_valid)
   (setq _active_monitoring_case (round __active_monitoring_case))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:is_safe
   (&optional __is_safe)
   (if __is_safe (setq _is_safe __is_safe)) _is_safe)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:active_monitoring_case
   (&optional __active_monitoring_case)
   (if __active_monitoring_case (setq _active_monitoring_case __active_monitoring_case)) _active_monitoring_case)
  (:serialization-length
   ()
   (+
    ;; bool[] _status
    (* 1    (length _status)) 4
    ;; bool[] _is_safe
    (* 1    (length _is_safe)) 4
    ;; bool[] _is_valid
    (* 1    (length _is_valid)) 4
    ;; int32 _active_monitoring_case
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _status
     (write-long (length _status) s)
     (dotimes (i (length _status))
       (if (elt _status i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _is_safe
     (write-long (length _is_safe) s)
     (dotimes (i (length _is_safe))
       (if (elt _is_safe i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _is_valid
     (write-long (length _is_valid) s)
     (dotimes (i (length _is_valid))
       (if (elt _is_valid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32 _active_monitoring_case
       (write-long _active_monitoring_case s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (make-list n))
     (dotimes (i n)
     (setf (elt _status i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _is_safe
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_safe (make-list n))
     (dotimes (i n)
     (setf (elt _is_safe i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _is_valid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _is_valid (make-list n))
     (dotimes (i n)
     (setf (elt _is_valid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32 _active_monitoring_case
     (setq _active_monitoring_case (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sick_safetyscanners::OutputPathsMsg :md5sum-) "10ce675a2a87077eb6fb8c168c348972")
(setf (get sick_safetyscanners::OutputPathsMsg :datatype-) "sick_safetyscanners/OutputPathsMsg")
(setf (get sick_safetyscanners::OutputPathsMsg :definition-)
      "bool[] status
bool[] is_safe
bool[] is_valid
int32 active_monitoring_case

")



(provide :sick_safetyscanners/OutputPathsMsg "10ce675a2a87077eb6fb8c168c348972")


