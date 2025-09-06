#!mainFile "../main.opy"


rule "进度条HUD_在做表情时可见":
    @Event eachPlayer
    @Condition isGameInProgress()
    
    hudSubtext(
        eventPlayer if eventPlayer.on_board else null, 
        "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", 
        HudPosition.TOP, 1, 
        Color.WHITE, 
        HudReeval.VISIBILITY)
    eventPlayer.addUE(UeName.TEXT1, UeType.TEXT, getLastCreatedText())
    progressBarHud(
        eventPlayer if eventPlayer.on_board else null, 
        updateEveryFrame(eventPlayer.getSpeed() / eventPlayer.speed_boosted_ms_player * 100), 
        "{0}KM/H".format(updateEveryFrame(eventPlayer.getSpeed() * KMH_TO_MS)), 
        HudPosition.TOP, 2, 
        Color.RED if eventPlayer.boosted_state else Color.WHITE)
    eventPlayer.addUE(UeName.PROGRESS_BAR1, UeType.PROGRESS_BAR, getLastCreatedText())

