"""
@created: 10-7-2020
"""
import odrive
import time
import math
import py_compile

from odrive.enums import *
from pynput import keyboard

if __name__ == '__main__':
    print("This is an ssh test")
#     odrv0 = odrive.find_any(serial_number="206430804648")
#     odrv1 = odrive.find_any(serial_number="20863880304E")
    
#     print(odrv0.vbus_voltage)
#     print(odrv1.vbus_voltage)