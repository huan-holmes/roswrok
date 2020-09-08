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

class AoaTrackingMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serial_switch = null;
      this.task_id = null;
      this.task_type = null;
      this.vehicle_id = null;
      this.remote_control_id = null;
    }
    else {
      if (initObj.hasOwnProperty('serial_switch')) {
        this.serial_switch = initObj.serial_switch
      }
      else {
        this.serial_switch = false;
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('vehicle_id')) {
        this.vehicle_id = initObj.vehicle_id
      }
      else {
        this.vehicle_id = 0;
      }
      if (initObj.hasOwnProperty('remote_control_id')) {
        this.remote_control_id = initObj.remote_control_id
      }
      else {
        this.remote_control_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AoaTrackingMsg
    // Serialize message field [serial_switch]
    bufferOffset = _serializer.bool(obj.serial_switch, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [vehicle_id]
    bufferOffset = _serializer.int32(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [remote_control_id]
    bufferOffset = _serializer.uint16(obj.remote_control_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AoaTrackingMsg
    let len;
    let data = new AoaTrackingMsg(null);
    // Deserialize message field [serial_switch]
    data.serial_switch = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remote_control_id]
    data.remote_control_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AoaTrackingMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8382739c3a150bd5ebcf30730920d2e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool serial_switch
    int32 task_id
    int32 task_type
    int32 vehicle_id
    uint16 remote_control_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AoaTrackingMsg(null);
    if (msg.serial_switch !== undefined) {
      resolved.serial_switch = msg.serial_switch;
    }
    else {
      resolved.serial_switch = false
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = msg.vehicle_id;
    }
    else {
      resolved.vehicle_id = 0
    }

    if (msg.remote_control_id !== undefined) {
      resolved.remote_control_id = msg.remote_control_id;
    }
    else {
      resolved.remote_control_id = 0
    }

    return resolved;
    }
};

module.exports = AoaTrackingMsg;
