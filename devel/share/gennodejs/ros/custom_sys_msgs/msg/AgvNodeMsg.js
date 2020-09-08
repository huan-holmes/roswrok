// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgvNodeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_id = null;
      this.node_name = null;
      this.node_type = null;
      this.ref_cnt = null;
      this.pos = null;
    }
    else {
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = 0;
      }
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('node_type')) {
        this.node_type = initObj.node_type
      }
      else {
        this.node_type = 0;
      }
      if (initObj.hasOwnProperty('ref_cnt')) {
        this.ref_cnt = initObj.ref_cnt
      }
      else {
        this.ref_cnt = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvNodeMsg
    // Serialize message field [node_id]
    bufferOffset = _serializer.int32(obj.node_id, buffer, bufferOffset);
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [node_type]
    bufferOffset = _serializer.int32(obj.node_type, buffer, bufferOffset);
    // Serialize message field [ref_cnt]
    bufferOffset = _serializer.int32(obj.ref_cnt, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvNodeMsg
    let len;
    let data = new AgvNodeMsg(null);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [node_type]
    data.node_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ref_cnt]
    data.ref_cnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_name.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AgvNodeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '425f24322817c1acfbde4fee56a7fac2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 node_id
    string node_name
    int32 node_type
    int32 ref_cnt
    geometry_msgs/Pose pos
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgvNodeMsg(null);
    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = 0
    }

    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.node_type !== undefined) {
      resolved.node_type = msg.node_type;
    }
    else {
      resolved.node_type = 0
    }

    if (msg.ref_cnt !== undefined) {
      resolved.ref_cnt = msg.ref_cnt;
    }
    else {
      resolved.ref_cnt = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Pose.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = AgvNodeMsg;
