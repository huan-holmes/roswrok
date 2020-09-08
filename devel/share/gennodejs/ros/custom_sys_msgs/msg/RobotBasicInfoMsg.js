// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotBasicInfoMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.robot_ip = null;
      this.robot_mac = null;
      this.if_name = null;
      this.robot_id = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('robot_ip')) {
        this.robot_ip = initObj.robot_ip
      }
      else {
        this.robot_ip = '';
      }
      if (initObj.hasOwnProperty('robot_mac')) {
        this.robot_mac = initObj.robot_mac
      }
      else {
        this.robot_mac = '';
      }
      if (initObj.hasOwnProperty('if_name')) {
        this.if_name = initObj.if_name
      }
      else {
        this.if_name = '';
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotBasicInfoMsg
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [robot_ip]
    bufferOffset = _serializer.string(obj.robot_ip, buffer, bufferOffset);
    // Serialize message field [robot_mac]
    bufferOffset = _serializer.string(obj.robot_mac, buffer, bufferOffset);
    // Serialize message field [if_name]
    bufferOffset = _serializer.string(obj.if_name, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.int32(obj.robot_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotBasicInfoMsg
    let len;
    let data = new RobotBasicInfoMsg(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_ip]
    data.robot_ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_mac]
    data.robot_mac = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [if_name]
    data.if_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += object.robot_ip.length;
    length += object.robot_mac.length;
    length += object.if_name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/RobotBasicInfoMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a20f282b03acc33dd1a5d6098520f933';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name
    string robot_ip
    string robot_mac
    string if_name
    int32 robot_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotBasicInfoMsg(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.robot_ip !== undefined) {
      resolved.robot_ip = msg.robot_ip;
    }
    else {
      resolved.robot_ip = ''
    }

    if (msg.robot_mac !== undefined) {
      resolved.robot_mac = msg.robot_mac;
    }
    else {
      resolved.robot_mac = ''
    }

    if (msg.if_name !== undefined) {
      resolved.if_name = msg.if_name;
    }
    else {
      resolved.if_name = ''
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    return resolved;
    }
};

module.exports = RobotBasicInfoMsg;
