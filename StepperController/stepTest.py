import subprocess
import yaml
import time
import math
import sys
import tty
import termios

# def get_char():
#     file_descriptor = sys.stdin.fileno()
#     old_settings = termios.tcgetattr(file_descriptor)
    
#     try:
#         tty.setraw(file_descriptor)
#         character = sys.stdin.read(1)
#     finally:
#         termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)
        
#     return character

# def ticcmd(self, *args):
# 	return subprocess.check_output(['ticcmd'] + list(args))


# if __name__ == '__main__':
# 	print("connected")

# 	serial_num = '00320100'

# 	try:
# 		while True:
# 			char = get_char()

# 			if char.lower() == 'q':
# 				break
# 			elif char.lower() == 'w':
# 				ticcmd('--exit-safe-start', '-d', serial_num, '--position', str(10))
# 			elif char.lower() == 's':
# 				ticcmd('--exit-safe-start', '-d', serial_num, '--position', str(-10))
# 			elif char.lower() == 'x':
# 				ticcmd('--exit-safe-start', '-d', serial_num, '--position', str(0))
# 	finally:
# 		#ticcmd('--exit-safe-start', '-d', serial_num, '--velocity', str(0))
# 		print("-------")

# print("Ending program")
        
# def ticcmd(*args):
#     return subprocess.check_output(['ticcmd'] + list(args))
 
# status = yaml.load(ticcmd('-s', '--full'))
 
position = status['Current position']
print("Current position is {}.".format(position))

# #new_target = -200 if position > 0 else 200
# new_target = -100
# print("Setting target position to {}.".format(new_target))
# ticcmd('--exit-safe-start', '-d', '00320097', '--position', str(new_target))
