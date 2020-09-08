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

class StandbyStatusMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.task_type = null;
      this.status_code = null;
      this.time_out = null;
      this.display_info = null;
    }
    else {
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
      if (initObj.hasOwnProperty('status_code')) {
        this.status_code = initObj.status_code
      }
      else {
        this.status_code = 0;
      }
      if (initObj.hasOwnProperty('time_out')) {
        this.time_out = initObj.time_out
      }
      else {
        this.time_out = 0.0;
      }
      if (initObj.hasOwnProperty('display_info')) {
        this.display_info = initObj.display_info
      }
      else {
        this.display_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StandbyStatusMsg
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [status_code]
    bufferOffset = _serializer.int32(obj.status_code, buffer, bufferOffset);
    // Serialize message field [time_out]
    bufferOffset = _serializer.float64(obj.time_out, buffer, bufferOffset);
    // Serialize message field [display_info]
    bufferOffset = _serializer.string(obj.display_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StandbyStatusMsg
    let len;
    let data = new StandbyStatusMsg(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_code]
    data.status_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time_out]
    data.time_out = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [display_info]
    data.display_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.display_info.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/StandbyStatusMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d76ddb95882158e393770b68e0862a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_id
    int32 task_type
    int32 status_code
    float64 time_out
    string display_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StandbyStatusMsg(null);
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

    if (msg.status_code !== undefined) {
      resolved.status_code = msg.status_code;
    }
    else {
      resolved.status_code = 0
    }

    if (msg.time_out !== undefined) {
      resolved.time_out = msg.time_out;
    }
    else {
      resolved.time_out = 0.0
    }

    if (msg.display_info !== undefined) {
      resolved.display_info = msg.display_info;
    }
    else {
      resolved.display_info = ''
    }

    return resolved;
    }
};

module.exports = StandbyStatusMsg;
