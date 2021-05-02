// Auto-generated. Do not edit!

// (in-package main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ExtendedLaserScanMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser_scan = null;
      this.reflektor_status = null;
      this.reflektor_median = null;
      this.intrusion = null;
    }
    else {
      if (initObj.hasOwnProperty('laser_scan')) {
        this.laser_scan = initObj.laser_scan
      }
      else {
        this.laser_scan = new sensor_msgs.msg.LaserScan();
      }
      if (initObj.hasOwnProperty('reflektor_status')) {
        this.reflektor_status = initObj.reflektor_status
      }
      else {
        this.reflektor_status = [];
      }
      if (initObj.hasOwnProperty('reflektor_median')) {
        this.reflektor_median = initObj.reflektor_median
      }
      else {
        this.reflektor_median = [];
      }
      if (initObj.hasOwnProperty('intrusion')) {
        this.intrusion = initObj.intrusion
      }
      else {
        this.intrusion = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtendedLaserScanMsg
    // Serialize message field [laser_scan]
    bufferOffset = sensor_msgs.msg.LaserScan.serialize(obj.laser_scan, buffer, bufferOffset);
    // Serialize message field [reflektor_status]
    bufferOffset = _arraySerializer.bool(obj.reflektor_status, buffer, bufferOffset, null);
    // Serialize message field [reflektor_median]
    bufferOffset = _arraySerializer.bool(obj.reflektor_median, buffer, bufferOffset, null);
    // Serialize message field [intrusion]
    bufferOffset = _arraySerializer.bool(obj.intrusion, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtendedLaserScanMsg
    let len;
    let data = new ExtendedLaserScanMsg(null);
    // Deserialize message field [laser_scan]
    data.laser_scan = sensor_msgs.msg.LaserScan.deserialize(buffer, bufferOffset);
    // Deserialize message field [reflektor_status]
    data.reflektor_status = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [reflektor_median]
    data.reflektor_median = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [intrusion]
    data.intrusion = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.LaserScan.getMessageSize(object.laser_scan);
    length += object.reflektor_status.length;
    length += object.reflektor_median.length;
    length += object.intrusion.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/ExtendedLaserScanMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebb40b28432208d7bfa749af849de1ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/LaserScan laser_scan
    bool[] reflektor_status
    bool[] reflektor_median
    bool[] intrusion
    
    
    ================================================================================
    MSG: sensor_msgs/LaserScan
    # Single scan from a planar laser range-finder
    #
    # If you have another ranging device with different behavior (e.g. a sonar
    # array), please find or create a different message, since applications
    # will make fairly laser-specific assumptions about this data
    
    Header header            # timestamp in the header is the acquisition time of 
                             # the first ray in the scan.
                             #
                             # in frame frame_id, angles are measured around 
                             # the positive Z axis (counterclockwise, if Z is up)
                             # with zero angle being forward along the x axis
                             
    float32 angle_min        # start angle of the scan [rad]
    float32 angle_max        # end angle of the scan [rad]
    float32 angle_increment  # angular distance between measurements [rad]
    
    float32 time_increment   # time between measurements [seconds] - if your scanner
                             # is moving, this will be used in interpolating position
                             # of 3d points
    float32 scan_time        # time between scans [seconds]
    
    float32 range_min        # minimum range value [m]
    float32 range_max        # maximum range value [m]
    
    float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
    float32[] intensities    # intensity data [device-specific units].  If your
                             # device does not provide intensities, please leave
                             # the array empty.
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExtendedLaserScanMsg(null);
    if (msg.laser_scan !== undefined) {
      resolved.laser_scan = sensor_msgs.msg.LaserScan.Resolve(msg.laser_scan)
    }
    else {
      resolved.laser_scan = new sensor_msgs.msg.LaserScan()
    }

    if (msg.reflektor_status !== undefined) {
      resolved.reflektor_status = msg.reflektor_status;
    }
    else {
      resolved.reflektor_status = []
    }

    if (msg.reflektor_median !== undefined) {
      resolved.reflektor_median = msg.reflektor_median;
    }
    else {
      resolved.reflektor_median = []
    }

    if (msg.intrusion !== undefined) {
      resolved.intrusion = msg.intrusion;
    }
    else {
      resolved.intrusion = []
    }

    return resolved;
    }
};

module.exports = ExtendedLaserScanMsg;
