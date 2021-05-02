// Auto-generated. Do not edit!

// (in-package sick_safetyscanners.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ScanPointMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
      this.distance = null;
      this.reflectivity = null;
      this.valid = null;
      this.infinite = null;
      this.glare = null;
      this.reflector = null;
      this.contamination = null;
      this.contamination_warning = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('reflectivity')) {
        this.reflectivity = initObj.reflectivity
      }
      else {
        this.reflectivity = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('infinite')) {
        this.infinite = initObj.infinite
      }
      else {
        this.infinite = false;
      }
      if (initObj.hasOwnProperty('glare')) {
        this.glare = initObj.glare
      }
      else {
        this.glare = false;
      }
      if (initObj.hasOwnProperty('reflector')) {
        this.reflector = initObj.reflector
      }
      else {
        this.reflector = false;
      }
      if (initObj.hasOwnProperty('contamination')) {
        this.contamination = initObj.contamination
      }
      else {
        this.contamination = false;
      }
      if (initObj.hasOwnProperty('contamination_warning')) {
        this.contamination_warning = initObj.contamination_warning
      }
      else {
        this.contamination_warning = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanPointMsg
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.uint16(obj.distance, buffer, bufferOffset);
    // Serialize message field [reflectivity]
    bufferOffset = _serializer.uint8(obj.reflectivity, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [infinite]
    bufferOffset = _serializer.bool(obj.infinite, buffer, bufferOffset);
    // Serialize message field [glare]
    bufferOffset = _serializer.bool(obj.glare, buffer, bufferOffset);
    // Serialize message field [reflector]
    bufferOffset = _serializer.bool(obj.reflector, buffer, bufferOffset);
    // Serialize message field [contamination]
    bufferOffset = _serializer.bool(obj.contamination, buffer, bufferOffset);
    // Serialize message field [contamination_warning]
    bufferOffset = _serializer.bool(obj.contamination_warning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanPointMsg
    let len;
    let data = new ScanPointMsg(null);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reflectivity]
    data.reflectivity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [infinite]
    data.infinite = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [glare]
    data.glare = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reflector]
    data.reflector = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [contamination]
    data.contamination = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [contamination_warning]
    data.contamination_warning = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_safetyscanners/ScanPointMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a01759b77f0ee80f572c218c25f9954e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 angle
    uint16 distance
    uint8 reflectivity
    bool valid
    bool infinite
    bool glare
    bool reflector
    bool contamination
    bool contamination_warning
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScanPointMsg(null);
    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.reflectivity !== undefined) {
      resolved.reflectivity = msg.reflectivity;
    }
    else {
      resolved.reflectivity = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.infinite !== undefined) {
      resolved.infinite = msg.infinite;
    }
    else {
      resolved.infinite = false
    }

    if (msg.glare !== undefined) {
      resolved.glare = msg.glare;
    }
    else {
      resolved.glare = false
    }

    if (msg.reflector !== undefined) {
      resolved.reflector = msg.reflector;
    }
    else {
      resolved.reflector = false
    }

    if (msg.contamination !== undefined) {
      resolved.contamination = msg.contamination;
    }
    else {
      resolved.contamination = false
    }

    if (msg.contamination_warning !== undefined) {
      resolved.contamination_warning = msg.contamination_warning;
    }
    else {
      resolved.contamination_warning = false
    }

    return resolved;
    }
};

module.exports = ScanPointMsg;
