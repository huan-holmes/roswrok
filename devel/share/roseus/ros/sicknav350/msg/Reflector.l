;; Auto-generated. Do not edit!


(when (boundp 'sicknav350::Reflector)
  (if (not (find-package "SICKNAV350"))
    (make-package "SICKNAV350"))
  (shadow 'Reflector (find-package "SICKNAV350")))
(unless (find-package "SICKNAV350::REFLECTOR")
  (make-package "SICKNAV350::REFLECTOR"))

(in-package "ROS")
;;//! \htmlinclude Reflector.msg.html


(defclass sicknav350::Reflector
  :super ros::object
  :slots (_filter _num_reflector _cart _x _y _polar ))

(defmethod sicknav350::Reflector
  (:init
   (&key
    ((:filter __filter) 0)
    ((:num_reflector __num_reflector) 0)
    ((:cart __cart) (make-array 0 :initial-element 0 :element-type :integer))
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:polar __polar) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _filter (round __filter))
   (setq _num_reflector (round __num_reflector))
   (setq _cart __cart)
   (setq _x __x)
   (setq _y __y)
   (setq _polar __polar)
   self)
  (:filter
   (&optional __filter)
   (if __filter (setq _filter __filter)) _filter)
  (:num_reflector
   (&optional __num_reflector)
   (if __num_reflector (setq _num_reflector __num_reflector)) _num_reflector)
  (:cart
   (&optional __cart)
   (if __cart (setq _cart __cart)) _cart)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:polar
   (&optional __polar)
   (if __polar (setq _polar __polar)) _polar)
  (:serialization-length
   ()
   (+
    ;; uint32 _filter
    4
    ;; uint32 _num_reflector
    4
    ;; uint32[] _cart
    (* 4    (length _cart)) 4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; uint64[] _polar
    (* 8    (length _polar)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _filter
       (write-long _filter s)
     ;; uint32 _num_reflector
       (write-long _num_reflector s)
     ;; uint32[] _cart
     (write-long (length _cart) s)
     (dotimes (i (length _cart))
       (write-long (elt _cart i) s)
       )
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint64[] _polar
     (write-long (length _polar) s)
     (dotimes (i (length _polar))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _polar i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _polar i)) (= (length ((elt _polar i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _polar i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _polar i) . bv) 1) -1) s))
             ((and (class (elt _polar i)) (= (length ((elt _polar i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _polar i) . bv) 0) s)
              (write-long (if (>= (elt _polar i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _polar i) s)(write-long (if (>= (elt _polar i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _filter
     (setq _filter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_reflector
     (setq _num_reflector (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _cart
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cart (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cart i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint64[] _polar
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polar (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _polar i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _polar i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get sicknav350::Reflector :md5sum-) "011340bf811926a91f45981bd574d1c3")
(setf (get sicknav350::Reflector :datatype-) "sicknav350/Reflector")
(setf (get sicknav350::Reflector :definition-)
      "uint32 filter	
uint32 num_reflector
uint32[] cart
float32[] x
float32[] y
uint64[] polar


")



(provide :sicknav350/Reflector "011340bf811926a91f45981bd574d1c3")


