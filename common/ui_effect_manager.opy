#!mainFile "../main.opy"
/* 主要负责 管理玩家身上的各种 UI/特效资源的 ID（记录、删除）。
    记录玩家创建的所有效果包括：
        HUD文本、进度条HUD、地图文本、效果
    数组ue_records内部形式：
    [
        [名称, 类型, ID],
        ...
    ]
    
*/

enum UeType :
    PROGRESS_BAR = 0
    TEXT
    WORLDTEXT
    EFFECT
    ICON

enum UeName:
    TEXT1 = "占位符"
    PROGRESS_BAR1 = "速度条"
    WORLDTEXT1 = "倒计时文本"
    EFFECT1 = "倒计时效果"
    EFFECT2 = "氮气加速音效"


macro Player.addUE(name, ueType, ueId):
    self.addUE_i = len(self.ue_records)
    self.ue_records[self.addUE_i] = [name, ueType, ueId]

# removeUEByName的私有方法，禁止外部调用
macro Player.destroyUE(ueType):
    if ueType == UeType.PROGRESS_BAR:
        destroyProgressBarHud(self.ue_records[self.rUE_i][2])
    elif ueType == UeType.TEXT:
        destroyHudText(self.ue_records[self.rUE_i][2])
    elif ueType == UeType.WORLDTEXT:
        destroyInWorldText(self.ue_records[self.rUE_i][2])
    elif ueType == UeType.EFFECT:
        destroyEffect(self.ue_records[self.rUE_i][2])
    else:
        destroyIcon(self.ue_records[self.rUE_i][2])

macro Player.removeUEByName(name):
    for self.rUE_i in range(len(self.ue_records)):
        if self.ue_records[self.rUE_i][0] == name:
            self.destroyUE(self.ue_records[self.rUE_i][1])
            del self.ue_records[self.rUE_i]
            break