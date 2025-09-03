#!mainFile "../main.opy"

/*
    start_p: 相机起始位置，相对于玩家
    look_forward_p: 相机望向位置，相对于玩家
    time: 镜头移动持续时间，单位秒
*/
macro Player.setCameraPosition(start_p, look_forward_p, time):
    self.cPG_i = len(self.camera_position_group)
    self.camera_position_group[self.cPG_i] = [
        worldVector(start_p, self, Transform.ROTATION_AND_TRANSLATION),
        worldVector(look_forward_p, self, Transform.ROTATION_AND_TRANSLATION),
        time]
    self.cPG_i = 0

macro Player.startCameraGroup(camera_position_group):
    for self.cPG_i in range(len(camera_position_group)):
        self.startCamera(
            self.camera_position_group[self.cPG_i][0], 
            self.camera_position_group[self.cPG_i][1], 
            7 / self.camera_position_group[self.cPG_i][2])
        wait(self.camera_position_group[self.cPG_i][2])
    self.cPG_i = 0
    self.stopCamera()