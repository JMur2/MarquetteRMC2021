;; Auto-generated. Do not edit!


(when (boundp 'main::MeasurementDataMsg)
  (if (not (find-package "MAIN"))
    (make-package "MAIN"))
  (shadow 'MeasurementDataMsg (find-package "MAIN")))
(unless (find-package "MAIN::MEASUREMENTDATAMSG")
  (make-package "MAIN::MEASUREMENTDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude MeasurementDataMsg.msg.html


(defclass main::MeasurementDataMsg
  :super ros::object
  :slots (_number_of_beams _scan_points ))

(defmethod main::MeasurementDataMsg
  (:init
   (&key
    ((:number_of_beams __number_of_beams) 0)
    ((:scan_points __scan_points) (let (r) (dotimes (i 0) (push (instance main::ScanPointMsg :init) r)) r))
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
    ;; main/ScanPointMsg[] _scan_points
    (apply #'+ (send-all _scan_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _number_of_beams
       (write-long _number_of_beams s)
     ;; main/ScanPointMsg[] _scan_points
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
   ;; main/ScanPointMsg[] _scan_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scan_points (let (r) (dotimes (i n) (push (instance main::ScanPointMsg :init) r)) r))
     (dolist (elem- _scan_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get main::MeasurementDataMsg :md5sum-) "b7e755cfc4fb85e1a4ded54fd0d31589")
(setf (get main::MeasurementDataMsg :datatype-) "main/MeasurementDataMsg")
(setf (get main::MeasurementDataMsg :definition-)
      "uint32 number_of_beams
ScanPointMsg[] scan_points


================================================================================
MSG: main/ScanPointMsg
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



(provide :main/MeasurementDataMsg "b7e755cfc4fb85e1a4ded54fd0d31589")


