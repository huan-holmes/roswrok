# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_sys_msgs/StandbyStatusMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class StandbyStatusMsg(genpy.Message):
  _md5sum = "3d76ddb95882158e393770b68e0862a9"
  _type = "custom_sys_msgs/StandbyStatusMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 task_id
int32 task_type
int32 status_code
float64 time_out
string display_info
"""
  __slots__ = ['task_id','task_type','status_code','time_out','display_info']
  _slot_types = ['int32','int32','int32','float64','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       task_id,task_type,status_code,time_out,display_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(StandbyStatusMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.task_id is None:
        self.task_id = 0
      if self.task_type is None:
        self.task_type = 0
      if self.status_code is None:
        self.status_code = 0
      if self.time_out is None:
        self.time_out = 0.
      if self.display_info is None:
        self.display_info = ''
    else:
      self.task_id = 0
      self.task_type = 0
      self.status_code = 0
      self.time_out = 0.
      self.display_info = ''

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
      buff.write(_get_struct_3id().pack(_x.task_id, _x.task_type, _x.status_code, _x.time_out))
      _x = self.display_info
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      end += 20
      (_x.task_id, _x.task_type, _x.status_code, _x.time_out,) = _get_struct_3id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.display_info = str[start:end].decode('utf-8')
      else:
        self.display_info = str[start:end]
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
      buff.write(_get_struct_3id().pack(_x.task_id, _x.task_type, _x.status_code, _x.time_out))
      _x = self.display_info
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      end += 20
      (_x.task_id, _x.task_type, _x.status_code, _x.time_out,) = _get_struct_3id().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.display_info = str[start:end].decode('utf-8')
      else:
        self.display_info = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3id = None
def _get_struct_3id():
    global _struct_3id
    if _struct_3id is None:
        _struct_3id = struct.Struct("<3id")
    return _struct_3id
