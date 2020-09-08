# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_sys_msgs/FreeNav.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import custom_sys_msgs.msg
import std_msgs.msg

class FreeNav(genpy.Message):
  _md5sum = "23022d59f10203932fccb77d648e4155"
  _type = "custom_sys_msgs/FreeNav"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/PoseStamped target_pose
custom_sys_msgs/AgvTrajectoryMsg2 target_path
int32 type
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: custom_sys_msgs/AgvTrajectoryMsg2
int32 task_id
int32 task_type
int32 vehicle_id
int32 free_nav
float64 deadline
geometry_msgs/Pose dst_pose
custom_sys_msgs/AgvLineMsg2[] agv_trajectory
int32 test
================================================================================
MSG: custom_sys_msgs/AgvLineMsg2
int32 segment_id
int32 segment_type
int32 attitude
int32 tracking_mode
float64 speed
float64 precision
float64 arrival_time
float64 departure_time
float64 redundancy_time
geometry_msgs/Pose p_start
geometry_msgs/Pose p_middle
geometry_msgs/Pose p_end
int32 start_node_id
int32 end_node_id
bool crossing
"""
  __slots__ = ['target_pose','target_path','type']
  _slot_types = ['geometry_msgs/PoseStamped','custom_sys_msgs/AgvTrajectoryMsg2','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target_pose,target_path,type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FreeNav, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.target_path is None:
        self.target_path = custom_sys_msgs.msg.AgvTrajectoryMsg2()
      if self.type is None:
        self.type = 0
    else:
      self.target_pose = geometry_msgs.msg.PoseStamped()
      self.target_path = custom_sys_msgs.msg.AgvTrajectoryMsg2()
      self.type = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs))
      _x = self.target_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d4i8d().pack(_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.target_path.task_id, _x.target_path.task_type, _x.target_path.vehicle_id, _x.target_path.free_nav, _x.target_path.deadline, _x.target_path.dst_pose.position.x, _x.target_path.dst_pose.position.y, _x.target_path.dst_pose.position.z, _x.target_path.dst_pose.orientation.x, _x.target_path.dst_pose.orientation.y, _x.target_path.dst_pose.orientation.z, _x.target_path.dst_pose.orientation.w))
      length = len(self.target_path.agv_trajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.target_path.agv_trajectory:
        _x = val1
        buff.write(_get_struct_4i5d().pack(_x.segment_id, _x.segment_type, _x.attitude, _x.tracking_mode, _x.speed, _x.precision, _x.arrival_time, _x.departure_time, _x.redundancy_time))
        _v1 = val1.p_start
        _v2 = _v1.position
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v4 = val1.p_middle
        _v5 = _v4.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = _v4.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v7 = val1.p_end
        _v8 = _v7.position
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v9 = _v7.orientation
        _x = _v9
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _x = val1
        buff.write(_get_struct_2iB().pack(_x.start_node_id, _x.end_node_id, _x.crossing))
      _x = self
      buff.write(_get_struct_2i().pack(_x.target_path.test, _x.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.target_path is None:
        self.target_path = custom_sys_msgs.msg.AgvTrajectoryMsg2()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.target_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 136
      (_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.target_path.task_id, _x.target_path.task_type, _x.target_path.vehicle_id, _x.target_path.free_nav, _x.target_path.deadline, _x.target_path.dst_pose.position.x, _x.target_path.dst_pose.position.y, _x.target_path.dst_pose.position.z, _x.target_path.dst_pose.orientation.x, _x.target_path.dst_pose.orientation.y, _x.target_path.dst_pose.orientation.z, _x.target_path.dst_pose.orientation.w,) = _get_struct_7d4i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.target_path.agv_trajectory = []
      for i in range(0, length):
        val1 = custom_sys_msgs.msg.AgvLineMsg2()
        _x = val1
        start = end
        end += 56
        (_x.segment_id, _x.segment_type, _x.attitude, _x.tracking_mode, _x.speed, _x.precision, _x.arrival_time, _x.departure_time, _x.redundancy_time,) = _get_struct_4i5d().unpack(str[start:end])
        _v10 = val1.p_start
        _v11 = _v10.position
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v12 = _v10.orientation
        _x = _v12
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v13 = val1.p_middle
        _v14 = _v13.position
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.orientation
        _x = _v15
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v16 = val1.p_end
        _v17 = _v16.position
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v18 = _v16.orientation
        _x = _v18
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _x = val1
        start = end
        end += 9
        (_x.start_node_id, _x.end_node_id, _x.crossing,) = _get_struct_2iB().unpack(str[start:end])
        val1.crossing = bool(val1.crossing)
        self.target_path.agv_trajectory.append(val1)
      _x = self
      start = end
      end += 8
      (_x.target_path.test, _x.type,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs))
      _x = self.target_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d4i8d().pack(_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.target_path.task_id, _x.target_path.task_type, _x.target_path.vehicle_id, _x.target_path.free_nav, _x.target_path.deadline, _x.target_path.dst_pose.position.x, _x.target_path.dst_pose.position.y, _x.target_path.dst_pose.position.z, _x.target_path.dst_pose.orientation.x, _x.target_path.dst_pose.orientation.y, _x.target_path.dst_pose.orientation.z, _x.target_path.dst_pose.orientation.w))
      length = len(self.target_path.agv_trajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.target_path.agv_trajectory:
        _x = val1
        buff.write(_get_struct_4i5d().pack(_x.segment_id, _x.segment_type, _x.attitude, _x.tracking_mode, _x.speed, _x.precision, _x.arrival_time, _x.departure_time, _x.redundancy_time))
        _v19 = val1.p_start
        _v20 = _v19.position
        _x = _v20
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v21 = _v19.orientation
        _x = _v21
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v22 = val1.p_middle
        _v23 = _v22.position
        _x = _v23
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v24 = _v22.orientation
        _x = _v24
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v25 = val1.p_end
        _v26 = _v25.position
        _x = _v26
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v27 = _v25.orientation
        _x = _v27
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _x = val1
        buff.write(_get_struct_2iB().pack(_x.start_node_id, _x.end_node_id, _x.crossing))
      _x = self
      buff.write(_get_struct_2i().pack(_x.target_path.test, _x.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.target_pose is None:
        self.target_pose = geometry_msgs.msg.PoseStamped()
      if self.target_path is None:
        self.target_path = custom_sys_msgs.msg.AgvTrajectoryMsg2()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.target_pose.header.seq, _x.target_pose.header.stamp.secs, _x.target_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.target_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.target_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 136
      (_x.target_pose.pose.position.x, _x.target_pose.pose.position.y, _x.target_pose.pose.position.z, _x.target_pose.pose.orientation.x, _x.target_pose.pose.orientation.y, _x.target_pose.pose.orientation.z, _x.target_pose.pose.orientation.w, _x.target_path.task_id, _x.target_path.task_type, _x.target_path.vehicle_id, _x.target_path.free_nav, _x.target_path.deadline, _x.target_path.dst_pose.position.x, _x.target_path.dst_pose.position.y, _x.target_path.dst_pose.position.z, _x.target_path.dst_pose.orientation.x, _x.target_path.dst_pose.orientation.y, _x.target_path.dst_pose.orientation.z, _x.target_path.dst_pose.orientation.w,) = _get_struct_7d4i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.target_path.agv_trajectory = []
      for i in range(0, length):
        val1 = custom_sys_msgs.msg.AgvLineMsg2()
        _x = val1
        start = end
        end += 56
        (_x.segment_id, _x.segment_type, _x.attitude, _x.tracking_mode, _x.speed, _x.precision, _x.arrival_time, _x.departure_time, _x.redundancy_time,) = _get_struct_4i5d().unpack(str[start:end])
        _v28 = val1.p_start
        _v29 = _v28.position
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v30 = _v28.orientation
        _x = _v30
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v31 = val1.p_middle
        _v32 = _v31.position
        _x = _v32
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v33 = _v31.orientation
        _x = _v33
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v34 = val1.p_end
        _v35 = _v34.position
        _x = _v35
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v36 = _v34.orientation
        _x = _v36
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _x = val1
        start = end
        end += 9
        (_x.start_node_id, _x.end_node_id, _x.crossing,) = _get_struct_2iB().unpack(str[start:end])
        val1.crossing = bool(val1.crossing)
        self.target_path.agv_trajectory.append(val1)
      _x = self
      start = end
      end += 8
      (_x.target_path.test, _x.type,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7d4i8d = None
def _get_struct_7d4i8d():
    global _struct_7d4i8d
    if _struct_7d4i8d is None:
        _struct_7d4i8d = struct.Struct("<7d4i8d")
    return _struct_7d4i8d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2iB = None
def _get_struct_2iB():
    global _struct_2iB
    if _struct_2iB is None:
        _struct_2iB = struct.Struct("<2iB")
    return _struct_2iB
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_4i5d = None
def _get_struct_4i5d():
    global _struct_4i5d
    if _struct_4i5d is None:
        _struct_4i5d = struct.Struct("<4i5d")
    return _struct_4i5d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
