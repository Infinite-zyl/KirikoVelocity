playervar is_holding # 是否正在按住按钮
playervar bHP_i # 循环变量
playervar bH_i # 循环变量

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


macro Player.buttonHold(button, hold_time = 3):
    self.is_holding = false
    for self.bH_i in range(hold_time):
        if self.isHoldingButton(button):
            wait(1)
        else:
            smallMessage(self, "操作已取消")
            return
    self.is_holding = true

rule "测试按钮按住方法":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.INTERACT)

    eventPlayer.buttonHoldPrint(button = Button.INTERACT, msg_box = ["按住{}启动测试用例流水线".format(Button.INTERACT), "3", "2", "1"])
    if eventPlayer.is_holding:
        bigMessage(eventPlayer, "按钮按住测试通过")