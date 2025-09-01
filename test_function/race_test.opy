#!mainFile "../main.opy"

rule "HUD":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer == hostPlayer

    hudHeader(
        getAllPlayers(),
        "当前位置：{}\n面朝方向：{}\n起跑线信息: {}\n传送位置: {}".format(eventPlayer.getPosition(), eventPlayer.getFacingDirection(), start_line_info_list[0][0], APAS_position),
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
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.on_board
    @Condition eventPlayer.isHoldingButton(Button.RELOAD)

    eventPlayer.has_joined_race = true
    wait(1)
    game_status = GameStatus.IN_PROGRESS
    wait(10) 
    game_status = GameStatus.NONE
    wait(1)
    eventPlayer.has_joined_race = false
    destroyAllDummies()


rule "测试用例_竞速模式_起点_排列检查_所有玩家":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.INTERACT)
    @Disabled
    
    bigMessage(hostPlayer, "启动测试用例_竞速模式_起点_排列检查")
    createDummy(Hero.KIRIKO, Team.1, 1, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 2, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 3, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 4, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 5, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 6, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 7, hostPlayer, hostPlayer.getFacingDirection())
    bigMessage(hostPlayer, "已生成6个测试机器人")
    wait(2)
    getPlayersInSlot(1, Team.1).on_board = true
    getPlayersInSlot(1, Team.1).has_joined_race = true
    getPlayersInSlot(2, Team.1).on_board = true
    getPlayersInSlot(2, Team.1).has_joined_race = true 
    getPlayersInSlot(3, Team.1).on_board = true
    getPlayersInSlot(3, Team.1).has_joined_race = true
    getPlayersInSlot(4, Team.1).on_board = true
    getPlayersInSlot(4, Team.1).has_joined_race = true
    getPlayersInSlot(5, Team.1).on_board = true
    getPlayersInSlot(5, Team.1).has_joined_race = true
    getPlayersInSlot(6, Team.1).on_board = true
    getPlayersInSlot(6, Team.1).has_joined_race = true
    getPlayersInSlot(7, Team.1).on_board = true
    getPlayersInSlot(7, Team.1).has_joined_race = true
    bigMessage(hostPlayer, "测试机器人on_board和has_joined_race已设为true")
    bigMessage(hostPlayer, "请按换弹开始比赛")
    wait(10) # TODO后续改为主机玩家按下某个键来给测试用例标记成功或失败，然后退出用例，执行环境恢复

rule "测试用例_竞速模式_起点_排列检查_部分玩家":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.INTERACT)
    
    bigMessage(hostPlayer, "启动测试用例_竞速模式_起点_排列检查")
    createDummy(Hero.KIRIKO, Team.1, 1, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 2, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 3, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 4, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 5, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 6, hostPlayer, hostPlayer.getFacingDirection())
    createDummy(Hero.KIRIKO, Team.1, 7, hostPlayer, hostPlayer.getFacingDirection())
    bigMessage(hostPlayer, "已生成6个测试机器人")
    wait(2)
    getPlayersInSlot(1, Team.1).on_board = true
    getPlayersInSlot(1, Team.1).has_joined_race = true
    getPlayersInSlot(2, Team.1).on_board = true
    getPlayersInSlot(2, Team.1).has_joined_race = true 
    getPlayersInSlot(3, Team.1).on_board = false
    getPlayersInSlot(3, Team.1).has_joined_race = false
    getPlayersInSlot(4, Team.1).on_board = true
    getPlayersInSlot(4, Team.1).has_joined_race = true
    getPlayersInSlot(5, Team.1).on_board = true
    getPlayersInSlot(5, Team.1).has_joined_race = true
    getPlayersInSlot(6, Team.1).on_board = false
    getPlayersInSlot(6, Team.1).has_joined_race = true
    getPlayersInSlot(7, Team.1).on_board = true
    getPlayersInSlot(7, Team.1).has_joined_race = false
    bigMessage(hostPlayer, "仅有4个机器人符合要求")
    bigMessage(hostPlayer, "请按换弹开始比赛")
    wait(20) # TODO后续改为主机玩家按下某个键来给测试用例标记成功或失败，然后退出用例，执行环境恢复