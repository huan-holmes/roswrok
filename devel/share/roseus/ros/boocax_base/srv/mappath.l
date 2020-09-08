;; Auto-generated. Do not edit!


(when (boundp 'boocax_base::mappath)
  (if (not (find-package "BOOCAX_BASE"))
    (make-package "BOOCAX_BASE"))
  (shadow 'mappath (find-package "BOOCAX_BASE")))
(unless (find-package "BOOCAX_BASE::MAPPATH")
  (make-package "BOOCAX_BASE::MAPPATH"))
(unless (find-package "BOOCAX_BASE::MAPPATHREQUEST")
  (make-package "BOOCAX_BASE::MAPPATHREQUEST"))
(unless (find-package "BOOCAX_BASE::MAPPATHRESPONSE")
  (make-package "BOOCAX_BASE::MAPPATHRESPONSE"))

(in-package "ROS")





(defclass boocax_base::mappathRequest
  :super ros::object
  :slots (_uuid ))

(defmethod boocax_base::mappathRequest
  (:init
   (&key
    ((:uuid __uuid) "")
    )
   (send-super :init)
   (setq _uuid (string __uuid))
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:serialization-length
   ()
   (+
    ;; string _uuid
    4 (length _uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass boocax_base::mappathResponse
  :super ros::object
  :slots (_path ))

(defmethod boocax_base::mappathResponse
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass boocax_base::mappath
  :super ros::object
  :slots ())

(setf (get boocax_base::mappath :md5sum-) "2e5c72b90d775d2232dce461905b4f18")
(setf (get boocax_base::mappath :datatype-) "boocax_base/mappath")
(setf (get boocax_base::mappath :request) boocax_base::mappathRequest)
(setf (get boocax_base::mappath :response) boocax_base::mappathResponse)

(defmethod boocax_base::mappathRequest
  (:response () (instance boocax_base::mappathResponse :init)))

(setf (get boocax_base::mappathRequest :md5sum-) "2e5c72b90d775d2232dce461905b4f18")
(setf (get boocax_base::mappathRequest :datatype-) "boocax_base/mappathRequest")
(setf (get boocax_base::mappathRequest :definition-)
      "string uuid
---
string path
")

(setf (get boocax_base::mappathResponse :md5sum-) "2e5c72b90d775d2232dce461905b4f18")
(setf (get boocax_base::mappathResponse :datatype-) "boocax_base/mappathResponse")
(setf (get boocax_base::mappathResponse :definition-)
      "string uuid
---
string path
")



(provide :boocax_base/mappath "2e5c72b90d775d2232dce461905b4f18")


