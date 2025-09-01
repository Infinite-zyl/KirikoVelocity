rule "血条显示速度":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Disabled
    
    eventPlayer.setHealth(updateEveryFrame(1 if eventPlayer.getSpeed() / 0.278 < 1 else eventPlayer.getSpeed() / 0.278))
    wait(0.05)
    if ruleCondition:
        loop()