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

class AgvStatusMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.task_mile = null;
      this.task_progresss = null;
      this.status_code = null;
      this.sub_code = null;
      this.segment_id = null;
      this.dir = null;
      this.segment_mile = null;
      this.node_id = null;
      this.dst_node = null;
      this.pose = null;
      this.vell = null;
      this.node_request = null;
      this.node_occupy = null;
      this.node_release = null;
      this.work_mode = null;
      this.location_status = null;
      this.attitude = null;
      this.check_time = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('task_mile')) {
        this.task_mile = initObj.task_mile
      }
      else {
        this.task_mile = 0.0;
      }
      if (initObj.hasOwnProperty('task_progresss')) {
        this.task_progresss = initObj.task_progresss
      }
      else {
        this.task_progresss = 0.0;
      }
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
      if (initObj.hasOwnProperty('segment_id')) {
        this.segment_id = initObj.segment_id
      }
      else {
        this.segment_id = 0;
      }
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = 0;
      }
      if (initObj.hasOwnProperty('segment_mile')) {
        this.segment_mile = initObj.segment_mile
      }
      else {
        this.segment_mile = 0.0;
      }
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = 0;
      }
      if (initObj.hasOwnProperty('dst_node')) {
        this.dst_node = initObj.dst_node
      }
      else {
        this.dst_node = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('vell')) {
        this.vell = initObj.vell
      }
      else {
        this.vell = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('node_request')) {
        this.node_request = initObj.node_request
      }
      else {
        this.node_request = [];
      }
      if (initObj.hasOwnProperty('node_occupy')) {
        this.node_occupy = initObj.node_occupy
      }
      else {
        this.node_occupy = [];
      }
      if (initObj.hasOwnProperty('node_release')) {
        this.node_release = initObj.node_release
      }
      else {
        this.node_release = [];
      }
      if (initObj.hasOwnProperty('work_mode')) {
        this.work_mode = initObj.work_mode
      }
      else {
        this.work_mode = 0;
      }
      if (initObj.hasOwnProperty('location_status')) {
        this.location_status = initObj.location_status
      }
      else {
        this.location_status = 0;
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = 0;
      }
      if (initObj.hasOwnProperty('check_time')) {
        this.check_time = initObj.check_time
      }
      else {
        this.check_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvStatusMsg
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_mile]
    bufferOffset = _serializer.float64(obj.task_mile, buffer, bufferOffset);
    // Serialize message field [task_progresss]
    bufferOffset = _serializer.float64(obj.task_progresss, buffer, bufferOffset);
    // Serialize message field [status_code]
    bufferOffset = _serializer.int32(obj.status_code, buffer, bufferOffset);
    // Serialize message field [sub_code]
    bufferOffset = _serializer.int32(obj.sub_code, buffer, bufferOffset);
    // Serialize message field [segment_id]
    bufferOffset = _serializer.int32(obj.segment_id, buffer, bufferOffset);
    // Serialize message field [dir]
    bufferOffset = _serializer.int32(obj.dir, buffer, bufferOffset);
    // Serialize message field [segment_mile]
    bufferOffset = _serializer.float64(obj.segment_mile, buffer, bufferOffset);
    // Serialize message field [node_id]
    bufferOffset = _serializer.int32(obj.node_id, buffer, bufferOffset);
    // Serialize message field [dst_node]
    bufferOffset = _serializer.int32(obj.dst_node, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [vell]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vell, buffer, bufferOffset);
    // Serialize message field [node_request]
    bufferOffset = _arraySerializer.int32(obj.node_request, buffer, bufferOffset, null);
    // Serialize message field [node_occupy]
    bufferOffset = _arraySerializer.int32(obj.node_occupy, buffer, bufferOffset, null);
    // Serialize message field [node_release]
    bufferOffset = _arraySerializer.int32(obj.node_release, buffer, bufferOffset, null);
    // Serialize message field [work_mode]
    bufferOffset = _serializer.int32(obj.work_mode, buffer, bufferOffset);
    // Serialize message field [location_status]
    bufferOffset = _serializer.int32(obj.location_status, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = _serializer.int32(obj.attitude, buffer, bufferOffset);
    // Serialize message field [check_time]
    bufferOffset = _serializer.float64(obj.check_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvStatusMsg
    let len;
    let data = new AgvStatusMsg(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_mile]
    data.task_mile = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [task_progresss]
    data.task_progresss = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status_code]
    data.status_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sub_code]
    data.sub_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segment_id]
    data.segment_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dir]
    data.dir = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segment_mile]
    data.segment_mile = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dst_node]
    data.dst_node = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [vell]
    data.vell = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [node_request]
    data.node_request = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [node_occupy]
    data.node_occupy = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [node_release]
    data.node_release = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [work_mode]
    data.work_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [location_status]
    data.location_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [check_time]
    data.check_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.node_request.length;
    length += 4 * object.node_occupy.length;
    length += 4 * object.node_release.length;
    return length + 188;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AgvStatusMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f28f5972085ecdebfb0eed879e9e6104';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_id
    float64 task_mile
    float64 task_progresss
    int32 status_code
    int32 sub_code
    int32 segment_id 
    int32 dir
    float64 segment_mile 
    int32 node_id
    int32 dst_node
    geometry_msgs/Pose pose
    geometry_msgs/Twist vell
    int32[] node_request
    int32[] node_occupy
    int32[] node_release
    int32 work_mode
    int32 location_status
    int32 attitude
    float64 check_time
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgvStatusMsg(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.task_mile !== undefined) {
      resolved.task_mile = msg.task_mile;
    }
    else {
      resolved.task_mile = 0.0
    }

    if (msg.task_progresss !== undefined) {
      resolved.task_progresss = msg.task_progresss;
    }
    else {
      resolved.task_progresss = 0.0
    }

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

    if (msg.segment_id !== undefined) {
      resolved.segment_id = msg.segment_id;
    }
    else {
      resolved.segment_id = 0
    }

    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = 0
    }

    if (msg.segment_mile !== undefined) {
      resolved.segment_mile = msg.segment_mile;
    }
    else {
      resolved.segment_mile = 0.0
    }

    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = 0
    }

    if (msg.dst_node !== undefined) {
      resolved.dst_node = msg.dst_node;
    }
    else {
      resolved.dst_node = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.vell !== undefined) {
      resolved.vell = geometry_msgs.msg.Twist.Resolve(msg.vell)
    }
    else {
      resolved.vell = new geometry_msgs.msg.Twist()
    }

    if (msg.node_request !== undefined) {
      resolved.node_request = msg.node_request;
    }
    else {
      resolved.node_request = []
    }

    if (msg.node_occupy !== undefined) {
      resolved.node_occupy = msg.node_occupy;
    }
    else {
      resolved.node_occupy = []
    }

    if (msg.node_release !== undefined) {
      resolved.node_release = msg.node_release;
    }
    else {
      resolved.node_release = []
    }

    if (msg.work_mode !== undefined) {
      resolved.work_mode = msg.work_mode;
    }
    else {
      resolved.work_mode = 0
    }

    if (msg.location_status !== undefined) {
      resolved.location_status = msg.location_status;
    }
    else {
      resolved.location_status = 0
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = msg.attitude;
    }
    else {
      resolved.attitude = 0
    }

    if (msg.check_time !== undefined) {
      resolved.check_time = msg.check_time;
    }
    else {
      resolved.check_time = 0.0
    }

    return resolved;
    }
};

module.exports = AgvStatusMsg;
