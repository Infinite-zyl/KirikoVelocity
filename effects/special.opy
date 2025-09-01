#!mainFile "../main.opy"

macro Player.showBoostedEffects():
    playEffect(
        getAllPlayers(), 
        DynamicEffect.BRIGITTE_WHIP_SHOT_HEAL_AREA, Team.2, 
        updateEveryFrame(eventPlayer.getPosition() + Vector.UP * 1.5 + eventPlayer.getFacingDirection() * 2), 
        0)
    playEffect(
        getAllPlayers(), 
        DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT, Team.1, 
        updateEveryFrame(eventPlayer.getPosition() + Vector.UP * 0.1 + eventPlayer.getFacingDirection() * 2), 
        0)
    createEffect(
        getAllPlayers(), 
        Effect.ANA_NANO_BOOSTED_SOUND, 
        Color.WHITE, 
        eventPlayer.getPosition() + Vector.UP * 0.2 + Vector.BACKWARD * 0.2, 100, 
        EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
