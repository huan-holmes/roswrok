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

class TaskActionMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.task_type = null;
      this.action = null;
      this.action_code = null;
      this.immediately = null;
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
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('action_code')) {
        this.action_code = initObj.action_code
      }
      else {
        this.action_code = 0;
      }
      if (initObj.hasOwnProperty('immediately')) {
        this.immediately = initObj.immediately
      }
      else {
        this.immediately = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskActionMsg
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [action_code]
    bufferOffset = _serializer.int32(obj.action_code, buffer, bufferOffset);
    // Serialize message field [immediately]
    bufferOffset = _serializer.string(obj.immediately, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskActionMsg
    let len;
    let data = new TaskActionMsg(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_code]
    data.action_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [immediately]
    data.immediately = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.action.length;
    length += object.immediately.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/TaskActionMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5591e51a0b146f386425b17fcb920bd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_id
    int32 task_type
    string action
    int32 action_code
    string immediately
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskActionMsg(null);
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

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.action_code !== undefined) {
      resolved.action_code = msg.action_code;
    }
    else {
      resolved.action_code = 0
    }

    if (msg.immediately !== undefined) {
      resolved.immediately = msg.immediately;
    }
    else {
      resolved.immediately = ''
    }

    return resolved;
    }
};

module.exports = TaskActionMsg;
