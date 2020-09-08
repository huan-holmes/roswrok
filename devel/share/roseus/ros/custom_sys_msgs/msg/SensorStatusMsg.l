;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::SensorStatusMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'SensorStatusMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::SENSORSTATUSMSG")
  (make-package "CUSTOM_SYS_MSGS::SENSORSTATUSMSG"))

(in-package "ROS")
;;//! \htmlinclude SensorStatusMsg.msg.html


(defclass custom_sys_msgs::SensorStatusMsg
  :super ros::object
  :slots (_laser _base _sonar _vision _odom _uwb _emergency _charge _power ))

(defmethod custom_sys_msgs::SensorStatusMsg
  (:init
   (&key
    ((:laser __laser) 0)
    ((:base __base) 0)
    ((:sonar __sonar) 0)
    ((:vision __vision) 0)
    ((:odom __odom) 0)
    ((:uwb __uwb) 0)
    ((:emergency __emergency) 0)
    ((:charge __charge) 0)
    ((:power __power) "")
    )
   (send-super :init)
   (setq _laser (round __laser))
   (setq _base (round __base))
   (setq _sonar (round __sonar))
   (setq _vision (round __vision))
   (setq _odom (round __odom))
   (setq _uwb (round __uwb))
   (setq _emergency (round __emergency))
   (setq _charge (round __charge))
   (setq _power (string __power))
   self)
  (:laser
   (&optional __laser)
   (if __laser (setq _laser __laser)) _laser)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:sonar
   (&optional __sonar)
   (if __sonar (setq _sonar __sonar)) _sonar)
  (:vision
   (&optional __vision)
   (if __vision (setq _vision __vision)) _vision)
  (:odom
   (&optional __odom)
   (if __odom (setq _odom __odom)) _odom)
  (:uwb
   (&optional __uwb)
   (if __uwb (setq _uwb __uwb)) _uwb)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:charge
   (&optional __charge)
   (if __charge (setq _charge __charge)) _charge)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; int32 _laser
    4
    ;; int32 _base
    4
    ;; int32 _sonar
    4
    ;; int32 _vision
    4
    ;; int32 _odom
    4
    ;; int32 _uwb
    4
    ;; int32 _emergency
    4
    ;; int32 _charge
    4
    ;; string _power
    4 (length _power)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _laser
       (write-long _laser s)
     ;; int32 _base
       (write-long _base s)
     ;; int32 _sonar
       (write-long _sonar s)
     ;; int32 _vision
       (write-long _vision s)
     ;; int32 _odom
       (write-long _odom s)
     ;; int32 _uwb
       (write-long _uwb s)
     ;; int32 _emergency
       (write-long _emergency s)
     ;; int32 _charge
       (write-long _charge s)
     ;; string _power
       (write-long (length _power) s) (princ _power s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _laser
     (setq _laser (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _base
     (setq _base (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sonar
     (setq _sonar (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vision
     (setq _vision (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _odom
     (setq _odom (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _uwb
     (setq _uwb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _emergency
     (setq _emergency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charge
     (setq _charge (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _power
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _power (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_sys_msgs::SensorStatusMsg :md5sum-) "64dec694a8aac012670ece9363dd4bfd")
(setf (get custom_sys_msgs::SensorStatusMsg :datatype-) "custom_sys_msgs/SensorStatusMsg")
(setf (get custom_sys_msgs::SensorStatusMsg :definition-)
      "int32 laser
int32 base
int32 sonar
int32 vision
int32 odom
int32 uwb
int32 emergency
int32 charge
string power

")



(provide :custom_sys_msgs/SensorStatusMsg "64dec694a8aac012670ece9363dd4bfd")


