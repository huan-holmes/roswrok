;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::CrossingNodeMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'CrossingNodeMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::CROSSINGNODEMSG")
  (make-package "CUSTOM_SYS_MSGS::CROSSINGNODEMSG"))

(in-package "ROS")
;;//! \htmlinclude CrossingNodeMsg.msg.html


(defclass custom_sys_msgs::CrossingNodeMsg
  :super ros::object
  :slots (_node_acquired _node_released _node_fobbidden ))

(defmethod custom_sys_msgs::CrossingNodeMsg
  (:init
   (&key
    ((:node_acquired __node_acquired) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_released __node_released) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_fobbidden __node_fobbidden) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _node_acquired __node_acquired)
   (setq _node_released __node_released)
   (setq _node_fobbidden __node_fobbidden)
   self)
  (:node_acquired
   (&optional __node_acquired)
   (if __node_acquired (setq _node_acquired __node_acquired)) _node_acquired)
  (:node_released
   (&optional __node_released)
   (if __node_released (setq _node_released __node_released)) _node_released)
  (:node_fobbidden
   (&optional __node_fobbidden)
   (if __node_fobbidden (setq _node_fobbidden __node_fobbidden)) _node_fobbidden)
  (:serialization-length
   ()
   (+
    ;; int32[] _node_acquired
    (* 4    (length _node_acquired)) 4
    ;; int32[] _node_released
    (* 4    (length _node_released)) 4
    ;; int32[] _node_fobbidden
    (* 4    (length _node_fobbidden)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _node_acquired
     (write-long (length _node_acquired) s)
     (dotimes (i (length _node_acquired))
       (write-long (elt _node_acquired i) s)
       )
     ;; int32[] _node_released
     (write-long (length _node_released) s)
     (dotimes (i (length _node_released))
       (write-long (elt _node_released i) s)
       )
     ;; int32[] _node_fobbidden
     (write-long (length _node_fobbidden) s)
     (dotimes (i (length _node_fobbidden))
       (write-long (elt _node_fobbidden i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _node_acquired
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_acquired (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_acquired i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _node_released
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_released (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_released i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _node_fobbidden
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_fobbidden (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_fobbidden i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get custom_sys_msgs::CrossingNodeMsg :md5sum-) "9dc9fa7b6fdf580a4e6988a6147a64b6")
(setf (get custom_sys_msgs::CrossingNodeMsg :datatype-) "custom_sys_msgs/CrossingNodeMsg")
(setf (get custom_sys_msgs::CrossingNodeMsg :definition-)
      "int32[] node_acquired
int32[] node_released
int32[] node_fobbidden
")



(provide :custom_sys_msgs/CrossingNodeMsg "9dc9fa7b6fdf580a4e6988a6147a64b6")


