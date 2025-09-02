#!mainFile "../main.opy"
#!include "../info/start_line_info.opy"

rule "初始化竞速信息_玩家":
    @Event eachPlayer
    @Condition isGameInProgress()

    eventPlayer.has_joined_race = false # 重置为未加入比赛

rule "初始化竞速信息_全局":
    @Event global
    @Condition isGameInProgress()

    start_spacing = 1.5 
    game_status = GameStatus.IDLE # 初始化为无比赛状态