
class dumpingIndicator:

    def __init__(self):

        #check if the steps of dumping automation are ready
        self.readyExtend = True
        self.readyDump = False
        self.readyRetract = False

    def SetExtend(self):
        self.readyExtend =  True

    def SetDump(self):
        self.readyDump = True
    
    def SetRetract(self):
        self.readyRetract = True 
    
    def endExtend(self):
        self.readyExtend = False
    
    def endDump(self):
        self.readyDump = False

    def endRetract(self):
        self.readyRetract = False