;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::IntrusionDatumMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'IntrusionDatumMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::INTRUSIONDATUMMSG")
  (make-package "SICK_SAFETYSCANNERS::INTRUSIONDATUMMSG"))

(in-package "ROS")
;;//! \htmlinclude IntrusionDatumMsg.msg.html


(defclass sick_safetyscanners::IntrusionDatumMsg
  :super ros::object
  :slots (_size _flags ))

(defmethod sick_safetyscanners::IntrusionDatumMsg
  (:init
   (&key
    ((:size __size) 0)
    ((:flags __flags) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _flags __flags)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:serialization-length
   ()
   (+
    ;; uint32 _size
    4
    ;; bool[] _flags
    (* 1    (length _flags)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _size
       (write-long _size s)
     ;; bool[] _flags
     (write-long (length _flags) s)
     (dotimes (i (length _flags))
       (if (elt _flags i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool[] _flags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flags (make-list n))
     (dotimes (i n)
     (setf (elt _flags i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get sick_safetyscanners::IntrusionDatumMsg :md5sum-) "2c139fe38426240c2edfc9827f2858f8")
(setf (get sick_safetyscanners::IntrusionDatumMsg :datatype-) "sick_safetyscanners/IntrusionDatumMsg")
(setf (get sick_safetyscanners::IntrusionDatumMsg :definition-)
      "uint32 size
bool[] flags

")



(provide :sick_safetyscanners/IntrusionDatumMsg "2c139fe38426240c2edfc9827f2858f8")


