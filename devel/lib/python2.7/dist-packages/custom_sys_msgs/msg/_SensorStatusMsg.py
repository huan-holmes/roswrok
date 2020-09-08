# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from custom_sys_msgs/SensorStatusMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SensorStatusMsg(genpy.Message):
  _md5sum = "64dec694a8aac012670ece9363dd4bfd"
  _type = "custom_sys_msgs/SensorStatusMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 laser
int32 base
int32 sonar
int32 vision
int32 odom
int32 uwb
int32 emergency
int32 charge
string power
"""
  __slots__ = ['laser','base','sonar','vision','odom','uwb','emergency','charge','power']
  _slot_types = ['int32','int32','int32','int32','int32','int32','int32','int32','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       laser,base,sonar,vision,odom,uwb,emergency,charge,power

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SensorStatusMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.laser is None:
        self.laser = 0
      if self.base is None:
        self.base = 0
      if self.sonar is None:
        self.sonar = 0
      if self.vision is None:
        self.vision = 0
      if self.odom is None:
        self.odom = 0
      if self.uwb is None:
        self.uwb = 0
      if self.emergency is None:
        self.emergency = 0
      if self.charge is None:
        self.charge = 0
      if self.power is None:
        self.power = ''
    else:
      self.laser = 0
      self.base = 0
      self.sonar = 0
      self.vision = 0
      self.odom = 0
      self.uwb = 0
      self.emergency = 0
      self.charge = 0
      self.power = ''

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
      buff.write(_get_struct_8i().pack(_x.laser, _x.base, _x.sonar, _x.vision, _x.odom, _x.uwb, _x.emergency, _x.charge))
      _x = self.power
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
      end += 32
      (_x.laser, _x.base, _x.sonar, _x.vision, _x.odom, _x.uwb, _x.emergency, _x.charge,) = _get_struct_8i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.power = str[start:end].decode('utf-8')
      else:
        self.power = str[start:end]
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
      buff.write(_get_struct_8i().pack(_x.laser, _x.base, _x.sonar, _x.vision, _x.odom, _x.uwb, _x.emergency, _x.charge))
      _x = self.power
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
      end += 32
      (_x.laser, _x.base, _x.sonar, _x.vision, _x.odom, _x.uwb, _x.emergency, _x.charge,) = _get_struct_8i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.power = str[start:end].decode('utf-8')
      else:
        self.power = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8i = None
def _get_struct_8i():
    global _struct_8i
    if _struct_8i is None:
        _struct_8i = struct.Struct("<8i")
    return _struct_8i