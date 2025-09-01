rule "速度控制(加速)":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.isCommunicatingEmote() == true
    @Condition eventPlayer.real_speed_ms < eventPlayer.max_speed_ms_player
    @Condition eventPlayer.boosted_state == false
    @Disabled
    
    eventPlayer.real_speed_ms += (eventPlayer.max_speed_ms_player - eventPlayer.getSpeed()) * eventPlayer.accel_rate_player
    eventPlayer.speed_percent_player = eventPlayer.real_speed_ms / BASE_SPEED * 100
    eventPlayer.setMoveSpeed(eventPlayer.speed_percent_player)
    wait(0.1)
    if ruleCondition:
        loop()


rule "速度控制(减速)":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == false
    @Condition eventPlayer.isCommunicatingEmote() == true
    @Condition eventPlayer.real_speed_ms > eventPlayer.low_speed_ms_player
    @Condition eventPlayer.boosted_state == false
    @Disabled
    
    
    if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
        eventPlayer.real_speed_ms -= eventPlayer.getSpeed() * eventPlayer.break_rate_player
    else:
        eventPlayer.real_speed_ms -= eventPlayer.getSpeed() * eventPlayer.drag_rate_player
    eventPlayer.speed_percent_player = eventPlayer.real_speed_ms / BASE_SPEED * 100
    eventPlayer.setMoveSpeed(eventPlayer.speed_percent_player)
    wait(0.1)
    if ruleCondition:
        loop()

        
rule "漂移":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.MELEE) == true
    @Condition eventPlayer.isCommunicatingEmote() == true
    @Condition eventPlayer.real_speed_ms > eventPlayer.low_speed_ms_player
    @Condition eventPlayer.boosted_state == false
    @Disabled
    
    eventPlayer.velocity_dir = normalize(eventPlayer.getVelocity())
    eventPlayer.drift_forward_vector = eventPlayer.getFacingDirection()
    eventPlayer.drift_dir = normalize(eventPlayer.velocity_dir * (1 - eventPlayer.drift_factor_player) + eventPlayer.drift_forward_vector * eventPlayer.drift_factor_player)
    eventPlayer.applyImpulse(eventPlayer.drift_dir, 20, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    wait(0.1)
    if ruleCondition:
        loop()


rule "速度控制":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isCommunicatingEmote()
    @Condition eventPlayer.boosted_state == false

    while ruleCondition:
        if eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) and eventPlayer.real_speed_ms < eventPlayer.max_speed_ms_player:
            eventPlayer.real_speed_ms += (eventPlayer.max_speed_ms_player - eventPlayer.getSpeed()) * eventPlayer.accel_rate_player # TODO 加速算法宏
        elif eventPlayer.real_speed_ms > eventPlayer.low_speed_ms_player:
            if eventPlayer.isHoldingButton(Button.SECONDARY_FIRE):
                eventPlayer.real_speed_ms -= eventPlayer.getSpeed() * eventPlayer.break_rate_player # TODO 减速算法宏
            else:
                eventPlayer.real_speed_ms -= eventPlayer.getSpeed() * eventPlayer.drag_rate_player # TODO 减速算法宏
            
        eventPlayer.updateSpeedPercent(eventPlayer.real_speed_ms)
        wait(0.1)
