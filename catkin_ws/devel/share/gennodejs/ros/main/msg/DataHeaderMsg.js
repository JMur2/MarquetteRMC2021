// Auto-generated. Do not edit!

// (in-package main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DataHeaderMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version_version = null;
      this.version_major_version = null;
      this.version_minor_version = null;
      this.version_release = null;
      this.serial_number_of_device = null;
      this.serial_number_of_channel_plug = null;
      this.channel_number = null;
      this.sequence_number = null;
      this.scan_number = null;
      this.timestamp_date = null;
      this.timestamp_time = null;
    }
    else {
      if (initObj.hasOwnProperty('version_version')) {
        this.version_version = initObj.version_version
      }
      else {
        this.version_version = 0;
      }
      if (initObj.hasOwnProperty('version_major_version')) {
        this.version_major_version = initObj.version_major_version
      }
      else {
        this.version_major_version = 0;
      }
      if (initObj.hasOwnProperty('version_minor_version')) {
        this.version_minor_version = initObj.version_minor_version
      }
      else {
        this.version_minor_version = 0;
      }
      if (initObj.hasOwnProperty('version_release')) {
        this.version_release = initObj.version_release
      }
      else {
        this.version_release = 0;
      }
      if (initObj.hasOwnProperty('serial_number_of_device')) {
        this.serial_number_of_device = initObj.serial_number_of_device
      }
      else {
        this.serial_number_of_device = 0;
      }
      if (initObj.hasOwnProperty('serial_number_of_channel_plug')) {
        this.serial_number_of_channel_plug = initObj.serial_number_of_channel_plug
      }
      else {
        this.serial_number_of_channel_plug = 0;
      }
      if (initObj.hasOwnProperty('channel_number')) {
        this.channel_number = initObj.channel_number
      }
      else {
        this.channel_number = 0;
      }
      if (initObj.hasOwnProperty('sequence_number')) {
        this.sequence_number = initObj.sequence_number
      }
      else {
        this.sequence_number = 0;
      }
      if (initObj.hasOwnProperty('scan_number')) {
        this.scan_number = initObj.scan_number
      }
      else {
        this.scan_number = 0;
      }
      if (initObj.hasOwnProperty('timestamp_date')) {
        this.timestamp_date = initObj.timestamp_date
      }
      else {
        this.timestamp_date = 0;
      }
      if (initObj.hasOwnProperty('timestamp_time')) {
        this.timestamp_time = initObj.timestamp_time
      }
      else {
        this.timestamp_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataHeaderMsg
    // Serialize message field [version_version]
    bufferOffset = _serializer.uint8(obj.version_version, buffer, bufferOffset);
    // Serialize message field [version_major_version]
    bufferOffset = _serializer.uint8(obj.version_major_version, buffer, bufferOffset);
    // Serialize message field [version_minor_version]
    bufferOffset = _serializer.uint8(obj.version_minor_version, buffer, bufferOffset);
    // Serialize message field [version_release]
    bufferOffset = _serializer.uint8(obj.version_release, buffer, bufferOffset);
    // Serialize message field [serial_number_of_device]
    bufferOffset = _serializer.uint32(obj.serial_number_of_device, buffer, bufferOffset);
    // Serialize message field [serial_number_of_channel_plug]
    bufferOffset = _serializer.uint32(obj.serial_number_of_channel_plug, buffer, bufferOffset);
    // Serialize message field [channel_number]
    bufferOffset = _serializer.uint8(obj.channel_number, buffer, bufferOffset);
    // Serialize message field [sequence_number]
    bufferOffset = _serializer.uint32(obj.sequence_number, buffer, bufferOffset);
    // Serialize message field [scan_number]
    bufferOffset = _serializer.uint32(obj.scan_number, buffer, bufferOffset);
    // Serialize message field [timestamp_date]
    bufferOffset = _serializer.uint16(obj.timestamp_date, buffer, bufferOffset);
    // Serialize message field [timestamp_time]
    bufferOffset = _serializer.uint32(obj.timestamp_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataHeaderMsg
    let len;
    let data = new DataHeaderMsg(null);
    // Deserialize message field [version_version]
    data.version_version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version_major_version]
    data.version_major_version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version_minor_version]
    data.version_minor_version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version_release]
    data.version_release = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [serial_number_of_device]
    data.serial_number_of_device = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [serial_number_of_channel_plug]
    data.serial_number_of_channel_plug = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [channel_number]
    data.channel_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sequence_number]
    data.sequence_number = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [scan_number]
    data.scan_number = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timestamp_date]
    data.timestamp_date = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [timestamp_time]
    data.timestamp_time = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/DataHeaderMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '639f9d3c49bcb2f17e3c86d83f9746c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 version_version
    uint8 version_major_version
    uint8 version_minor_version
    uint8 version_release
    
    uint32 serial_number_of_device
    uint32 serial_number_of_channel_plug
    uint8 channel_number
    
    uint32 sequence_number
    uint32 scan_number
    
    uint16 timestamp_date
    uint32 timestamp_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataHeaderMsg(null);
    if (msg.version_version !== undefined) {
      resolved.version_version = msg.version_version;
    }
    else {
      resolved.version_version = 0
    }

    if (msg.version_major_version !== undefined) {
      resolved.version_major_version = msg.version_major_version;
    }
    else {
      resolved.version_major_version = 0
    }

    if (msg.version_minor_version !== undefined) {
      resolved.version_minor_version = msg.version_minor_version;
    }
    else {
      resolved.version_minor_version = 0
    }

    if (msg.version_release !== undefined) {
      resolved.version_release = msg.version_release;
    }
    else {
      resolved.version_release = 0
    }

    if (msg.serial_number_of_device !== undefined) {
      resolved.serial_number_of_device = msg.serial_number_of_device;
    }
    else {
      resolved.serial_number_of_device = 0
    }

    if (msg.serial_number_of_channel_plug !== undefined) {
      resolved.serial_number_of_channel_plug = msg.serial_number_of_channel_plug;
    }
    else {
      resolved.serial_number_of_channel_plug = 0
    }

    if (msg.channel_number !== undefined) {
      resolved.channel_number = msg.channel_number;
    }
    else {
      resolved.channel_number = 0
    }

    if (msg.sequence_number !== undefined) {
      resolved.sequence_number = msg.sequence_number;
    }
    else {
      resolved.sequence_number = 0
    }

    if (msg.scan_number !== undefined) {
      resolved.scan_number = msg.scan_number;
    }
    else {
      resolved.scan_number = 0
    }

    if (msg.timestamp_date !== undefined) {
      resolved.timestamp_date = msg.timestamp_date;
    }
    else {
      resolved.timestamp_date = 0
    }

    if (msg.timestamp_time !== undefined) {
      resolved.timestamp_time = msg.timestamp_time;
    }
    else {
      resolved.timestamp_time = 0
    }

    return resolved;
    }
};

module.exports = DataHeaderMsg;
