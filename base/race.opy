#!mainFile "../main.opy"


macro Player.getStartLinePosition(index, center):
    # 偏移计算
    self.gSLP_forwardOffset = start_line_face_direction.backforward * (index * start_forward_spacing)
    self.gSLP_sideOffset = start_line_face_direction.clockwise * ((index % 2 - 0.5) * start_side_spacing)

    self.gSLP_position = nearestWalkablePosition(center + self.gSLP_forwardOffset + self.gSLP_sideOffset)    

# macro setCountDownBySecond(step_size = vect(0, 0, 0)):
#     for sCDBS_i in range(100):
#         count_down_position += step_size
#         if sCDBS_i > 30:
#             count_down_rgba[3] -= 5
#         wait(0.01)
    

macro Player.raceStartCamera():
    eventPlayer.camera_position_group = []
    eventPlayer.setCameraPosition(vect(-1.5, 1.7, 3), vect(0, 1.4, 0), 0.05)
    eventPlayer.setCameraPosition(vect(1.5, 0.5, 2), vect(0, 1.4, 0), 6)
    eventPlayer.setCameraPosition(vect(0.5, 1, -0.2), vect(-3, 0.1, 3), 0.05)
    eventPlayer.setCameraPosition(vect(0, 1.37, -2.82), vect(0, 1.0, 0), 6)
    eventPlayer.startCameraGroup(eventPlayer.camera_position_group)
    eventPlayer.camera_position_group = []


macro Player.disallowAllBtn():
    eventPlayer.disallowButton(Button.ABILITY_1)
    eventPlayer.disallowButton(Button.ABILITY_2)
    eventPlayer.disallowButton(Button.CROUCH)
    eventPlayer.disallowButton(Button.INTERACT)
    eventPlayer.disallowButton(Button.JUMP)
    eventPlayer.disallowButton(Button.MELEE)
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.RELOAD)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.ULTIMATE)


rule "强行上板":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.WAITING
    @Condition eventPlayer.player_status == GameStatus.WAITING
    @Condition eventPlayer.has_joined_race
    @Condition eventPlayer.isCommunicatingEmote() != true

    eventPlayer.communicate(Comms.EMOTE_DOWN)
    wait(0.1)
    if ruleCondition:
        loop()


rule "玩家排列到起跑线":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.WAITING
    @Condition eventPlayer.player_status == GameStatus.WAITING
    @Condition eventPlayer.has_joined_race

    eventPlayer.getStartLinePosition(
        race_players.index(eventPlayer), 
        start_line_info_list[0][0])

    if eventPlayer.isCommunicatingEmote():
        eventPlayer.cancelPrimaryAction()

    eventPlayer.disallowAllBtn()
    eventPlayer.setMoveSpeed(0)
    eventPlayer.startFacing(start_line_face_direction, 1000, Relativity.TO_WORLD)
    wait(0.1)
    eventPlayer.communicate(Comms.EMOTE_DOWN)
    wait(1.4)
    eventPlayer.teleport(eventPlayer.gSLP_position)
    wait(0.2)
    eventPlayer.count_down_world_position = worldVector(
                count_down_position, 
                eventPlayer, 
                Transform.ROTATION_AND_TRANSLATION)
    eventPlayer.raceStartCamera()
    # 让游戏进入到倒计时逻辑
    eventPlayer.player_status = GameStatus.COUNTDOWN


rule "创建倒计时地图效果":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.player_status == GameStatus.COUNTDOWN
    @Condition game_status == GameStatus.COUNTDOWN

    createInWorldText(
        eventPlayer, 
        count_down_text,
        eventPlayer.count_down_world_position - vect(0, 0.1, 0),
        10, 
        Clip.NONE, 
        WorldTextReeval.VISIBILITY_POSITION_STRING_AND_COLOR)
    eventPlayer.addUE(UeName.WORLDTEXT1, UeType.WORLDTEXT, getLastCreatedText())
    createEffect(
        eventPlayer, 
        Effect.SPHERE, 
        rgba(
            count_down_rgba[0], 
            count_down_rgba[1], 
            count_down_rgba[2], 
            count_down_rgba[3]),
        eventPlayer.count_down_world_position, 
        0.3, 
        EffectReeval.VISIBILITY_POSITION_RADIUS_AND_COLOR)
    eventPlayer.addUE(UeName.EFFECT1, UeType.EFFECT, getLastCreatedEntity())


rule "删除倒计时地图效果,并恢复镜头":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.player_status == GameStatus.IN_PROGRESS
    @Condition game_status == GameStatus.IN_PROGRESS

    eventPlayer.stopCamera()
    eventPlayer.stopFacing()
    wait(1)
    eventPlayer.removeUEByName(UeName.WORLDTEXT1)
    eventPlayer.removeUEByName(UeName.EFFECT1)
    

rule "开始比赛_传送":
    @Event global
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.WAITING
    @Condition start_line_info_list[0] != null

    race_players = [p for p in getAllPlayers() if p.has_joined_race == true]
    center_index = floor(len(race_players) / 2)
    start_line_face_direction = start_line_info_list[0][1]
    # 让玩家进入排列到起跑线逻辑
    race_players.player_status = GameStatus.WAITING


rule "开始比赛_倒计时":
    @Event global
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.WAITING
    @Condition len(race_players) == len([p for p in race_players if p.player_status == GameStatus.COUNTDOWN])


    game_status = GameStatus.COUNTDOWN
    count_down_text = "3"
    count_down_rgba = [255, 0, 0, 153] # 红色 60%透明度
    wait(1)
    count_down_rgba = [255, 0, 0, 153]
    count_down_text = "2"
    wait(1)
    count_down_rgba = [255, 0, 0, 153]
    count_down_text = "1"
    wait(1)
    count_down_rgba = [0, 0, 255, 153]
    # 让玩家进入开始比赛_正式开始逻辑
    game_status = GameStatus.IN_PROGRESS
    race_players.player_status = GameStatus.IN_PROGRESS
    count_down_text = "GO"