#!mainFile "../main.opy"

macro Player.buttonHoldPrint(button, msg_box = [], interval_time = 1):
    self.is_holding = false
    for self.bHP_i in range(len(msg_box)):
        if self.isHoldingButton(button):
            if msg_box[self.bHP_i] != "":
                smallMessage(self, msg_box[self.bHP_i])
            wait(interval_time)
        else:
            smallMessage(self, "操作已取消")
            return
    self.is_holding = true

macro Player.twoButtonHoldPrint(button1, button2, msg_box = [], interval_time = 1):
    self.is_holding = false
    for self.bHP_i in range(len(msg_box)):
        if self.isHoldingButton(button1) and self.isHoldingButton(button2):
            if msg_box[self.bHP_i] != "":
                smallMessage(self, msg_box[self.bHP_i])
            wait(interval_time)
        else:
            smallMessage(self, "操作已取消")
            return
    self.is_holding = true

macro Player.buttonHold(button, hold_time = 3):
    self.is_holding = false
    for self.bH_i in range(hold_time):
        if self.isHoldingButton(button):
            wait(1)
        else:
            smallMessage(self, "操作已取消")
            return
    self.is_holding = true

macro Player.twoButtonHold(button1, button2, hold_time = 3):
    self.is_holding = false
    for self.bH_i in range(hold_time):
        if self.isHoldingButton(button1) and self.isHoldingButton(button2):
            wait(1)
        else:
            smallMessage(self, "操作已取消")
            return
    self.is_holding = true