#!mainFile "../main.opy"

macro Player.updateSpeed():
    if self.boosted_state:
        # 氮气加速状态下，目标速度是加速速度
        self.target_speed_player = self.speed_boosted_ms_player
        self.rate = self.speed_boosted_rate_player
    elif self.isHoldingButton(Button.PRIMARY_FIRE) and self.real_speed_ms < self.max_speed_ms_player:
        # 普通加速
        self.target_speed_player = self.max_speed_ms_player
        self.rate = self.accel_rate_player
    elif self.real_speed_ms > self.low_speed_ms_player:
        # 减速
        if self.isHoldingButton(Button.SECONDARY_FIRE):
            self.target_speed_player = self.low_speed_ms_player
            self.rate = self.break_rate_player
        else:
            self.target_speed_player = self.low_speed_ms_player
            self.rate = self.drag_rate_player
    else:
        self.target_speed_player = null

    if self.target_speed_player != null:
        self.real_speed_ms = lerp(self.real_speed_ms, self.target_speed_player, self.rate)
        self.updateSpeedPercent(self.real_speed_ms)


macro Player.applyDriftImpulse():
    if self.is_drifting:
        self.drift_forward_vector = localVector(Vector.FORWARD, self, Transform.ROTATION)
        self.drift_right_vector = localVector(Vector.RIGHT, self, Transform.ROTATION)
        self.drift_dir = self.drift_forward_vector + self.drift_right_vector * self.drift_factor_player
        self.applyImpulse(self.drift_dir, 1, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)


rule "速度控制":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isCommunicatingEmote()

    while ruleCondition:
        eventPlayer.updateSpeed()
        eventPlayer.applyDriftImpulse()
        wait(0.1)

rule "氮气加速":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isCommunicatingEmote()
    @Condition eventPlayer.isHoldingButton(Button.CROUCH)

    eventPlayer.boosted_state = true
    eventPlayer.playBoostedSound()
    eventPlayer.showBoostedEffects()
    wait(eventPlayer.speed_boosted_time_player)
    eventPlayer.boosted_state = false

rule "开始漂移":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isHoldingButton(Button.JUMP)
    eventPlayer.is_drifting = true

rule "结束漂移":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition not eventPlayer.isHoldingButton(Button.JUMP)
    eventPlayer.is_drifting = false

rule "二连跳":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isCommunicatingEmote()
    @Condition eventPlayer.isHoldingButton(Button.JUMP)
    @Disabled

    if eventPlayer.isInAir() == true:
        eventPlayer.applyImpulse(Vector.UP, 10, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
