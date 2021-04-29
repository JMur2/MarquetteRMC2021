#!/usr/bin/env python

"""
This file is the ROS wrapper for main.py
It handles the GUI, and operates as a hub for sending out information to the subassembly files through Publishers
"""

from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.Qt import Qt

import sys

import rospy
from std_msgs.msg import Int32
from std_msgs.msg import String

from main import Robot

class mainWrapperROS:

    #-------------------------------------------------------------------------------------------
    # Main Wrapper Initialization
    #
    # This initializes an object from main.py, the publishers used throughout this wrapper,
    # and handles running the GUI once all other operations complete
    #-------------------------------------------------------------------------------------------
    def __init__(self):
        self.main = Robot()
        
        # used to track emergency stop state for re-engaging after a stop
        self.stop_bool = True  
        
        # establish the main set of publishers
        self.publisher_manual = rospy.Publisher("main_manual", Int32, queue_size=1)
        self.publisher_automated = rospy.Publisher("main_automated", Int32, queue_size=1)
        self.emergency_stop = rospy.Publisher("emergency_stop", Int32, queue_size=10)
        rospy.Subscriber("chatter", String, self.callback_sensor)

        self.active_autonomy = "none"
        self.publish_data_manual(None, 6)

        # startup the GUI
        self.app = QtWidgets.QApplication(sys.argv)
        self.Dialog = QtWidgets.QDialog()
        self.setupUi(self.Dialog)
        self.Dialog.show()
        sys.exit(self.app.exec_())
    
    #-------------------------------------------------------------------------------------------
    # Prints sensor data - for testing
    #-------------------------------------------------------------------------------------------
    def callback_sensor(self, msg):
        print(msg.data)

    #-------------------------------------------------------------------------------------------
    # Publish manual control data
    #
    # Uses the manual publisher to send commands from the GUI to the subassembly
    #-------------------------------------------------------------------------------------------
    def publish_data_manual(self, event=None, op=None):
        data = Int32(data=op)
        self.publisher_manual.publish(data)

    #-------------------------------------------------------------------------------------------
    # Publish automated control data
    #
    # Automation controls are published with this publisher
    #-------------------------------------------------------------------------------------------
    def publish_data_automated(self, event=None, op=None):
        data = Int32(data=op)
        self.publisher_automated.publish(data)

    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(1403, 611)
        font = QtGui.QFont()
        font.setPointSize(16)
        font = QtGui.QFont()
        font.setPointSize(16)
        font = QtGui.QFont()
        font.setPointSize(16)
        #Labels of the GUI
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(10, 310, 151, 21))
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.label_MC = QtWidgets.QLabel(Dialog)
        self.label_MC.setGeometry(QtCore.QRect(10, 0, 201, 61))
        self.label_MC.setFont(font)
        self.label_MC.setObjectName("label_MC")
        self.label_AC = QtWidgets.QLabel(Dialog)
        self.label_AC.setGeometry(QtCore.QRect(1230, 10, 151, 31))
        self.label_AC.setFont(font)
        self.label_AC.setObjectName("label_AC")
        self.label_2 = QtWidgets.QLabel(Dialog)
        self.label_2.setGeometry(QtCore.QRect(1240, 80, 81, 16))
        self.label_2.setObjectName("label_2")
        self.label_3 = QtWidgets.QLabel(Dialog)
        self.label_3.setGeometry(QtCore.QRect(10, 80, 81, 16))
        self.label_3.setObjectName("label_3")
        self.label_4 = QtWidgets.QLabel(Dialog)
        self.label_4.setGeometry(QtCore.QRect(80, 110, 71, 16))
        self.label_4.setObjectName("label_4")
        self.label_5 = QtWidgets.QLabel(Dialog)
        self.label_5.setGeometry(QtCore.QRect(420, 110, 51, 16))
        self.label_5.setObjectName("label_5")
        self.label_6 = QtWidgets.QLabel(Dialog)
        self.label_6.setGeometry(QtCore.QRect(980, 110, 55, 16))
        self.label_6.setObjectName("label_6")
        self.label_7 = QtWidgets.QLabel(Dialog)
        self.label_7.setGeometry(QtCore.QRect(260, 150, 55, 16))
        self.label_7.setObjectName("label_7")
        self.label_8 = QtWidgets.QLabel(Dialog)
        self.label_8.setGeometry(QtCore.QRect(260, 230, 31, 16))
        self.label_8.setObjectName("label_8")
        self.label_9 = QtWidgets.QLabel(Dialog)
        self.label_9.setGeometry(QtCore.QRect(260, 270, 55, 16))
        self.label_9.setObjectName("label_9")
        self.label_10 = QtWidgets.QLabel(Dialog)
        self.label_10.setGeometry(QtCore.QRect(810, 150, 91, 16))
        self.label_10.setObjectName("label_10")
        self.label_11 = QtWidgets.QLabel(Dialog)
        self.label_11.setGeometry(QtCore.QRect(810, 190, 91, 16))
        self.label_11.setObjectName("label_11")
        self.label_12 = QtWidgets.QLabel(Dialog)
        self.label_12.setGeometry(QtCore.QRect(250, 190, 71, 16))
        self.label_12.setObjectName("label_12")
        
        #Lines 
        self.line = QtWidgets.QFrame(Dialog)
        self.line.setGeometry(QtCore.QRect(0, 0, 1401, 16))
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.line_2 = QtWidgets.QFrame(Dialog)
        self.line_2.setGeometry(QtCore.QRect(0, 290, 1401, 16))
        self.line_2.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.line_3 = QtWidgets.QFrame(Dialog)
        self.line_3.setGeometry(QtCore.QRect(1200, 10, 20, 281))
        self.line_3.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.line_4 = QtWidgets.QFrame(Dialog)
        self.line_4.setGeometry(QtCore.QRect(1230, 90, 161, 16))
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.line_5 = QtWidgets.QFrame(Dialog)
        self.line_5.setGeometry(QtCore.QRect(10, 90, 1191, 16))
        self.line_5.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_5.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_5.setObjectName("line_5")
        self.line_6 = QtWidgets.QFrame(Dialog)
        self.line_6.setGeometry(QtCore.QRect(230, 110, 20, 181))
        self.line_6.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_6.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_6.setObjectName("line_6")
        self.line_7 = QtWidgets.QFrame(Dialog)
        self.line_7.setGeometry(QtCore.QRect(770, 110, 20, 181))
        self.line_7.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_7.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_7.setObjectName("line_7")
        self.line_8 = QtWidgets.QFrame(Dialog)
        self.line_8.setGeometry(QtCore.QRect(10, 120, 1191, 16))
        self.line_8.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_8.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_8.setObjectName("line_8")
        
        #Live Data
        self.LidarView = QtWidgets.QGraphicsView(Dialog)
        self.LidarView.setGeometry(QtCore.QRect(10, 340, 951, 261))
        self.LidarView.setObjectName("LidarView")
        self.Feedback = QtWidgets.QListView(Dialog)
        self.Feedback.setGeometry(QtCore.QRect(970, 340, 421, 261))
        self.Feedback.setObjectName("Feedback")
        self.check_Data = QtWidgets.QCheckBox(Dialog)
        self.check_Data.setGeometry(QtCore.QRect(110, 310, 21, 20))
        self.check_Data.setText("data goes here")
        self.check_Data.setObjectName("check_Data")
        
        #activate autonomy or manual control
        self.MC_On = QtWidgets.QRadioButton(Dialog)
        self.MC_On.setGeometry(QtCore.QRect(10, 50, 171, 20))
        self.MC_On.setObjectName("MC_On")
        self.MC_On.toggled.connect(lambda:self.setControl(self.MC_On))
        self.AC_On = QtWidgets.QRadioButton(Dialog)
        self.AC_On.setGeometry(QtCore.QRect(1230, 50, 141, 20))
        self.AC_On.setObjectName("AC_On")
        self.AC_On.toggled.connect(lambda:self.setControl(self.AC_On))
        
        #General manual controls 
        self.unfold = QtWidgets.QPushButton(Dialog)
        self.unfold.setGeometry(QtCore.QRect(710, 50, 111, 28))
        self.unfold.setObjectName("unfold")
        self.Fold = QtWidgets.QPushButton(Dialog)
        self.Fold.setGeometry(QtCore.QRect(970, 50, 111, 28))
        self.Fold.setObjectName("Fold")
        self.E_stop = QtWidgets.QPushButton(Dialog)
        self.E_stop.setGeometry(QtCore.QRect(840, 50, 111, 28))
        self.E_stop.setObjectName("E_stop")
        self.E_stop.clicked.connect(self.emergency_stop_handler)
        self.E_stop.setAutoFillBackground(True)
        self.E_stop.setStyleSheet("background-color: red")

        #Autonomy for the different subsystems 
        self.A_Dumping = QtWidgets.QRadioButton(Dialog)
        self.A_Dumping.setGeometry(QtCore.QRect(1230, 110, 95, 20))
        self.A_Dumping.setObjectName("A_Dumping")
        self.A_Dumping.toggled.connect(lambda:self.autonomy_S(self.A_Dumping))
        
        self.A_Locomotion = QtWidgets.QRadioButton(Dialog)
        self.A_Locomotion.setGeometry(QtCore.QRect(1230, 140, 95, 20))
        self.A_Locomotion.setObjectName("A_Locomotion")
        self.A_Locomotion.toggled.connect(lambda:self.autonomy_S(self.A_Dumping))
        
        self.A_Digging = QtWidgets.QRadioButton(Dialog)
        self.A_Digging.setGeometry(QtCore.QRect(1230, 170, 95, 20))
        self.A_Digging.setObjectName("A_Digging")
        self.A_Digging.toggled.connect(lambda:self.autonomy_S(self.A_Dumping))
        
        self.Initiate_A = QtWidgets.QPushButton(Dialog)
        self.Initiate_A.setGeometry(QtCore.QRect(1260, 210, 93, 28))
        self.Initiate_A.setObjectName("Initiate_A")
        self.Initiate_A.clicked.connect(self.Begin_Autonomy)
        
        #Locomotion buttons created(updated)
        self.Loco_Right = QtWidgets.QPushButton(Dialog)
        self.Loco_Right.setGeometry(QtCore.QRect(160, 180, 51, 28))
        self.Loco_Right.setObjectName("Loco_Right")
        self.Loco_Right.clicked.connect(self.right_loco)

        self.Loco_FW = QtWidgets.QPushButton(Dialog)
        self.Loco_FW.setGeometry(QtCore.QRect(90, 140, 51, 28))
        self.Loco_FW.setObjectName("Loco_FW")
        self.Loco_FW.clicked.connect(self.foward_loco)
        
        self.Loco_Back = QtWidgets.QPushButton(Dialog)
        self.Loco_Back.setGeometry(QtCore.QRect(90, 220, 51, 28))
        self.Loco_Back.setObjectName("Loco_Back")
        self.Loco_Back.clicked.connect(self.back_loco)
        
        self.Loco_Left = QtWidgets.QPushButton(Dialog)
        self.Loco_Left.setGeometry(QtCore.QRect(20, 180, 51, 28))
        self.Loco_Left.setObjectName("Loco_Left")
        self.Loco_Left.clicked.connect(self.left_loco)
        
        self.Loco_stop = QtWidgets.QPushButton(Dialog)
        self.Loco_stop.setGeometry(QtCore.QRect(90, 180, 51, 28))
        self.Loco_stop.setObjectName("Loco_stop")
        self.Loco_stop.clicked.connect(self.stop_loco)

        self.Loco_disengage = QtWidgets.QPushButton(Dialog)
        self.Loco_disengage.setGeometry(QtCore.QRect(130, 260, 81, 28))
        self.Loco_disengage.setObjectName("Loco_disengage")
        self.Loco_disengage.clicked.connect(self.LocoDisengage)

        self.Loco_engage = QtWidgets.QPushButton(Dialog)
        self.Loco_engage.setGeometry(QtCore.QRect(20, 260, 81, 28))
        self.Loco_engage.setObjectName("Loco_engage")
        self.Loco_engage.clicked.connect(self.LocoEngage)


        #Dump buttton created
        self.Dump = QtWidgets.QPushButton(Dialog)
        self.Dump.setGeometry(QtCore.QRect(910, 180, 81, 28))
        self.Dump.setObjectName("Dump")
        self.Dump.clicked.connect(self.dump_handler)
        
        self.Retract_Dump = QtWidgets.QPushButton(Dialog)
        self.Retract_Dump.setGeometry(QtCore.QRect(1010, 180, 81, 28))
        self.Retract_Dump.setObjectName("Retract_Dump")
        self.Retract_Dump.clicked.connect(self.dump_retract)

        self.Dump_Stop = QtWidgets.QPushButton(Dialog)
        self.Dump_Stop.setGeometry(QtCore.QRect(1110, 180, 81, 28))
        self.Dump_Stop.setObjectName("Dump_Stop")
        self.Dump_Stop.clicked.connect(self.pitch_stop)
        
        self.Retract_Actuator = QtWidgets.QPushButton(Dialog)
        self.Retract_Actuator.setGeometry(QtCore.QRect(1010, 140, 81, 28))
        self.Retract_Actuator.setObjectName("Retract_Actuator")
        self.Retract_Actuator.clicked.connect(self.actuator_retract)
        
        self.Extend_Actuator = QtWidgets.QPushButton(Dialog)
        self.Extend_Actuator.setGeometry(QtCore.QRect(910, 140, 81, 28))
        self.Extend_Actuator.setObjectName("Extend_Actuator")
        self.Extend_Actuator.clicked.connect(self.actuator_extend)
        
        self.Actuator_Stop = QtWidgets.QPushButton(Dialog)
        self.Actuator_Stop.setGeometry(QtCore.QRect(1110, 140, 81, 28))
        self.Actuator_Stop.setObjectName("Actuator_Stop")
        self.Actuator_Stop.clicked.connect(self.stop_actuator)

        self.Engage_Dumping = QtWidgets.QPushButton(Dialog)
        self.Engage_Dumping.setGeometry(QtCore.QRect(860, 230, 111, 51))
        self.Engage_Dumping.setObjectName("Engage_Dumping")
        self.Engage_Dumping.clicked.connect(self.EngageDumping)

        self.Disengage_Dumping = QtWidgets.QPushButton(Dialog)
        self.Disengage_Dumping.setGeometry(QtCore.QRect(1060, 230, 111, 51))
        self.Disengage_Dumping.setObjectName("Disengage_Dumping")
        self.Disengage_Dumping.clicked.connect(self.DisengageDumping)

        #digging button declaration
        self.Dig = QtWidgets.QPushButton(Dialog)
        self.Dig.setGeometry(QtCore.QRect(330, 140, 91, 28))
        self.Dig.setObjectName("Dig")
        self.Dig.clicked.connect(self.dig_handler)

        self.unDig = QtWidgets.QPushButton(Dialog)
        self.unDig.setGeometry(QtCore.QRect(440, 140, 91, 28))
        self.unDig.setObjectName("unDig")
        self.unDig.clicked.connect(self.undig_handler)
        
        self.dig_stop = QtWidgets.QPushButton(Dialog)
        self.dig_stop.setGeometry(QtCore.QRect(550, 140, 91, 28))
        self.dig_stop.setObjectName("dig_stop")
        self.dig_stop.clicked.connect(self.stop_dig)
        
        self.Dig_CW = QtWidgets.QPushButton(Dialog)
        self.Dig_CW.setGeometry(QtCore.QRect(330, 180, 91, 28))
        self.Dig_CW.setObjectName("Dig_CW")
        self.Dig_CW.clicked.connect(self.pitch_cw)

        self.Dig_CCW = QtWidgets.QPushButton(Dialog)
        self.Dig_CCW.setGeometry(QtCore.QRect(440, 180, 91, 28))
        self.Dig_CCW.setObjectName("Dig_CCW")
        self.Dig_CCW.clicked.connect(self.pitch_ccw)

        self.Pitch_stop = QtWidgets.QPushButton(Dialog)
        self.Pitch_stop.setGeometry(QtCore.QRect(550, 180, 91, 28))
        self.Pitch_stop.setObjectName("Pitch_stop")
        self.Pitch_stop.clicked.connect(self.pitch_stop)
        
        self.Dig_DeH = QtWidgets.QPushButton(Dialog)
        self.Dig_DeH.setGeometry(QtCore.QRect(440, 260, 91, 28))
        self.Dig_DeH.setObjectName("Dig_DeH")
        self.Dig_DeH.clicked.connect(self.depth_decrease)
        
        self.Dig_InH = QtWidgets.QPushButton(Dialog)
        self.Dig_InH.setGeometry(QtCore.QRect(330, 260, 93, 28))
        self.Dig_InH.setObjectName("Dig_InH")
        self.Dig_InH.clicked.connect(self.depth_increase)
        
        self.Depth_Stop = QtWidgets.QPushButton(Dialog)
        self.Depth_Stop.setGeometry(QtCore.QRect(550, 260, 91, 28))
        self.Depth_Stop.setObjectName("Depth_Stop")
        self.Depth_Stop.clicked.connect(self.depth_stop)

        self.Engage_Digging = QtWidgets.QPushButton(Dialog)
        self.Engage_Digging.setGeometry(QtCore.QRect(660, 160, 111, 51))
        self.Engage_Digging.setObjectName("Engage_Digging")
        self.Engage_Digging.clicked.connect(self.EngageDigging)

        self.Disengage_Digging = QtWidgets.QPushButton(Dialog)
        self.Disengage_Digging.setGeometry(QtCore.QRect(660, 220, 111, 51))
        self.Disengage_Digging.setObjectName("Disengage_Digging")
        self.Disengage_Digging.clicked.connect(self.DisengageDigging)

        self.speed1 = QtWidgets.QPushButton(Dialog)
        self.speed1.setGeometry(QtCore.QRect(330, 220, 91, 28))
        self.speed1.setObjectName("speed1")
        self.speed1.clicked.connect(self.setSpeed_one)

        self.speed2 = QtWidgets.QPushButton(Dialog)
        self.speed2.setGeometry(QtCore.QRect(440, 220, 91, 28))
        self.speed2.setObjectName("speed2")
        self.speed2.clicked.connect(self.setSpeed_two)

        self.speed3 = QtWidgets.QPushButton(Dialog)
        self.speed3.setGeometry(QtCore.QRect(550, 220, 91, 28))
        self.speed3.setObjectName("speed3")
        self.speed3.clicked.connect(self.setSpeed_three)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    #-----------------------------------------------------------
    # Locomotion Button Handlers
    #-----------------------------------------------------------
    def foward_loco(self):
        self.publish_data_manual(None, 0)
        #print("This is for foward Locomotion")
    
    def left_loco(self):
        self.publish_data_manual(None, 1)
        #print("This is for left turn Locomotion")

    def back_loco(self):
        self.publish_data_manual(None, 2)
        #print("This is for backwards Locomotion")

    def right_loco(self):
        self.publish_data_manual(None, 3)
        #print("This is for right turn Locomotion")
        
    def stop_loco(self):
        self.publish_data_manual(None, 4)
        #print("This is for stop Locomotion")
    
    def LocoEngage(self):
        # enable buttons
        self.Loco_Right.setEnabled(True)
        self.Loco_Back.setEnabled(True)
        self.Loco_Left.setEnabled(True)
        self.Loco_FW.setEnabled(True)
        self.Loco_stop.setEnabled(True)
        # engage
        self.publish_data_manual(None, 5)

    def LocoDisengage(self):
        # disable buttons
        self.Loco_Right.setEnabled(False)
        self.Loco_Back.setEnabled(False)
        self.Loco_Left.setEnabled(False)
        self.Loco_FW.setEnabled(False)
        self.Loco_stop.setEnabled(False)
        # stop everything
        self.publish_data_manual(None, 4)
        self.publish_data_manual(None, 6)
        
#-----------------------------------------------------------
# Digging Button Handlers
#-----------------------------------------------------------
    def dig_handler(self):
        self.publish_data_manual(None, 7)
        #print("This is for digging")
        
    def undig_handler(self):
        self.publish_data_manual(None, 8)
        #print("This is for undig")
        
    def stop_dig(self):
        self.publish_data_manual(None, 9)
        #print("This is for stop digging")

    def depth_increase(self):
        self.publish_data_manual(None, 11)
        #print("This is for depth increase")
        
    def depth_decrease(self):
        self.publish_data_manual(None, 10)
        #print("This is for depth decrease")
    
    def depth_stop(self):
        self.publish_data_manual(None, 12)
        #print("This is for depth stop")

    def pitch_ccw(self):
        self.publish_data_manual(None, 14)
        #print("This is for stepper forward")

    def pitch_cw(self):
        self.publish_data_manual(None, 13)
        #print("This is for stepper backward")
        
    def pitch_stop(self):
        self.publish_data_manual(None, 15)
        #print("This is for stop pitch")

    def setSpeed_one(self):
        self.publish_data_manual(None, 16)
    
    def setSpeed_two(self):
        self.publish_data_manual(None, 17)
    
    def setSpeed_three(self):
        self.publish_data_manual(None, 18)

    def EngageDigging(self):
        self.Dig.setEnabled(True)
        self.Dig_CCW.setEnabled(True)
        self.Dig_CW.setEnabled(True)
        self.dig_stop.setEnabled(True)
        self.unDig.setEnabled(True)
        self.Pitch_stop.setEnabled(True)
        self.Dig_DeH.setEnabled(True)
        self.Dig_InH.setEnabled(True)
        self.Depth_Stop.setEnabled(True)
        self.speed1.setEnabled(True)
        self.speed2.setEnabled(True)
        self.speed3.setEnabled(True)
        self.publish_data_manual(None, 19)
    
    def DisengageDigging(self):
        self.Dig.setEnabled(False)
        self.Dig_CCW.setEnabled(False)
        self.Dig_CW.setEnabled(False)
        self.dig_stop.setEnabled(False)
        self.unDig.setEnabled(False)
        self.Pitch_stop.setEnabled(False)
        self.Dig_DeH.setEnabled(False)
        self.Dig_InH.setEnabled(False)
        self.Depth_Stop.setEnabled(False)
        self.speed1.setEnabled(False)
        self.speed2.setEnabled(False)
        self.speed3.setEnabled(False)
        self.publish_data_manual(None, 20)
        
    #-----------------------------------------------------------
    # Dumping Button Handlers
    #-----------------------------------------------------------
    def dump_handler(self):
        self.publish_data_manual(None, 21)
        #print("This is for stepper forward")
        
    def dump_retract(self):
        self.publish_data_manual(None, 22)
        #print("This is for stepper backward")
        
    def store_stop(self):
        self.publish_data_manual(None, 23)
        #print("This is for dump stop")
        
    def actuator_extend(self):
        self.publish_data_manual(None, 24)
        #print("This is for actuator extend")
        
    def actuator_retract(self):
        self.publish_data_manual(None, 25)
        #print("This is for actuator retract")
        
    def stop_actuator(self):
        self.publish_data_manual(None, 26)
        #print("This is for actuator stop")

    def EngageDumping(self):
        self.Dump.setEnabled(True)
        self.Retract_Actuator.setEnabled(True)
        self.Extend_Actuator.setEnabled(True)
        self.Actuator_Stop.setEnabled(True)
        self.Retract_Dump.setEnabled(True)
        self.Dump_Stop.setEnabled(True)
        self.publish_data_manual(None, 27)
        #print("This is for actuator retract")
        
    def DisengageDumping(self):
        self.Dump.setEnabled(False)
        self.Retract_Actuator.setEnabled(False)
        self.Extend_Actuator.setEnabled(False)
        self.Actuator_Stop.setEnabled(False)
        self.Retract_Dump.setEnabled(False)
        self.Dump_Stop.setEnabled(False)
        self.publish_data_manual(None, 28)

        #print("This is for actuator stop")


#-----------------------------------------------------------
# Handlers for Autonomy 
#-----------------------------------------------------------       
    def autonomy_S(self, b):
        if b.text() == "Dumping":
            self.active_autonomy = "Dumping"
            print(b.text())
        elif b.text() == "Locomotion":
            self.active_autonomy = "Locomotion"
            print(b.text())
        elif b.text() == "Digging":
            self.active_autonomy = "Digging"
            print(b.text())

    def Begin_Autonomy(self):
        if self.active_autonomy == "Dumping":
            #self.publish_data_automated(None, 1)
            print(self.active_autonomy)
            
        elif self.active_autonomy == "Locomotion":
            #self.publish_data_automated(None, 2)
            print(self.active_autonomy)
            
        elif self.active_autonomy == "Digging":
            #self.publish_data_automated(None, 3)
            print(self.active_autonomy)
            
        
    def setControl(self, b):
        if b.text() == "Activate Manual Controls":
            self.Loco_Right.setEnabled(True)
            self.Loco_Back.setEnabled(True)
            self.Loco_Left.setEnabled(True)
            self.Loco_FW.setEnabled(True)
            self.Loco_stop.setEnabled(True)

            self.Dig.setEnabled(True)
            self.Dig_CCW.setEnabled(True)
            self.Dig_CW.setEnabled(True)
            self.dig_stop.setEnabled(True)
            self.unDig.setEnabled(True)
            self.Pitch_stop.setEnabled(True)
            self.Dig_DeH.setEnabled(True)
            self.Dig_InH.setEnabled(True)
            self.Depth_Stop.setEnabled(True)
            self.speed1.setEnabled(True)
            self.speed2.setEnabled(True)
            self.speed3.setEnabled(True)

            self.Dump.setEnabled(True)
            self.Retract_Actuator.setEnabled(True)
            self.Extend_Actuator.setEnabled(True)
            self.Actuator_Stop.setEnabled(True)
            self.Retract_Dump.setEnabled(True)
            self.Dump_Stop.setEnabled(True)

            self.Initiate_A.setEnabled(False)
            pass
        elif b.text() == "Activate Autonomy ":
            self.Loco_Right.setEnabled(False)
            self.Loco_Back.setEnabled(False)
            self.Loco_Left.setEnabled(False)
            self.Loco_FW.setEnabled(False)
            self.Loco_stop.setEnabled(False)

            self.Dig.setEnabled(False)
            self.Dig_CCW.setEnabled(False)
            self.Dig_CW.setEnabled(False)
            self.dig_stop.setEnabled(False)
            self.unDig.setEnabled(False)
            self.Pitch_stop.setEnabled(False)
            self.Dig_DeH.setEnabled(False)
            self.Dig_InH.setEnabled(False)
            self.Depth_Stop.setEnabled(False)
            self.speed1.setEnabled(False)
            self.speed2.setEnabled(False)
            self.speed3.setEnabled(False)

            self.Dump.setEnabled(False)
            self.Retract_Actuator.setEnabled(False)
            self.Extend_Actuator.setEnabled(False)
            self.Actuator_Stop.setEnabled(False)
            self.Retract_Dump.setEnabled(False)
            self.Dump_Stop.setEnabled(False)

            self.Initiate_A.setEnabled(True)

    def set_opcode(self, opcode):
        self.holder = self.opcode

    #-------------------------------------------------------------------------------------------
    # Publish an emergency stop event
    #
    # In the event of an emergency, publish a stop command to all operations
    #-------------------------------------------------------------------------------------------
    def emergency_stop_handler(self):
        if self.stop_bool:
            data = Int32(data=1)

            self.stop_bool = False

            self.Loco_Right.setEnabled(False)
            self.Loco_Back.setEnabled(False)
            self.Loco_Left.setEnabled(False)
            self.Loco_FW.setEnabled(False)

            self.Dig.setEnabled(False)
            self.Dig_CCW.setEnabled(False)
            self.Dig_CW.setEnabled(False)
            self.dig_stop.setEnabled(False)
            self.unDig.setEnabled(False)
            self.Pitch_stop.setEnabled(False)
            self.Dig_DeH.setEnabled(False)
            self.Dig_InH.setEnabled(False)
            self.Depth_Stop.setEnabled(False)

            self.Dump.setEnabled(False)
            self.Retract_Actuator.setEnabled(False)
            self.Extend_Actuator.setEnabled(False)
            self.Actuator_Stop.setEnabled(False)
            self.Retract_Dump.setEnabled(False)
            self.Dump_Stop.setEnabled(False)

        elif not self.stop_bool:
            data = Int32(data=2)

            self.stop_bool = True

            self.Loco_Right.setEnabled(True)
            self.Loco_Back.setEnabled(True)
            self.Loco_Left.setEnabled(True)
            self.Loco_FW.setEnabled(True)

            self.Dig.setEnabled(True)
            self.Dig_CCW.setEnabled(True)
            self.Dig_CW.setEnabled(True)
            self.dig_stop.setEnabled(True)
            self.unDig.setEnabled(True)
            self.Pitch_stop.setEnabled(True)
            self.Dig_DeH.setEnabled(True)
            self.Dig_InH.setEnabled(True)
            self.Depth_Stop.setEnabled(True)

            self.Dump.setEnabled(True)
            self.Retract_Actuator.setEnabled(True)
            self.Extend_Actuator.setEnabled(True)
            self.Actuator_Stop.setEnabled(True)
            self.Retract_Dump.setEnabled(True)
            self.Dump_Stop.setEnabled(True)

        self.emergency_stop.publish(data)

    #--
    #
    #--
    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Dialog"))
        self.label.setText(_translate("Dialog", "Live Data"))
        self.label_MC.setText(_translate("Dialog", "Manual Controls "))
        self.label_AC.setText(_translate("Dialog", "Autonomy"))
        self.MC_On.setText(_translate("Dialog", "Activate Manual Controls"))
        self.AC_On.setText(_translate("Dialog", "Activate Autonomy "))
        self.label_2.setText(_translate("Dialog", "Subsystems:"))
        self.A_Dumping.setText(_translate("Dialog", "Dumping"))
        self.A_Locomotion.setText(_translate("Dialog", "Locomotion"))
        self.A_Digging.setText(_translate("Dialog", "Digging"))
        self.label_3.setText(_translate("Dialog", "Subsystems:"))
        self.label_4.setText(_translate("Dialog", "Locomotion"))
        self.label_5.setText(_translate("Dialog", "Digging"))
        self.label_6.setText(_translate("Dialog", "Dumping"))
        self.Loco_Right.setText(_translate("Dialog", "Right"))
        self.Retract_Actuator.setText(_translate("Dialog", "Retract"))
        self.Dump_Stop.setText(_translate("Dialog", "Stop"))
        self.Dig.setText(_translate("Dialog", "Dig"))
        self.Dig_CCW.setText(_translate("Dialog", "Backward"))
        self.Dig_CW.setText(_translate("Dialog", "Forward"))
        self.Dig_DeH.setText(_translate("Dialog", "Decrease "))
        self.Dig_InH.setText(_translate("Dialog", "Increase"))
        self.Loco_FW.setText(_translate("Dialog", "Foward"))
        self.Loco_Back.setText(_translate("Dialog", "Back"))
        self.Loco_Left.setText(_translate("Dialog", "Left"))
        self.label_7.setText(_translate("Dialog", "Zipper"))
        self.label_8.setText(_translate("Dialog", "Depth Speed"))
        self.label_9.setText(_translate("Dialog", "Depth"))
        self.unDig.setText(_translate("Dialog", "Undig"))
        self.dig_stop.setText(_translate("Dialog", "Stop"))
        self.Retract_Dump.setText(_translate("Dialog", "Retract"))
        self.Pitch_stop.setText(_translate("Dialog", "Stop"))
        self.Depth_Stop.setText(_translate("Dialog", "Stop"))
        self.Loco_stop.setText(_translate("Dialog", "Stop"))
        self.Initiate_A.setText(_translate("Dialog", "Initiate"))
        self.unfold.setText(_translate("Dialog", "Unfold"))
        self.Fold.setText(_translate("Dialog", "Fold"))
        self.E_stop.setText(_translate("Dialog", "Emergency Stop"))
        self.Extend_Actuator.setText(_translate("Dialog", "Extend"))
        self.Dump.setText(_translate("Dialog", "Dump"))
        self.Actuator_Stop.setText(_translate("Dialog", "Stop"))
        self.label_10.setText(_translate("Dialog", "Linear Actuator "))
        self.label_11.setText(_translate("Dialog", "Stepper Motor"))
        self.speed1.setText(_translate("Dialog", "Speed 1 (15)"))
        self.speed2.setText(_translate("Dialog", "Speed 2 (40)"))
        self.speed3.setText(_translate("Dialog", "Speed 3 (67)"))
        self.label_12.setText(_translate("Dialog", "Pitch"))
        self.Loco_disengage.setText(_translate("Dialog", "Disengage"))
        self.Loco_engage.setText(_translate("Dialog", "Engage"))
        self.Engage_Digging.setText(_translate("Dialog", "Engage Digging"))
        self.Disengage_Digging.setText(_translate("Dialog", "Disengage Digging"))
        self.Engage_Dumping.setText(_translate("Dialog", "Engage Dumping"))
        self.Disengage_Dumping.setText(_translate("Dialog", "Disengage Dumping"))

if __name__ == "__main__":
    rospy.init_node("main_node")
        
    main_wrapper = mainWrapperROS()

    rospy.on_shutdown(main_wrapper.big_red_button) # stop everything, close UI

    rospy.loginfo("***Main node initialized successfully***")

    rospy.spin()
