/* Get tilt angles on X and Y, and rotation angle on Z
 * Angles are given in degrees
 * 
 * License: MIT
 */

/* Debugging
 * If you Run into a compiling error for #include <cstring> then follow the steps in this link to debug https://answers.ros.org/question/361930/rosserial-arduino-compilation-error-no-cstring/
 */

/* Information
 *  The example code this was based off of to interface with ROS is provided in this link: https://maker.pro/arduino/tutorial/how-to-use-arduino-with-robot-operating-system-ros
 *  The example code for using the MPU6050 sensor was taking from the library and called Angle_Sensor_Node
 */

#include "Wire.h"
#include <MPU6050_light.h>
#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt16.h>

ros::NodeHandle node_handle;
std_msgs::String gryo_msg;
ros::Publisher Angle_publisher("Arm Angle", &gryo_msg);

MPU6050 mpu(Wire);
unsigned long timer = 0;

void setup() {
  
  node_handle.initNode();
  node_handle.advertise(Angle_publisher);
  
  Serial.begin(9600);
  Wire.begin();
  
  byte status = mpu.begin();
  //Serial.print(F("MPU6050 status: "));
  //Serial.println(status);
  while(status!=0){ } // stop everything if could not connect to MPU6050
  
  //Serial.println(F("Calculating offsets, do not move MPU6050"));
  delay(1000);
  mpu.calcOffsets(); // gyro and accelero
  //Serial.println("Done!\n");
}

void loop() {
  mpu.update();

  /*
  if((millis()-timer)>10){ // print data every 10ms  
	Serial.print("X : ");
	Serial.print(mpu.getAngleX());
	Serial.print("\tY : ");
	Serial.print(mpu.getAngleY());
	Serial.print("\tZ : ");
	Serial.println(mpu.getAngleZ());
	timer = millis();  
  }
  */

  if(mpu.getAngleX() == 0 && mpu.getAngleY() == 0 && mpu.getAngleZ() == 0)
  {
    gryo_msg.data = "Level"
  }
  
  if(mpu.getAngleX() == 0 && mpu.getAngleY() == -150 && mpu.getAngleZ() == 150)
  {
    gryo_msg.data = "halfWay"
  }

  if(mpu.getAngleX() == 0 && mpu.getAngleY() == -300 && mpu.getAngleZ() == 300)
  {
    gryo_msg.data = "Down"
  }
  
  button_publisher.publish( &gryo_msg );
  node_handle.spinOnce();
  
  delay(100);
}
