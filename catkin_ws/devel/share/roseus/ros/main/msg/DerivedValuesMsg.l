;; Auto-generated. Do not edit!


(when (boundp 'main::DerivedValuesMsg)
  (if (not (find-package "MAIN"))
    (make-package "MAIN"))
  (shadow 'DerivedValuesMsg (find-package "MAIN")))
(unless (find-package "MAIN::DERIVEDVALUESMSG")
  (make-package "MAIN::DERIVEDVALUESMSG"))

(in-package "ROS")
;;//! \htmlinclude DerivedValuesMsg.msg.html


(defclass main::DerivedValuesMsg
  :super ros::object
  :slots (_multiplication_factor _number_of_beams _scan_time _start_angle _angular_beam_resolution _interbeam_period ))

(defmethod main::DerivedValuesMsg
  (:init
   (&key
    ((:multiplication_factor __multiplication_factor) 0)
    ((:number_of_beams __number_of_beams) 0)
    ((:scan_time __scan_time) 0)
    ((:start_angle __start_angle) 0.0)
    ((:angular_beam_resolution __angular_beam_resolution) 0.0)
    ((:interbeam_period __interbeam_period) 0)
    )
   (send-super :init)
   (setq _multiplication_factor (round __multiplication_factor))
   (setq _number_of_beams (round __number_of_beams))
   (setq _scan_time (round __scan_time))
   (setq _start_angle (float __start_angle))
   (setq _angular_beam_resolution (float __angular_beam_resolution))
   (setq _interbeam_period (round __interbeam_period))
   self)
  (:multiplication_factor
   (&optional __multiplication_factor)
   (if __multiplication_factor (setq _multiplication_factor __multiplication_factor)) _multiplication_factor)
  (:number_of_beams
   (&optional __number_of_beams)
   (if __number_of_beams (setq _number_of_beams __number_of_beams)) _number_of_beams)
  (:scan_time
   (&optional __scan_time)
   (if __scan_time (setq _scan_time __scan_time)) _scan_time)
  (:start_angle
   (&optional __start_angle)
   (if __start_angle (setq _start_angle __start_angle)) _start_angle)
  (:angular_beam_resolution
   (&optional __angular_beam_resolution)
   (if __angular_beam_resolution (setq _angular_beam_resolution __angular_beam_resolution)) _angular_beam_resolution)
  (:interbeam_period
   (&optional __interbeam_period)
   (if __interbeam_period (setq _interbeam_period __interbeam_period)) _interbeam_period)
  (:serialization-length
   ()
   (+
    ;; uint16 _multiplication_factor
    2
    ;; uint16 _number_of_beams
    2
    ;; uint16 _scan_time
    2
    ;; float32 _start_angle
    4
    ;; float32 _angular_beam_resolution
    4
    ;; uint32 _interbeam_period
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _multiplication_factor
       (write-word _multiplication_factor s)
     ;; uint16 _number_of_beams
       (write-word _number_of_beams s)
     ;; uint16 _scan_time
       (write-word _scan_time s)
     ;; float32 _start_angle
       (sys::poke _start_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_beam_resolution
       (sys::poke _angular_beam_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _interbeam_period
       (write-long _interbeam_period s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _multiplication_factor
     (setq _multiplication_factor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _number_of_beams
     (setq _number_of_beams (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _scan_time
     (setq _scan_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _start_angle
     (setq _start_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_beam_resolution
     (setq _angular_beam_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _interbeam_period
     (setq _interbeam_period (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main::DerivedValuesMsg :md5sum-) "04584ac5d46a750ab91f3b01bac703dd")
(setf (get main::DerivedValuesMsg :datatype-) "main/DerivedValuesMsg")
(setf (get main::DerivedValuesMsg :definition-)
      "uint16 multiplication_factor
uint16 number_of_beams
uint16 scan_time
float32 start_angle
float32 angular_beam_resolution
uint32 interbeam_period

")



(provide :main/DerivedValuesMsg "04584ac5d46a750ab91f3b01bac703dd")


