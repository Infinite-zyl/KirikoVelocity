#!mainFile "../main.opy"
#!include "../info/start_line_info.opy"

rule "初始化竞速信息_玩家":
    @Event eachPlayer
    @Condition isGameInProgress()

    eventPlayer.has_joined_race = false # 重置为未加入比赛
    eventPlayer.player_status = GameStatus.IDLE # 初始化为无比赛状态
    eventPlayer.gSLP_sideOffset = 0 
    eventPlayer.gSLP_forwardOffset = 0 
    eventPlayer.gSLP_position = vect(0, 0, 0)
    eventPlayer.count_down_world_position = vect(0, 0, 0)

    
rule "初始化竞速信息_全局":
    @Event global
    @Condition isGameInProgress()

    start_forward_spacing = 1.7
    start_side_spacing = 3
    game_status = GameStatus.IDLE # 初始化为无比赛状态
    count_down_text = "" # 初始化倒计时文本
    start_line_face_direction = vect(0, 0, 0)
    race_players = []
    center_index = 0
    count_down_text = ""
    count_down_position = vect(0, 2, -0.3)
    sCDBS_i = 0