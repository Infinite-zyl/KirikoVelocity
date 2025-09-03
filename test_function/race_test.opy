#!mainFile "../main.opy"

rule "HUD":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer == hostPlayer

    hudHeader(
        getAllPlayers(),
        "当前位置：{}\n面朝方向：{}\n起跑线信息: {}\n传送位置: {}".format(eventPlayer.getPosition(), eventPlayer.getFacingDirection(), start_line_info_list[0][0], eventPlayer.gSLP_position),
        sortOrder = 5,
        color = Color.YELLOW
    )
    hudHeader(
        getAllPlayers(),
        "当前比赛状态：{}".format(game_status),
        sortOrder = -1,
        color = Color.BLUE
    )

rule "模拟开始比赛":
    @Event global
    @Condition hostPlayer.isHoldingButton(Button.INTERACT)
    @Disabled

    smallMessage(hostPlayer, "模拟开始比赛")
    game_status = GameStatus.WAITING
    hostPlayer.has_joined_race = true