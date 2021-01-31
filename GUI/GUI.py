import tkinter as tk

from tkinter import *
import locomotion	#Error

top = tk.Tk()
humanGUI_Frame = Frame(top)
lidarGUI_Frame = Frame(top)

operationMode_Var = IntVar()

def humanGUI():
	humanGUI_Frame.grid(row = 1)
def lidarGUI():
	lidarGUI_Frame.grid(row =1)
def forward():
	locomotion.drive()	#Error

operationMode1 = Radiobutton(top, text = "Human", variable = operationMode_Var, value = 0, command= humanGUI)
operationMode1.grid(column = 5, row = 0)

operationMode2 = Radiobutton(top, text = "LIDAR", variable = operationMode_Var, value = 1, command= lidarGUI)
operationMode2.grid(column = 6, row = 0)

upButton = Button(humanGUI_Frame, text = "^", command = forward)
upButton.grid(column = 1, row = 0)

downButton = Button(humanGUI_Frame, text = "v")
downButton.grid(column = 1, row = 2)

rightButton = Button(humanGUI_Frame, text = ">")
rightButton.grid(column = 2, row = 1)

leftButton = Button(humanGUI_Frame, text = "<")
leftButton.grid(column = 0, row =1)

stopButton = Button(humanGUI_Frame, text = "!")
stopButton.grid(column=1, row = 1)


top.mainloop()