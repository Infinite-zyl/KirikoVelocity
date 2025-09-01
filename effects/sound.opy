#!mainFile "../main.opy"

macro Player.playBoostedSound():
    playEffect(getAllPlayers(), DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, self.getEyePosition(), 30)
    playEffect(getAllPlayers(), DynamicEffect.PHARAH_BARRAGE_EXPLOSION_SOUND, Color.WHITE, self.getEyePosition(), 150)
    playEffect(getAllPlayers(), DynamicEffect.PHARAH_CONCUSSIVE_BLAST_SOUND, Color.WHITE, self.getEyePosition(), 200)