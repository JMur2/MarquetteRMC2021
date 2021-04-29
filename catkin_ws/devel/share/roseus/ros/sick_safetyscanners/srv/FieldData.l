;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::FieldData)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'FieldData (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::FIELDDATA")
  (make-package "SICK_SAFETYSCANNERS::FIELDDATA"))
(unless (find-package "SICK_SAFETYSCANNERS::FIELDDATAREQUEST")
  (make-package "SICK_SAFETYSCANNERS::FIELDDATAREQUEST"))
(unless (find-package "SICK_SAFETYSCANNERS::FIELDDATARESPONSE")
  (make-package "SICK_SAFETYSCANNERS::FIELDDATARESPONSE"))

(in-package "ROS")





(defclass sick_safetyscanners::FieldDataRequest
  :super ros::object
  :slots ())

(defmethod sick_safetyscanners::FieldDataRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sick_safetyscanners::FieldDataResponse
  :super ros::object
  :slots (_fields _device_name _monitoring_cases ))

(defmethod sick_safetyscanners::FieldDataResponse
  (:init
   (&key
    ((:fields __fields) (let (r) (dotimes (i 0) (push (instance sick_safetyscanners::FieldMsg :init) r)) r))
    ((:device_name __device_name) "")
    ((:monitoring_cases __monitoring_cases) (let (r) (dotimes (i 0) (push (instance sick_safetyscanners::MonitoringCaseMsg :init) r)) r))
    )
   (send-super :init)
   (setq _fields __fields)
   (setq _device_name (string __device_name))
   (setq _monitoring_cases __monitoring_cases)
   self)
  (:fields
   (&rest __fields)
   (if (keywordp (car __fields))
       (send* _fields __fields)
     (progn
       (if __fields (setq _fields (car __fields)))
       _fields)))
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:monitoring_cases
   (&rest __monitoring_cases)
   (if (keywordp (car __monitoring_cases))
       (send* _monitoring_cases __monitoring_cases)
     (progn
       (if __monitoring_cases (setq _monitoring_cases (car __monitoring_cases)))
       _monitoring_cases)))
  (:serialization-length
   ()
   (+
    ;; sick_safetyscanners/FieldMsg[] _fields
    (apply #'+ (send-all _fields :serialization-length)) 4
    ;; string _device_name
    4 (length _device_name)
    ;; sick_safetyscanners/MonitoringCaseMsg[] _monitoring_cases
    (apply #'+ (send-all _monitoring_cases :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sick_safetyscanners/FieldMsg[] _fields
     (write-long (length _fields) s)
     (dolist (elem _fields)
       (send elem :serialize s)
       )
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; sick_safetyscanners/MonitoringCaseMsg[] _monitoring_cases
     (write-long (length _monitoring_cases) s)
     (dolist (elem _monitoring_cases)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sick_safetyscanners/FieldMsg[] _fields
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields (let (r) (dotimes (i n) (push (instance sick_safetyscanners::FieldMsg :init) r)) r))
     (dolist (elem- _fields)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sick_safetyscanners/MonitoringCaseMsg[] _monitoring_cases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _monitoring_cases (let (r) (dotimes (i n) (push (instance sick_safetyscanners::MonitoringCaseMsg :init) r)) r))
     (dolist (elem- _monitoring_cases)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass sick_safetyscanners::FieldData
  :super ros::object
  :slots ())

(setf (get sick_safetyscanners::FieldData :md5sum-) "649f88740cfa9dc91cefbf73ed47045b")
(setf (get sick_safetyscanners::FieldData :datatype-) "sick_safetyscanners/FieldData")
(setf (get sick_safetyscanners::FieldData :request) sick_safetyscanners::FieldDataRequest)
(setf (get sick_safetyscanners::FieldData :response) sick_safetyscanners::FieldDataResponse)

(defmethod sick_safetyscanners::FieldDataRequest
  (:response () (instance sick_safetyscanners::FieldDataResponse :init)))

(setf (get sick_safetyscanners::FieldDataRequest :md5sum-) "649f88740cfa9dc91cefbf73ed47045b")
(setf (get sick_safetyscanners::FieldDataRequest :datatype-) "sick_safetyscanners/FieldDataRequest")
(setf (get sick_safetyscanners::FieldDataRequest :definition-)
      "
---

sick_safetyscanners/FieldMsg[] fields
string device_name
sick_safetyscanners/MonitoringCaseMsg[] monitoring_cases


================================================================================
MSG: sick_safetyscanners/FieldMsg
float32[] ranges
float32 start_angle
float32 angular_resolution
bool protective_field

================================================================================
MSG: sick_safetyscanners/MonitoringCaseMsg
int32 monitoring_case_number
int32[] fields
bool[] fields_valid
")

(setf (get sick_safetyscanners::FieldDataResponse :md5sum-) "649f88740cfa9dc91cefbf73ed47045b")
(setf (get sick_safetyscanners::FieldDataResponse :datatype-) "sick_safetyscanners/FieldDataResponse")
(setf (get sick_safetyscanners::FieldDataResponse :definition-)
      "
---

sick_safetyscanners/FieldMsg[] fields
string device_name
sick_safetyscanners/MonitoringCaseMsg[] monitoring_cases


================================================================================
MSG: sick_safetyscanners/FieldMsg
float32[] ranges
float32 start_angle
float32 angular_resolution
bool protective_field

================================================================================
MSG: sick_safetyscanners/MonitoringCaseMsg
int32 monitoring_case_number
int32[] fields
bool[] fields_valid
")



(provide :sick_safetyscanners/FieldData "649f88740cfa9dc91cefbf73ed47045b")


