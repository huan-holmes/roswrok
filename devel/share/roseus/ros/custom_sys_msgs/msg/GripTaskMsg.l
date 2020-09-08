;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::GripTaskMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'GripTaskMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::GRIPTASKMSG")
  (make-package "CUSTOM_SYS_MSGS::GRIPTASKMSG"))

(in-package "ROS")
;;//! \htmlinclude GripTaskMsg.msg.html


(defclass custom_sys_msgs::GripTaskMsg
  :super ros::object
  :slots (_src_dir _src_height _dst_dir _dst_height _final_homing ))

(defmethod custom_sys_msgs::GripTaskMsg
  (:init
   (&key
    ((:src_dir __src_dir) 0)
    ((:src_height __src_height) 0.0)
    ((:dst_dir __dst_dir) 0)
    ((:dst_height __dst_height) 0.0)
    ((:final_homing __final_homing) 0)
    )
   (send-super :init)
   (setq _src_dir (round __src_dir))
   (setq _src_height (float __src_height))
   (setq _dst_dir (round __dst_dir))
   (setq _dst_height (float __dst_height))
   (setq _final_homing (round __final_homing))
   self)
  (:src_dir
   (&optional __src_dir)
   (if __src_dir (setq _src_dir __src_dir)) _src_dir)
  (:src_height
   (&optional __src_height)
   (if __src_height (setq _src_height __src_height)) _src_height)
  (:dst_dir
   (&optional __dst_dir)
   (if __dst_dir (setq _dst_dir __dst_dir)) _dst_dir)
  (:dst_height
   (&optional __dst_height)
   (if __dst_height (setq _dst_height __dst_height)) _dst_height)
  (:final_homing
   (&optional __final_homing)
   (if __final_homing (setq _final_homing __final_homing)) _final_homing)
  (:serialization-length
   ()
   (+
    ;; int8 _src_dir
    1
    ;; float32 _src_height
    4
    ;; int8 _dst_dir
    1
    ;; float32 _dst_height
    4
    ;; int8 _final_homing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _src_dir
       (write-byte _src_dir s)
     ;; float32 _src_height
       (sys::poke _src_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _dst_dir
       (write-byte _dst_dir s)
     ;; float32 _dst_height
       (sys::poke _dst_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _final_homing
       (write-byte _final_homing s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _src_dir
     (setq _src_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _src_dir 127) (setq _src_dir (- _src_dir 256)))
   ;; float32 _src_height
     (setq _src_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _dst_dir
     (setq _dst_dir (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dst_dir 127) (setq _dst_dir (- _dst_dir 256)))
   ;; float32 _dst_height
     (setq _dst_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _final_homing
     (setq _final_homing (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _final_homing 127) (setq _final_homing (- _final_homing 256)))
   ;;
   self)
  )

(setf (get custom_sys_msgs::GripTaskMsg :md5sum-) "edcdb33fee8dd1cca389a115bb5f85d4")
(setf (get custom_sys_msgs::GripTaskMsg :datatype-) "custom_sys_msgs/GripTaskMsg")
(setf (get custom_sys_msgs::GripTaskMsg :definition-)
      "int8 src_dir
float32 src_height
int8 dst_dir
float32 dst_height
int8 final_homing

")



(provide :custom_sys_msgs/GripTaskMsg "edcdb33fee8dd1cca389a115bb5f85d4")


