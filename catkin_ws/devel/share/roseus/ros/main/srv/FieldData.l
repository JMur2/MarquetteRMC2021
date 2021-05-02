;; Auto-generated. Do not edit!


(when (boundp 'main::FieldData)
  (if (not (find-package "MAIN"))
    (make-package "MAIN"))
  (shadow 'FieldData (find-package "MAIN")))
(unless (find-package "MAIN::FIELDDATA")
  (make-package "MAIN::FIELDDATA"))
(unless (find-package "MAIN::FIELDDATAREQUEST")
  (make-package "MAIN::FIELDDATAREQUEST"))
(unless (find-package "MAIN::FIELDDATARESPONSE")
  (make-package "MAIN::FIELDDATARESPONSE"))

(in-package "ROS")





(defclass main::FieldDataRequest
  :super ros::object
  :slots ())

(defmethod main::FieldDataRequest
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

(defclass main::FieldDataResponse
  :super ros::object
  :slots (_fields _device_name _monitoring_cases ))

(defmethod main::FieldDataResponse
  (:init
   (&key
    ((:fields __fields) (let (r) (dotimes (i 0) (push (instance main::FieldMsg :init) r)) r))
    ((:device_name __device_name) "")
    ((:monitoring_cases __monitoring_cases) (let (r) (dotimes (i 0) (push (instance main::MonitoringCaseMsg :init) r)) r))
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
    ;; main/FieldMsg[] _fields
    (apply #'+ (send-all _fields :serialization-length)) 4
    ;; string _device_name
    4 (length _device_name)
    ;; main/MonitoringCaseMsg[] _monitoring_cases
    (apply #'+ (send-all _monitoring_cases :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; main/FieldMsg[] _fields
     (write-long (length _fields) s)
     (dolist (elem _fields)
       (send elem :serialize s)
       )
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; main/MonitoringCaseMsg[] _monitoring_cases
     (write-long (length _monitoring_cases) s)
     (dolist (elem _monitoring_cases)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; main/FieldMsg[] _fields
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields (let (r) (dotimes (i n) (push (instance main::FieldMsg :init) r)) r))
     (dolist (elem- _fields)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; main/MonitoringCaseMsg[] _monitoring_cases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _monitoring_cases (let (r) (dotimes (i n) (push (instance main::MonitoringCaseMsg :init) r)) r))
     (dolist (elem- _monitoring_cases)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass main::FieldData
  :super ros::object
  :slots ())

(setf (get main::FieldData :md5sum-) "649f88740cfa9dc91cefbf73ed47045b")
(setf (get main::FieldData :datatype-) "main/FieldData")
(setf (get main::FieldData :request) main::FieldDataRequest)
(setf (get main::FieldData :response) main::FieldDataResponse)

(defmethod main::FieldDataRequest
  (:response () (instance main::FieldDataResponse :init)))

(setf (get main::FieldDataRequest :md5sum-) "649f88740cfa9dc91cefbf73ed47045b")
(setf (get main::FieldDataRequest :datatype-) "main/FieldDataRequest")
(setf (get main::FieldDataRequest :definition-)
      "
---

main/FieldMsg[] fields
string device_name
main/MonitoringCaseMsg[] monitoring_cases


================================================================================
MSG: main/FieldMsg
float32[] ranges
float32 start_angle
float32 angular_resolution
bool protective_field

================================================================================
MSG: main/MonitoringCaseMsg
int32 monitoring_case_number
int32[] fields
bool[] fields_valid
")

(setf (get main::FieldDataResponse :md5sum-) "649f88740cfa9dc91cefbf73ed47045b")
(setf (get main::FieldDataResponse :datatype-) "main/FieldDataResponse")
(setf (get main::FieldDataResponse :definition-)
      "
---

main/FieldMsg[] fields
string device_name
main/MonitoringCaseMsg[] monitoring_cases


================================================================================
MSG: main/FieldMsg
float32[] ranges
float32 start_angle
float32 angular_resolution
bool protective_field

================================================================================
MSG: main/MonitoringCaseMsg
int32 monitoring_case_number
int32[] fields
bool[] fields_valid
")



(provide :main/FieldData "649f88740cfa9dc91cefbf73ed47045b")


