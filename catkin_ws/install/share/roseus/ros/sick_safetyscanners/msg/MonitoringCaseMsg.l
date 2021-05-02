;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::MonitoringCaseMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'MonitoringCaseMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::MONITORINGCASEMSG")
  (make-package "SICK_SAFETYSCANNERS::MONITORINGCASEMSG"))

(in-package "ROS")
;;//! \htmlinclude MonitoringCaseMsg.msg.html


(defclass sick_safetyscanners::MonitoringCaseMsg
  :super ros::object
  :slots (_monitoring_case_number _fields _fields_valid ))

(defmethod sick_safetyscanners::MonitoringCaseMsg
  (:init
   (&key
    ((:monitoring_case_number __monitoring_case_number) 0)
    ((:fields __fields) (make-array 0 :initial-element 0 :element-type :integer))
    ((:fields_valid __fields_valid) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _monitoring_case_number (round __monitoring_case_number))
   (setq _fields __fields)
   (setq _fields_valid __fields_valid)
   self)
  (:monitoring_case_number
   (&optional __monitoring_case_number)
   (if __monitoring_case_number (setq _monitoring_case_number __monitoring_case_number)) _monitoring_case_number)
  (:fields
   (&optional __fields)
   (if __fields (setq _fields __fields)) _fields)
  (:fields_valid
   (&optional __fields_valid)
   (if __fields_valid (setq _fields_valid __fields_valid)) _fields_valid)
  (:serialization-length
   ()
   (+
    ;; int32 _monitoring_case_number
    4
    ;; int32[] _fields
    (* 4    (length _fields)) 4
    ;; bool[] _fields_valid
    (* 1    (length _fields_valid)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _monitoring_case_number
       (write-long _monitoring_case_number s)
     ;; int32[] _fields
     (write-long (length _fields) s)
     (dotimes (i (length _fields))
       (write-long (elt _fields i) s)
       )
     ;; bool[] _fields_valid
     (write-long (length _fields_valid) s)
     (dotimes (i (length _fields_valid))
       (if (elt _fields_valid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _monitoring_case_number
     (setq _monitoring_case_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _fields
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _fields i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _fields_valid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields_valid (make-list n))
     (dotimes (i n)
     (setf (elt _fields_valid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get sick_safetyscanners::MonitoringCaseMsg :md5sum-) "df965c1c062890e5bdd7ee897e4f2d65")
(setf (get sick_safetyscanners::MonitoringCaseMsg :datatype-) "sick_safetyscanners/MonitoringCaseMsg")
(setf (get sick_safetyscanners::MonitoringCaseMsg :definition-)
      "int32 monitoring_case_number
int32[] fields
bool[] fields_valid

")



(provide :sick_safetyscanners/MonitoringCaseMsg "df965c1c062890e5bdd7ee897e4f2d65")


