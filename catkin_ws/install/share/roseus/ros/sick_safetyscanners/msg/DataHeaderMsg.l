;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::DataHeaderMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'DataHeaderMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::DATAHEADERMSG")
  (make-package "SICK_SAFETYSCANNERS::DATAHEADERMSG"))

(in-package "ROS")
;;//! \htmlinclude DataHeaderMsg.msg.html


(defclass sick_safetyscanners::DataHeaderMsg
  :super ros::object
  :slots (_version_version _version_major_version _version_minor_version _version_release _serial_number_of_device _serial_number_of_channel_plug _channel_number _sequence_number _scan_number _timestamp_date _timestamp_time ))

(defmethod sick_safetyscanners::DataHeaderMsg
  (:init
   (&key
    ((:version_version __version_version) 0)
    ((:version_major_version __version_major_version) 0)
    ((:version_minor_version __version_minor_version) 0)
    ((:version_release __version_release) 0)
    ((:serial_number_of_device __serial_number_of_device) 0)
    ((:serial_number_of_channel_plug __serial_number_of_channel_plug) 0)
    ((:channel_number __channel_number) 0)
    ((:sequence_number __sequence_number) 0)
    ((:scan_number __scan_number) 0)
    ((:timestamp_date __timestamp_date) 0)
    ((:timestamp_time __timestamp_time) 0)
    )
   (send-super :init)
   (setq _version_version (round __version_version))
   (setq _version_major_version (round __version_major_version))
   (setq _version_minor_version (round __version_minor_version))
   (setq _version_release (round __version_release))
   (setq _serial_number_of_device (round __serial_number_of_device))
   (setq _serial_number_of_channel_plug (round __serial_number_of_channel_plug))
   (setq _channel_number (round __channel_number))
   (setq _sequence_number (round __sequence_number))
   (setq _scan_number (round __scan_number))
   (setq _timestamp_date (round __timestamp_date))
   (setq _timestamp_time (round __timestamp_time))
   self)
  (:version_version
   (&optional __version_version)
   (if __version_version (setq _version_version __version_version)) _version_version)
  (:version_major_version
   (&optional __version_major_version)
   (if __version_major_version (setq _version_major_version __version_major_version)) _version_major_version)
  (:version_minor_version
   (&optional __version_minor_version)
   (if __version_minor_version (setq _version_minor_version __version_minor_version)) _version_minor_version)
  (:version_release
   (&optional __version_release)
   (if __version_release (setq _version_release __version_release)) _version_release)
  (:serial_number_of_device
   (&optional __serial_number_of_device)
   (if __serial_number_of_device (setq _serial_number_of_device __serial_number_of_device)) _serial_number_of_device)
  (:serial_number_of_channel_plug
   (&optional __serial_number_of_channel_plug)
   (if __serial_number_of_channel_plug (setq _serial_number_of_channel_plug __serial_number_of_channel_plug)) _serial_number_of_channel_plug)
  (:channel_number
   (&optional __channel_number)
   (if __channel_number (setq _channel_number __channel_number)) _channel_number)
  (:sequence_number
   (&optional __sequence_number)
   (if __sequence_number (setq _sequence_number __sequence_number)) _sequence_number)
  (:scan_number
   (&optional __scan_number)
   (if __scan_number (setq _scan_number __scan_number)) _scan_number)
  (:timestamp_date
   (&optional __timestamp_date)
   (if __timestamp_date (setq _timestamp_date __timestamp_date)) _timestamp_date)
  (:timestamp_time
   (&optional __timestamp_time)
   (if __timestamp_time (setq _timestamp_time __timestamp_time)) _timestamp_time)
  (:serialization-length
   ()
   (+
    ;; uint8 _version_version
    1
    ;; uint8 _version_major_version
    1
    ;; uint8 _version_minor_version
    1
    ;; uint8 _version_release
    1
    ;; uint32 _serial_number_of_device
    4
    ;; uint32 _serial_number_of_channel_plug
    4
    ;; uint8 _channel_number
    1
    ;; uint32 _sequence_number
    4
    ;; uint32 _scan_number
    4
    ;; uint16 _timestamp_date
    2
    ;; uint32 _timestamp_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _version_version
       (write-byte _version_version s)
     ;; uint8 _version_major_version
       (write-byte _version_major_version s)
     ;; uint8 _version_minor_version
       (write-byte _version_minor_version s)
     ;; uint8 _version_release
       (write-byte _version_release s)
     ;; uint32 _serial_number_of_device
       (write-long _serial_number_of_device s)
     ;; uint32 _serial_number_of_channel_plug
       (write-long _serial_number_of_channel_plug s)
     ;; uint8 _channel_number
       (write-byte _channel_number s)
     ;; uint32 _sequence_number
       (write-long _sequence_number s)
     ;; uint32 _scan_number
       (write-long _scan_number s)
     ;; uint16 _timestamp_date
       (write-word _timestamp_date s)
     ;; uint32 _timestamp_time
       (write-long _timestamp_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _version_version
     (setq _version_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version_major_version
     (setq _version_major_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version_minor_version
     (setq _version_minor_version (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version_release
     (setq _version_release (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _serial_number_of_device
     (setq _serial_number_of_device (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _serial_number_of_channel_plug
     (setq _serial_number_of_channel_plug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _channel_number
     (setq _channel_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _sequence_number
     (setq _sequence_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _scan_number
     (setq _scan_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _timestamp_date
     (setq _timestamp_date (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _timestamp_time
     (setq _timestamp_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sick_safetyscanners::DataHeaderMsg :md5sum-) "639f9d3c49bcb2f17e3c86d83f9746c8")
(setf (get sick_safetyscanners::DataHeaderMsg :datatype-) "sick_safetyscanners/DataHeaderMsg")
(setf (get sick_safetyscanners::DataHeaderMsg :definition-)
      "uint8 version_version
uint8 version_major_version
uint8 version_minor_version
uint8 version_release

uint32 serial_number_of_device
uint32 serial_number_of_channel_plug
uint8 channel_number

uint32 sequence_number
uint32 scan_number

uint16 timestamp_date
uint32 timestamp_time

")



(provide :sick_safetyscanners/DataHeaderMsg "639f9d3c49bcb2f17e3c86d83f9746c8")


