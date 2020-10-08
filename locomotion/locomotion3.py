import odrive
import time
import math
import py_compile

# import ../odrive_ros/scr/odrive_ros/odrive_interface
# import sys
# import logging
# import serial
# from serial.serialutil import SerialException

from odrive.enums import *
from pynput import keyboard


if __name__ == '__main__':
    stuff = list(odrive.find_all())
    print(stuff)