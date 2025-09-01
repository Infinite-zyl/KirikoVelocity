#!mainFile "../main.opy"

enum HUDType:
    PROGRESS_BAR = 0
    TEXT = 1
    MAP = 2

macro Player.addHudRecord(name, hudType, hudId):
    self.hud_records_i = len(self.hud_records)
    self.hud_records[self.hud_records_i] = [name, hudType, hudId]

macro Player.destroyHud(hudType):
    if hudType != 0:
        destroyHudText(self.hud_records[self.hud_records_i][2])
    else:
        destroyProgressBarHud(self.hud_records[self.hud_records_i][2])

macro Player.removeHudByName(name):
    for self.hud_records_i in range(len(self.hud_records)):
        if self.hud_records[self.hud_records_i][0] == name:
            self.destroyHud(self.hud_records[self.hud_records_i][1])
            del self.hud_records[self.hud_records_i]
            break
