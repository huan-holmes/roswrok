;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::PositionVerificationInfo)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'PositionVerificationInfo (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::POSITIONVERIFICATIONINFO")
  (make-package "CUSTOM_SYS_MSGS::POSITIONVERIFICATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude PositionVerificationInfo.msg.html


(defclass custom_sys_msgs::PositionVerificationInfo
  :super ros::object
  :slots (_loc_status _suggest_max_vx _suggest_max_vtheta ))

(defmethod custom_sys_msgs::PositionVerificationInfo
  (:init
   (&key
    ((:loc_status __loc_status) 0)
    ((:suggest_max_vx __suggest_max_vx) 0.0)
    ((:suggest_max_vtheta __suggest_max_vtheta) 0.0)
    )
   (send-super :init)
   (setq _loc_status (round __loc_status))
   (setq _suggest_max_vx (float __suggest_max_vx))
   (setq _suggest_max_vtheta (float __suggest_max_vtheta))
   self)
  (:loc_status
   (&optional __loc_status)
   (if __loc_status (setq _loc_status __loc_status)) _loc_status)
  (:suggest_max_vx
   (&optional __suggest_max_vx)
   (if __suggest_max_vx (setq _suggest_max_vx __suggest_max_vx)) _suggest_max_vx)
  (:suggest_max_vtheta
   (&optional __suggest_max_vtheta)
   (if __suggest_max_vtheta (setq _suggest_max_vtheta __suggest_max_vtheta)) _suggest_max_vtheta)
  (:serialization-length
   ()
   (+
    ;; int32 _loc_status
    4
    ;; float64 _suggest_max_vx
    8
    ;; float64 _suggest_max_vtheta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _loc_status
       (write-long _loc_status s)
     ;; float64 _suggest_max_vx
       (sys::poke _suggest_max_vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _suggest_max_vtheta
       (sys::poke _suggest_max_vtheta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _loc_status
     (setq _loc_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _suggest_max_vx
     (setq _suggest_max_vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _suggest_max_vtheta
     (setq _suggest_max_vtheta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_sys_msgs::PositionVerificationInfo :md5sum-) "7ce66b05d8b3d1f15000aa53d885fc04")
(setf (get custom_sys_msgs::PositionVerificationInfo :datatype-) "custom_sys_msgs/PositionVerificationInfo")
(setf (get custom_sys_msgs::PositionVerificationInfo :definition-)
      "int32 loc_status
float64 suggest_max_vx
float64 suggest_max_vtheta

")



(provide :custom_sys_msgs/PositionVerificationInfo "7ce66b05d8b3d1f15000aa53d885fc04")


