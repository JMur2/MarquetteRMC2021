import odrive
import time
import math
import py_compile

from odrive.enums import *
from pynput import keyboard

if __name__ == '__main__':
    stuff = list(odrive.find_all())
    print(stuff)