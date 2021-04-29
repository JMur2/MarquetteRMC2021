;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::MeasurementDataMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'MeasurementDataMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::MEASUREMENTDATAMSG")
  (make-package "SICK_SAFETYSCANNERS::MEASUREMENTDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude MeasurementDataMsg.msg.html


(defclass sick_safetyscanners::MeasurementDataMsg
  :super ros::object
  :slots (_number_of_beams _scan_points ))

(defmethod sick_safetyscanners::MeasurementDataMsg
  (:init
   (&key
    ((:number_of_beams __number_of_beams) 0)
    ((:scan_points __scan_points) (let (r) (dotimes (i 0) (push (instance sick_safetyscanners::ScanPointMsg :init) r)) r))
    )
   (send-super :init)
   (setq _number_of_beams (round __number_of_beams))
   (setq _scan_points __scan_points)
   self)
  (:number_of_beams
   (&optional __number_of_beams)
   (if __number_of_beams (setq _number_of_beams __number_of_beams)) _number_of_beams)
  (:scan_points
   (&rest __scan_points)
   (if (keywordp (car __scan_points))
       (send* _scan_points __scan_points)
     (progn
       (if __scan_points (setq _scan_points (car __scan_points)))
       _scan_points)))
  (:serialization-length
   ()
   (+
    ;; uint32 _number_of_beams
    4
    ;; sick_safetyscanners/ScanPointMsg[] _scan_points
    (apply #'+ (send-all _scan_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _number_of_beams
       (write-long _number_of_beams s)
     ;; sick_safetyscanners/ScanPointMsg[] _scan_points
     (write-long (length _scan_points) s)
     (dolist (elem _scan_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _number_of_beams
     (setq _number_of_beams (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sick_safetyscanners/ScanPointMsg[] _scan_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scan_points (let (r) (dotimes (i n) (push (instance sick_safetyscanners::ScanPointMsg :init) r)) r))
     (dolist (elem- _scan_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sick_safetyscanners::MeasurementDataMsg :md5sum-) "b7e755cfc4fb85e1a4ded54fd0d31589")
(setf (get sick_safetyscanners::MeasurementDataMsg :datatype-) "sick_safetyscanners/MeasurementDataMsg")
(setf (get sick_safetyscanners::MeasurementDataMsg :definition-)
      "uint32 number_of_beams
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

")



(provide :sick_safetyscanners/MeasurementDataMsg "b7e755cfc4fb85e1a4ded54fd0d31589")


