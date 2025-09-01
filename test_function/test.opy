#!mainFile "../main.opy"

rule "——————以下均为测试————————":
    @Delimiter

##!include "sound_effect.opy"

rule "视角初始化":
    @Event eachPlayer
    @Disabled
    
    eventPlayer.startCamera(raycast(eventPlayer + (Vector.UP * (distance(eventPlayer.getEyePosition(), eventPlayer) + 0.5)), raycast(eventPlayer + (Vector.UP * (distance(eventPlayer.getEyePosition(), eventPlayer) + 0.5)), eventPlayer + (Vector.UP * (distance(eventPlayer.getEyePosition(), eventPlayer) + 0.5)) + eventPlayer.getFacingDirection() * -3, null, eventPlayer, true).getHitPosition(), null, eventPlayer, true).getHitPosition(), eventPlayer + eventPlayer.getFacingDirection() * 100, 100)


rule "HUD":
    @Event eachPlayer
    @Condition isGameInProgress()
    
    # hudHeader(getAllPlayers(), "速度方向：{0}\n车头方向：{1}\n{2}".format(normalize(eventPlayer.getVelocity()), eventPlayer.getFacingDirection(), "向量插值：{0}".format(eventPlayer.getFacingDirection() * (1 - eventPlayer.drift_factor_player) + eventPlayer.getVelocity() * eventPlayer.drift_factor_player)), HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)
    # createBeam(getAllPlayers(), Beam.GOOD, vect(0, 2, 0) + eventPlayer.getPosition(), vect(0, 2, 0) + eventPlayer.getPosition() + eventPlayer.drift_dir * 10, Color.GREEN, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    # createBeam(getAllPlayers(), Beam.GOOD, vect(0, 2, 0) + eventPlayer.getPosition(), vect(0, 2, 0) + eventPlayer.getPosition() + normalize(eventPlayer.getVelocity()) * 10, Color.GREEN, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    hudHeader(getAllPlayers(), "当前位置：{0}".format(eventPlayer.getPosition()), HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING)

rule "删除进度条HUD":
    @Event eachPlayer
    @Condition isGameInProgress()
    @Condition eventPlayer.isHoldingButton(Button.RELOAD)
    @Disabled

    eventPlayer.removeHudByName("速度条")