# our first python file!
import odrive

odrv0 = odrive.find_any()

axis = odrv0.axis0
motor = axis.motor
encoder = axis.endcoder

print(odrv0.vbus_voltage)
