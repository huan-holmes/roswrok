# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_sys_msgs/AoaTrackingMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class AoaTrackingMsg(genpy.Message):
  _md5sum = "8382739c3a150bd5ebcf30730920d2e8"
  _type = "custom_sys_msgs/AoaTrackingMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool serial_switch
int32 task_id
int32 task_type
int32 vehicle_id
uint16 remote_control_id
"""
  __slots__ = ['serial_switch','task_id','task_type','vehicle_id','remote_control_id']
  _slot_types = ['bool','int32','int32','int32','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       serial_switch,task_id,task_type,vehicle_id,remote_control_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AoaTrackingMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.serial_switch is None:
        self.serial_switch = False
      if self.task_id is None:
        self.task_id = 0
      if self.task_type is None:
        self.task_type = 0
      if self.vehicle_id is None:
        self.vehicle_id = 0
      if self.remote_control_id is None:
        self.remote_control_id = 0
    else:
      self.serial_switch = False
      self.task_id = 0
      self.task_type = 0
      self.vehicle_id = 0
      self.remote_control_id = 0

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
      buff.write(_get_struct_B3iH().pack(_x.serial_switch, _x.task_id, _x.task_type, _x.vehicle_id, _x.remote_control_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 15
      (_x.serial_switch, _x.task_id, _x.task_type, _x.vehicle_id, _x.remote_control_id,) = _get_struct_B3iH().unpack(str[start:end])
      self.serial_switch = bool(self.serial_switch)
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
      buff.write(_get_struct_B3iH().pack(_x.serial_switch, _x.task_id, _x.task_type, _x.vehicle_id, _x.remote_control_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 15
      (_x.serial_switch, _x.task_id, _x.task_type, _x.vehicle_id, _x.remote_control_id,) = _get_struct_B3iH().unpack(str[start:end])
      self.serial_switch = bool(self.serial_switch)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B3iH = None
def _get_struct_B3iH():
    global _struct_B3iH
    if _struct_B3iH is None:
        _struct_B3iH = struct.Struct("<B3iH")
    return _struct_B3iH
