#!mainFile "../main.opy"

# 设置开始倒计时 TODO改为地图效果，这个时间控制不准
macro startRaceCountdown():
    bigMessage(race_players,"3")
    wait(1)
    bigMessage(race_players,"2")
    wait(1)
    bigMessage(race_players,"1")
    wait(1)
    bigMessage(race_players,"GO")
    wait(1)

macro Player.getStartLinePosition(index, center, spacing = 3.5):
    self.gSLP_offset = (index - center_index) * spacing
    self.gSLP_position = nearestWalkablePosition(center + start_line_direction * self.gSLP_offset)


macro Player.raceStartCamera():
    eventPlayer.camera_position_group = []
    eventPlayer.setCameraPosition(vect(-1.5, 1.7, 3), vect(0, 1.4, 0), 0.05)
    eventPlayer.setCameraPosition(vect(1.5, 0.5, 2), vect(0, 1.4, 0), 6)
    eventPlayer.setCameraPosition(vect(0.5, 1, -0.2), vect(-3, 0.1, 3), 0.05)
    eventPlayer.setCameraPosition(vect(-0.1, 1.3, -2.8), vect(0, 1.1, 0), 6)
    eventPlayer.startCameraGroup(eventPlayer.camera_position_group)
    eventPlayer.camera_position_group = []
    

rule "玩家排列到起跑线":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.WAITING
    @Condition eventPlayer.player_status == GameStatus.WAITING
    @Condition eventPlayer.has_joined_race

    eventPlayer.getStartLinePosition(
        race_players.index(eventPlayer), 
        start_line_info_list[0][0],
        1.5)

    if eventPlayer.isCommunicatingEmote():
        eventPlayer.cancelPrimaryAction()

    eventPlayer.startFacing(start_line_face_direction, 1000, Relativity.TO_WORLD)
    wait(0.1)
    eventPlayer.communicate(Comms.EMOTE_DOWN)
    wait(1.5)
    eventPlayer.setMoveSpeed(0)
    eventPlayer.teleport(eventPlayer.gSLP_position)
    eventPlayer.raceStartCamera()


rule "开始比赛_传送":
    @Event global
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.WAITING
    @Condition start_line_info_list[0] != null

    race_players = [p for p in getAllPlayers() if p.has_joined_race == true]
    center_index = floor(len(race_players) / 2)
    start_line_face_direction = start_line_info_list[0][1]
    start_line_direction = vect(-start_line_face_direction.z, 0, start_line_face_direction.x)
    race_players.player_status = GameStatus.WAITING
    
    wait(13) # 确保传送完成
    game_status = GameStatus.IN_PROGRESS
    
