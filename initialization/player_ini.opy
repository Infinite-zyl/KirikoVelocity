#!mainFile "../main.opy"

# 相关HUD的数组初始化
macro Player.resetHUD():
    # 初始化进度条HUD数组
    self.progress_bar_hud_arr = []
    # 初始化文本HUD数组
    self.text_hud_arr = []
    # 初始化地图HUD数组
    self.map_text_hud_arr = []
    # 初始化HUD数组
    self.hud_records = []


# 玩家默认禁用按钮
macro Player.disallowBtn():
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.RELOAD)
    eventPlayer.disallowButton(Button.MELEE)
    eventPlayer.disallowButton(Button.ULTIMATE)


rule "初始化角色":
    @Event eachPlayer
    @Condition isGameInProgress()
    
    eventPlayer.resetHUD() 
    eventPlayer.disallowBtn()
    eventPlayer.setStatusEffect(null, Status.UNKILLABLE, 9999) # 设置状态
    eventPlayer.on_board = false

#初始化漂移参数   
macro Player.driftIni():
    eventPlayer.is_drifting = false
    eventPlayer.drift_dir = vect(0, 0, 0)
    eventPlayer.drift_right_vector = vect(0, 0, 0)
    eventPlayer.drift_forward_vector = vect(0, 0, 0)


rule "滑板角色初始化":
    @Event eachPlayer
    @Condition eventPlayer.isCommunicatingEmote() == true
    @Condition isGameInProgress()
    
    # 上滑板
    eventPlayer.on_board = true
    # 初始化目标速度
    eventPlayer.target_speed_player = null
    # 初始化指代系数
    eventPlayer.rate = null

    eventPlayer.driftIni()

    # 刚上滑板设置速度为怠速(最低速度)
    eventPlayer.real_speed_ms = low_speed_ms
    eventPlayer.updateSpeedPercent(eventPlayer.real_speed_ms)

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

    # 初始化氮气加速
    eventPlayer.boosted_state = false

rule "结束初始化":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isCommunicatingEmote() == false
    
    eventPlayer.on_board = false
    eventPlayer.setMoveSpeed(100)