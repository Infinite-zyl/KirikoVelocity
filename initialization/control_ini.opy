#!mainFile "../main.opy"

# 玩家默认禁用按钮
macro Player.disallowBtn():
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.RELOAD)
    eventPlayer.disallowButton(Button.MELEE)
    eventPlayer.disallowButton(Button.ULTIMATE)


rule "初始化控制_玩家":
    @Event eachPlayer
    @Condition isGameInProgress()

    eventPlayer.be_timestamp = []
    eventPlayer.ue_records = []

    eventPlayer.speed_percent_player = 100
    eventPlayer.be_time = 3

    eventPlayer.disallowBtn()
    eventPlayer.setStatusEffect(null, Status.UNKILLABLE, 9999) # 设置状态
    eventPlayer.on_board = false

    # 初始化目标速度
    eventPlayer.target_speed_player = 0
    # 初始化指代系数
    eventPlayer.rate = null
    
    # 将全局工坊变量值统一传递给玩家变量，方便后期单独修改/恢复
    eventPlayer.accel_rate_player = accel_rate
    eventPlayer.drag_rate_player = drag_rate
    eventPlayer.max_speed_ms_player = max_speed_ms
    eventPlayer.low_speed_ms_player = low_speed_ms
    eventPlayer.break_rate_player = break_rate
    eventPlayer.drift_factor_player = drift_factor
    eventPlayer.speed_boosted_rate_player = speed_boosted_rate
    eventPlayer.speed_boosted_time_player = speed_boosted_time
    eventPlayer.speed_boosted_ms_player = speed_boosted_ms


rule "滑板参数初始化_玩家":
    @Event eachPlayer
    @Condition eventPlayer.isCommunicatingEmote() == true
    @Condition isGameInProgress()
    
    # 上滑板
    eventPlayer.on_board = true

    # 初始化氮气加速
    eventPlayer.boosted_state = false

    eventPlayer.setMoveSpeed(0)
    eventPlayer.real_speed_ms = 0