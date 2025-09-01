#!mainFile "../main.opy"

# 速度百分比计算
macro Player.updateSpeedPercent(speed_ms):
    self.speed_percent_player = speed_ms / BASE_SPEED * 100
    self.setMoveSpeed(self.speed_percent_player)