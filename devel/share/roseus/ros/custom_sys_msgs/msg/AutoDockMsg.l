;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AutoDockMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AutoDockMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AUTODOCKMSG")
  (make-package "CUSTOM_SYS_MSGS::AUTODOCKMSG"))

(in-package "ROS")
;;//! \htmlinclude AutoDockMsg.msg.html


(defclass custom_sys_msgs::AutoDockMsg
  :super ros::object
  :slots (_direction _dist_to_stop _final_dist ))

(defmethod custom_sys_msgs::AutoDockMsg
  (:init
   (&key
    ((:direction __direction) 0)
    ((:dist_to_stop __dist_to_stop) 0.0)
    ((:final_dist __final_dist) 0.0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   (setq _dist_to_stop (float __dist_to_stop))
   (setq _final_dist (float __final_dist))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:dist_to_stop
   (&optional __dist_to_stop)
   (if __dist_to_stop (setq _dist_to_stop __dist_to_stop)) _dist_to_stop)
  (:final_dist
   (&optional __final_dist)
   (if __final_dist (setq _final_dist __final_dist)) _final_dist)
  (:serialization-length
   ()
   (+
    ;; int32 _direction
    4
    ;; float64 _dist_to_stop
    8
    ;; float64 _final_dist
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _direction
       (write-long _direction s)
     ;; float64 _dist_to_stop
       (sys::poke _dist_to_stop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_dist
       (sys::poke _final_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _dist_to_stop
     (setq _dist_to_stop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_dist
     (setq _final_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AutoDockMsg :md5sum-) "4151794017432cf3ab9616a1c6f5ab81")
(setf (get custom_sys_msgs::AutoDockMsg :datatype-) "custom_sys_msgs/AutoDockMsg")
(setf (get custom_sys_msgs::AutoDockMsg :definition-)
      "int32 direction
float64 dist_to_stop
float64 final_dist

")



(provide :custom_sys_msgs/AutoDockMsg "4151794017432cf3ab9616a1c6f5ab81")


