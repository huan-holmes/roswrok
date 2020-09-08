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

class TaskStdStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status_code = null;
      this.sub_code = null;
      this.task_id = null;
      this.task_type = null;
    }
    else {
      if (initObj.hasOwnProperty('status_code')) {
        this.status_code = initObj.status_code
      }
      else {
        this.status_code = 0;
      }
      if (initObj.hasOwnProperty('sub_code')) {
        this.sub_code = initObj.sub_code
      }
      else {
        this.sub_code = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStdStatus
    // Serialize message field [status_code]
    bufferOffset = _serializer.int32(obj.status_code, buffer, bufferOffset);
    // Serialize message field [sub_code]
    bufferOffset = _serializer.int32(obj.sub_code, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStdStatus
    let len;
    let data = new TaskStdStatus(null);
    // Deserialize message field [status_code]
    data.status_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sub_code]
    data.sub_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/TaskStdStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2708427181bab17b8767d3df163bc4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status_code
    int32 sub_code
    int32 task_id
    int32 task_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskStdStatus(null);
    if (msg.status_code !== undefined) {
      resolved.status_code = msg.status_code;
    }
    else {
      resolved.status_code = 0
    }

    if (msg.sub_code !== undefined) {
      resolved.sub_code = msg.sub_code;
    }
    else {
      resolved.sub_code = 0
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

    return resolved;
    }
};

module.exports = TaskStdStatus;
