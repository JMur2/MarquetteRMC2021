// Auto-generated. Do not edit!

// (in-package main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ScanPointMsg = require('./ScanPointMsg.js');

//-----------------------------------------------------------

class MeasurementDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number_of_beams = null;
      this.scan_points = null;
    }
    else {
      if (initObj.hasOwnProperty('number_of_beams')) {
        this.number_of_beams = initObj.number_of_beams
      }
      else {
        this.number_of_beams = 0;
      }
      if (initObj.hasOwnProperty('scan_points')) {
        this.scan_points = initObj.scan_points
      }
      else {
        this.scan_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MeasurementDataMsg
    // Serialize message field [number_of_beams]
    bufferOffset = _serializer.uint32(obj.number_of_beams, buffer, bufferOffset);
    // Serialize message field [scan_points]
    // Serialize the length for message field [scan_points]
    bufferOffset = _serializer.uint32(obj.scan_points.length, buffer, bufferOffset);
    obj.scan_points.forEach((val) => {
      bufferOffset = ScanPointMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MeasurementDataMsg
    let len;
    let data = new MeasurementDataMsg(null);
    // Deserialize message field [number_of_beams]
    data.number_of_beams = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [scan_points]
    // Deserialize array length for message field [scan_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scan_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scan_points[i] = ScanPointMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.scan_points.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/MeasurementDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7e755cfc4fb85e1a4ded54fd0d31589';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 number_of_beams
    ScanPointMsg[] scan_points
    
    
    ================================================================================
    MSG: main/ScanPointMsg
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
    const resolved = new MeasurementDataMsg(null);
    if (msg.number_of_beams !== undefined) {
      resolved.number_of_beams = msg.number_of_beams;
    }
    else {
      resolved.number_of_beams = 0
    }

    if (msg.scan_points !== undefined) {
      resolved.scan_points = new Array(msg.scan_points.length);
      for (let i = 0; i < resolved.scan_points.length; ++i) {
        resolved.scan_points[i] = ScanPointMsg.Resolve(msg.scan_points[i]);
      }
    }
    else {
      resolved.scan_points = []
    }

    return resolved;
    }
};

module.exports = MeasurementDataMsg;
