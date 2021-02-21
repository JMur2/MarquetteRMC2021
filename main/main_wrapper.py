#!/usr/bin/env python

from PyQt5 import QtCore, QtGui, QtWidgets

import sys

import rospy
from std_msgs.msg import Int32

from main import Robot
#from main import Ui_Dialog

class mainWrapperROS:

    def __init__(self):
        self.main = Robot()
        #self.main = Ui_Dialog()
        
        self.publisher_manual = rospy.Publisher("main_manual", Int32, queue_size=1)
        self.publisher_automated = rospy.Publisher("main_automated", Int32, queue_size=1)
        #self.big_red_button = rospy.Publisher("emergency_stop", Int32, queue_size=10)

        self.app = QtWidgets.QApplication(sys.argv)
        self.Dialog = QtWidgets.QDialog()
        self.setupUi(self.Dialog)
        self.Dialog.show()
        sys.exit(self.app.exec_())

    def publish_data_manual(self, event=None, op=None):
        print("OPCODE returned: ", op)
        data = Int32(data=op)
        self.publisher_manual.publish(data)

    def publish_data_automated(self, event=None):
        d = self.main.get_data()
        data = Int32(data=d)
        self.publisher_automated.publish(data)

    def big_red_button(self):
        pass
        # this is where the emergency stop code will go
    
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(1029, 568)
        self.LidarView = QtWidgets.QGraphicsView(Dialog)
        self.LidarView.setGeometry(QtCore.QRect(10, 300, 701, 261))
        self.LidarView.setObjectName("LidarView")
        self.label = QtWidgets.QLabel(Dialog)
        self.label.setGeometry(QtCore.QRect(20, 270, 151, 21))
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.label_MC = QtWidgets.QLabel(Dialog)
        self.label_MC.setGeometry(QtCore.QRect(10, 0, 201, 61))
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label_MC.setFont(font)
        self.label_MC.setObjectName("label_MC")
        self.label_AC = QtWidgets.QLabel(Dialog)
        self.label_AC.setGeometry(QtCore.QRect(830, 10, 151, 31))
        font = QtGui.QFont()
        font.setPointSize(16)
        self.label_AC.setFont(font)
        self.label_AC.setObjectName("label_AC")
        self.Feedback = QtWidgets.QListView(Dialog)
        self.Feedback.setGeometry(QtCore.QRect(720, 300, 301, 261))
        self.Feedback.setObjectName("Feedback")
        self.line = QtWidgets.QFrame(Dialog)
        self.line.setGeometry(QtCore.QRect(0, 0, 1021, 16))
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.line_2 = QtWidgets.QFrame(Dialog)
        self.line_2.setGeometry(QtCore.QRect(0, 250, 1021, 16))
        self.line_2.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.line_3 = QtWidgets.QFrame(Dialog)
        self.line_3.setGeometry(QtCore.QRect(790, 10, 20, 251))
        self.line_3.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.MC_On = QtWidgets.QRadioButton(Dialog)
        self.MC_On.setGeometry(QtCore.QRect(10, 50, 171, 20))
        self.MC_On.setObjectName("MC_On")
        self.AC_On = QtWidgets.QRadioButton(Dialog)
        self.AC_On.setGeometry(QtCore.QRect(830, 50, 141, 20))
        self.AC_On.setObjectName("AC_On")
        self.check_Data = QtWidgets.QCheckBox(Dialog)
        self.check_Data.setGeometry(QtCore.QRect(140, 270, 21, 20))
        self.check_Data.setText("")
        self.check_Data.setObjectName("check_Data")
        self.label_2 = QtWidgets.QLabel(Dialog)
        self.label_2.setGeometry(QtCore.QRect(840, 80, 81, 16))
        self.label_2.setObjectName("label_2")
        self.line_4 = QtWidgets.QFrame(Dialog)
        self.line_4.setGeometry(QtCore.QRect(830, 90, 161, 16))
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.line_5 = QtWidgets.QFrame(Dialog)
        self.line_5.setGeometry(QtCore.QRect(10, 90, 761, 16))
        self.line_5.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_5.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_5.setObjectName("line_5")
        self.label_3 = QtWidgets.QLabel(Dialog)
        self.label_3.setGeometry(QtCore.QRect(10, 80, 81, 16))
        self.label_3.setObjectName("label_3")
        self.label_4 = QtWidgets.QLabel(Dialog)
        self.label_4.setGeometry(QtCore.QRect(80, 110, 71, 16))
        self.label_4.setObjectName("label_4")
        self.label_5 = QtWidgets.QLabel(Dialog)
        self.label_5.setGeometry(QtCore.QRect(320, 110, 51, 16))
        self.label_5.setObjectName("label_5")
        self.label_6 = QtWidgets.QLabel(Dialog)
        self.label_6.setGeometry(QtCore.QRect(680, 110, 55, 16))
        self.label_6.setObjectName("label_6")
        self.line_6 = QtWidgets.QFrame(Dialog)
        self.line_6.setGeometry(QtCore.QRect(230, 110, 20, 141))
        self.line_6.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_6.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_6.setObjectName("line_6")
        self.line_7 = QtWidgets.QFrame(Dialog)
        self.line_7.setGeometry(QtCore.QRect(650, 110, 20, 141))
        self.line_7.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_7.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_7.setObjectName("line_7")
        self.line_8 = QtWidgets.QFrame(Dialog)
        self.line_8.setGeometry(QtCore.QRect(10, 120, 761, 16))
        self.line_8.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_8.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_8.setObjectName("line_8")
        self.label_7 = QtWidgets.QLabel(Dialog)
        self.label_7.setGeometry(QtCore.QRect(260, 150, 55, 16))
        self.label_7.setObjectName("label_7")
        self.label_8 = QtWidgets.QLabel(Dialog)
        self.label_8.setGeometry(QtCore.QRect(260, 180, 31, 16))
        self.label_8.setObjectName("label_8")
        self.label_9 = QtWidgets.QLabel(Dialog)
        self.label_9.setGeometry(QtCore.QRect(260, 210, 55, 16))
        self.label_9.setObjectName("label_9")
        self.Initiate_A = QtWidgets.QPushButton(Dialog)
        self.Initiate_A.setGeometry(QtCore.QRect(860, 210, 93, 28))
        self.Initiate_A.setObjectName("pushButton")
        self.unfold = QtWidgets.QPushButton(Dialog)
        self.unfold.setGeometry(QtCore.QRect(360, 40, 111, 28))
        self.unfold.setObjectName("pushButton_2")
        self.Fold = QtWidgets.QPushButton(Dialog)
        self.Fold.setGeometry(QtCore.QRect(640, 40, 111, 28))
        self.Fold.setObjectName("pushButton_3")
        self.E_stop = QtWidgets.QPushButton(Dialog)
        self.E_stop.setGeometry(QtCore.QRect(500, 40, 111, 28))
        self.E_stop.setObjectName("pushButton_4")

        #Autonomy for the different subsystems 
        self.A_Dumping = QtWidgets.QRadioButton(Dialog)
        self.A_Dumping.setGeometry(QtCore.QRect(800, 110, 95, 20))
        self.A_Dumping.setObjectName("A_Dumping")
        self.A_Locomotion = QtWidgets.QRadioButton(Dialog)
        self.A_Locomotion.setGeometry(QtCore.QRect(800, 140, 95, 20))
        self.A_Locomotion.setObjectName("A_Locomotion")
        self.A_Digging_2 = QtWidgets.QRadioButton(Dialog)
        self.A_Digging_2.setGeometry(QtCore.QRect(800, 170, 95, 20))
        self.A_Digging_2.setObjectName("A_Digging_2")

        #Locomotion buttons created
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

        #Dump buttton created
        self.Dump = QtWidgets.QPushButton(Dialog)
        self.Dump.setGeometry(QtCore.QRect(680, 140, 81, 28))
        self.Dump.setObjectName("Dump")
        self.Dump.clicked.connect(self.Dump_handler)
        
        self.Dump_Store = QtWidgets.QPushButton(Dialog)
        self.Dump_Store.setGeometry(QtCore.QRect(680, 180, 81, 28))
        self.Dump_Store.setObjectName("Dump_Store")
        self.Dump_Store.clicked.connect(self.store_handler)

        self.Dump_Stop = QtWidgets.QPushButton(Dialog)
        self.Dump_Stop.setGeometry(QtCore.QRect(680, 220, 81, 28))
        self.Dump_Stop.setObjectName("Dump_Stop")
        self.Dump_Stop.clicked.connect(self.pitch_stop)

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
        
        self.Dig_CCW = QtWidgets.QPushButton(Dialog)
        self.Dig_CCW.setGeometry(QtCore.QRect(440, 170, 91, 28))
        self.Dig_CCW.setObjectName("Dig_CCW")
        self.Dig_CCW.clicked.connect(self.pitch_ccw)
        
        self.Dig_CW = QtWidgets.QPushButton(Dialog)
        self.Dig_CW.setGeometry(QtCore.QRect(330, 170, 91, 28))
        self.Dig_CW.setObjectName("Dig_CW")
        self.Dig_CW.clicked.connect(self.pitch_cw)

        self.Pitch_stop = QtWidgets.QPushButton(Dialog)
        self.Pitch_stop.setGeometry(QtCore.QRect(550, 170, 91, 28))
        self.Pitch_stop.setObjectName("Pitch_stop")
        self.Pitch_stop.clicked.connect(self.pitch_stop)
        
        self.Dig_DeH = QtWidgets.QPushButton(Dialog)
        self.Dig_DeH.setGeometry(QtCore.QRect(440, 200, 91, 28))
        self.Dig_DeH.setObjectName("Dig_DeH")
        self.Dig_DeH.clicked.connect(self.depth_decrease)
        
        self.Dig_InH = QtWidgets.QPushButton(Dialog)
        self.Dig_InH.setGeometry(QtCore.QRect(330, 200, 93, 28))
        self.Dig_InH.setObjectName("Dig_InH")
        self.Dig_InH.clicked.connect(self.depth_increase)
        
        self.Depth_Stop = QtWidgets.QPushButton(Dialog)
        self.Depth_Stop.setGeometry(QtCore.QRect(550, 200, 91, 28))
        self.Depth_Stop.setObjectName("Depth_Stop")
        self.Depth_Stop.clicked.connect(self.depth_stop)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

#-----------------------------------------------------------
# Handlers for locomotion buttons
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
        
#-----------------------------------------------------------
# Handlers for digging
#-----------------------------------------------------------
    def dig_handler(self):
        print("This is for digging")
        #Digit: 6
        
    def undig_handler(self):
        print("This is for undig")
        #Digit: 7
        
    def stop_dig(self):
        print("This is for stop digging")
        #Digit: 8
        
    def pitch_ccw(self):
        print("This is for pitch CCW")
        #Digit: 9
        
    def pitch_cw(self):
        print("This is for pitch cw")
        #Digit: 10
        
    def pitch_stop(self):
        print("This is for stop pitch")
        #Digit: 11
        
    def depth_increase(self):
        print("This is for depth increase")
        #Digit: 12
        
    def depth_decrease(self):
        print("This is for depth decrease")
        #Digit: 13
    
    def depth_stop(self):
        print("This is for depth stop")
        #Digit: 14
        
#-----------------------------------------------------------
# Handlers for digging
#-----------------------------------------------------------
    def Dump_handler(self):
        print("This is for sump")
        #Digit: 15
    
    def store_handler(self):
        print("This is for store")
        #Digit: 16
    
    def store_stop(self):
        print("This is for dump stop")
        #Digit: 17

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
        self.A_Digging_2.setText(_translate("Dialog", "Digging"))
        self.label_3.setText(_translate("Dialog", "Subsystems:"))
        self.label_4.setText(_translate("Dialog", "Locomotion"))
        self.label_5.setText(_translate("Dialog", "Digging"))
        self.label_6.setText(_translate("Dialog", "Dumping"))
        self.Loco_Right.setText(_translate("Dialog", "Right"))
        self.Dump.setText(_translate("Dialog", "Dump"))
        self.Dump_Store.setText(_translate("Dialog", "Store"))
        self.Dig.setText(_translate("Dialog", "Dig"))
        self.Dig_CCW.setText(_translate("Dialog", "CCW"))
        self.Dig_CW.setText(_translate("Dialog", "CW"))
        self.Dig_DeH.setText(_translate("Dialog", "Decrease "))
        self.Dig_InH.setText(_translate("Dialog", "Increase"))
        self.Loco_FW.setText(_translate("Dialog", "Foward"))
        self.Loco_Back.setText(_translate("Dialog", "Back"))
        self.Loco_Left.setText(_translate("Dialog", "Left"))
        self.label_7.setText(_translate("Dialog", "Zipper"))
        self.label_8.setText(_translate("Dialog", "Pitch"))
        self.label_9.setText(_translate("Dialog", "Depth"))
        self.unDig.setText(_translate("Dialog", "Undig"))
        self.dig_stop.setText(_translate("Dialog", "Stop"))
        self.Dump_Stop.setText(_translate("Dialog", "Stop"))
        self.Pitch_stop.setText(_translate("Dialog", "Stop"))
        self.Depth_Stop.setText(_translate("Dialog", "Stop"))
        self.Loco_stop.setText(_translate("Dialog", "Stop"))
        self.Initiate_A.setText(_translate("Dialog", "Initiate"))
        self.unfold.setText(_translate("Dialog", "Unfold"))
        self.Fold.setText(_translate("Dialog", "Fold"))
        self.E_stop.setText(_translate("Dialog", "Emergency Stop"))

if __name__ == "__main__":
    rospy.init_node("main_node")
        
    main_wrapper = mainWrapperROS()

    #rospy.on_shutdown() # stop everything, close UI

    rospy.loginfo("***Main node initialized successfully***")

    rospy.spin()
