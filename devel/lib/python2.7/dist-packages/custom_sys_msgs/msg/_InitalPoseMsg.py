# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_sys_msgs/InitalPoseMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class InitalPoseMsg(genpy.Message):
  _md5sum = "23af2ff86744279d9501d4df9ddadc6e"
  _type = "custom_sys_msgs/InitalPoseMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Pose pos
geometry_msgs/Pose pos_var
float64 yaw_var

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
"""
  __slots__ = ['pos','pos_var','yaw_var']
  _slot_types = ['geometry_msgs/Pose','geometry_msgs/Pose','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pos,pos_var,yaw_var

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InitalPoseMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pos is None:
        self.pos = geometry_msgs.msg.Pose()
      if self.pos_var is None:
        self.pos_var = geometry_msgs.msg.Pose()
      if self.yaw_var is None:
        self.yaw_var = 0.
    else:
      self.pos = geometry_msgs.msg.Pose()
      self.pos_var = geometry_msgs.msg.Pose()
      self.yaw_var = 0.

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
      buff.write(_get_struct_15d().pack(_x.pos.position.x, _x.pos.position.y, _x.pos.position.z, _x.pos.orientation.x, _x.pos.orientation.y, _x.pos.orientation.z, _x.pos.orientation.w, _x.pos_var.position.x, _x.pos_var.position.y, _x.pos_var.position.z, _x.pos_var.orientation.x, _x.pos_var.orientation.y, _x.pos_var.orientation.z, _x.pos_var.orientation.w, _x.yaw_var))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pos is None:
        self.pos = geometry_msgs.msg.Pose()
      if self.pos_var is None:
        self.pos_var = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 120
      (_x.pos.position.x, _x.pos.position.y, _x.pos.position.z, _x.pos.orientation.x, _x.pos.orientation.y, _x.pos.orientation.z, _x.pos.orientation.w, _x.pos_var.position.x, _x.pos_var.position.y, _x.pos_var.position.z, _x.pos_var.orientation.x, _x.pos_var.orientation.y, _x.pos_var.orientation.z, _x.pos_var.orientation.w, _x.yaw_var,) = _get_struct_15d().unpack(str[start:end])
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
      buff.write(_get_struct_15d().pack(_x.pos.position.x, _x.pos.position.y, _x.pos.position.z, _x.pos.orientation.x, _x.pos.orientation.y, _x.pos.orientation.z, _x.pos.orientation.w, _x.pos_var.position.x, _x.pos_var.position.y, _x.pos_var.position.z, _x.pos_var.orientation.x, _x.pos_var.orientation.y, _x.pos_var.orientation.z, _x.pos_var.orientation.w, _x.yaw_var))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pos is None:
        self.pos = geometry_msgs.msg.Pose()
      if self.pos_var is None:
        self.pos_var = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 120
      (_x.pos.position.x, _x.pos.position.y, _x.pos.position.z, _x.pos.orientation.x, _x.pos.orientation.y, _x.pos.orientation.z, _x.pos.orientation.w, _x.pos_var.position.x, _x.pos_var.position.y, _x.pos_var.position.z, _x.pos_var.orientation.x, _x.pos_var.orientation.y, _x.pos_var.orientation.z, _x.pos_var.orientation.w, _x.yaw_var,) = _get_struct_15d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_15d = None
def _get_struct_15d():
    global _struct_15d
    if _struct_15d is None:
        _struct_15d = struct.Struct("<15d")
    return _struct_15d
