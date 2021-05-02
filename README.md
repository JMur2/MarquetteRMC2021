# MarquetteRMC2021

This is the repository for Marquette's Nasa Lunabotics Robotic Mining Competition (RMC) team for the 2020-2021 school year.

The repo contains all of our files for testing, running and operating the mining robot.  Many files are small testing scripts that were used to ensure the functionality of the hardware, as well as testing potential robotic operations for the system. These files are designed to work on the team's UDOO computer, which is running Ubuntu v18.04.  Any testing files should note if they work on a Windows environment, the Ubuntu environment, or both.  

The robot operates through the Robot Operating System (ROS) framework, which is controlled and maintained within the catkin_ws folder (note that the catkin_ws folder within this repo is a copy of the actual workspace on the UDOO computer). To run the robot's architecture on the UDOO computer, do the following steps:

	1. Check to ensure that all motor controllers are plugged into the computer via USB, as having them unplugged will cause errors on system startup.
	2. Open a terminal window and stay within the home directory
	3. In this directory, run ./pull_and_launch.sh to launch the software and startup the robot!
		- This sh file handles the "weirdness" that is caused by the catkin workspace and our repo being in different places. Here's what it does:
		1. Removes all the files from the catkin_ws/src/main/nodes folder (where all the ROS nodes are stored)
		2. Copies the newest version of the necessary files from the repository and pastes them in the nodes folder
		3. Runs chmod +x on all of the node files, making them executable files 
		4. Navigates into the catkin_ws and runs source devel/setup.bash, which prepares the launch files
		5. Runs catkin_make, which builds the workspace and all the new files 
		6. Runs roslaunch main main.launch which starts the code!
		- There is also a version of this file called ./launch.sh which doesn't bother getting the newest version of the files and simply runs the software

