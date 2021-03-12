import subprocess
import yaml
 
def ticcmd(*args):
  return subprocess.check_output(['ticcmd'] + list(args))
 
status = yaml.load(ticcmd('-s', '--full'))
 
position = status['Current position']
print("Current position is {}.".format(position))

new_target = -200 if position > 0 else 200
print("Setting target position to {}.".format(new_target))
ticcmd('--exit-safe-start', '-d', '00320097', '--position', str(new_target))
