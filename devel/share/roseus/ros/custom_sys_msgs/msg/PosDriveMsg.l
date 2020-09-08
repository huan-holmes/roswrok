;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::PosDriveMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'PosDriveMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::POSDRIVEMSG")
  (make-package "CUSTOM_SYS_MSGS::POSDRIVEMSG"))

(in-package "ROS")
;;//! \htmlinclude PosDriveMsg.msg.html


(defclass custom_sys_msgs::PosDriveMsg
  :super ros::object
  :slots (_woke_mode _vel _dt ))

(defmethod custom_sys_msgs::PosDriveMsg
  (:init
   (&key
    ((:woke_mode __woke_mode) 0)
    ((:vel __vel) 0.0)
    ((:dt __dt) 0.0)
    )
   (send-super :init)
   (setq _woke_mode (round __woke_mode))
   (setq _vel (float __vel))
   (setq _dt (float __dt))
   self)
  (:woke_mode
   (&optional __woke_mode)
   (if __woke_mode (setq _woke_mode __woke_mode)) _woke_mode)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:serialization-length
   ()
   (+
    ;; int8 _woke_mode
    1
    ;; float32 _vel
    4
    ;; float32 _dt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _woke_mode
       (write-byte _woke_mode s)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _woke_mode
     (setq _woke_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _woke_mode 127) (setq _woke_mode (- _woke_mode 256)))
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get custom_sys_msgs::PosDriveMsg :md5sum-) "7bb6b3d9b61499e839f2b3aff8cedd55")
(setf (get custom_sys_msgs::PosDriveMsg :datatype-) "custom_sys_msgs/PosDriveMsg")
(setf (get custom_sys_msgs::PosDriveMsg :definition-)
      "int8 woke_mode
float32 vel
float32 dt

")



(provide :custom_sys_msgs/PosDriveMsg "7bb6b3d9b61499e839f2b3aff8cedd55")


