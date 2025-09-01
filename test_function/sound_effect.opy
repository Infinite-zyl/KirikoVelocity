playervar sfxIndex


rule "下一音效":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    
    eventPlayer.sfxIndex = (eventPlayer.sfxIndex + 1) % 97
    if eventPlayer.sfxIndex == 0:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENADE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷爆炸效果"))
    elif eventPlayer.sfxIndex == 1:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENADE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷爆炸声音"))
    elif eventPlayer.sfxIndex == 2:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENADE_INCREASED_HEALING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷增疗声音"))
    elif eventPlayer.sfxIndex == 3:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENAGE_NO_HEALING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷禁疗声音"))
    elif eventPlayer.sfxIndex == 4:
        playEffect(eventPlayer, DynamicEffect.ANA_SLEEPING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜麻醉镖声音"))
    elif eventPlayer.sfxIndex == 5:
        playEffect(eventPlayer, DynamicEffect.ASHE_DYNAMITE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("艾什延时雷管爆炸效果"))
    elif eventPlayer.sfxIndex == 6:
        playEffect(eventPlayer, DynamicEffect.ASHE_DYNAMITE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("艾什延时雷管爆炸声音"))
    elif eventPlayer.sfxIndex == 7:
        playEffect(eventPlayer, DynamicEffect.BAD_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有害爆炸"))
    elif eventPlayer.sfxIndex == 8:
        playEffect(eventPlayer, DynamicEffect.BAD_PICKUP_EFFECT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有害选择效果"))
    elif eventPlayer.sfxIndex == 9:
        playEffect(eventPlayer, DynamicEffect.BAPTISTE_BIOTIC_LAUNCHER_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("巴蒂斯特生化榴弹枪爆炸效果"))
    elif eventPlayer.sfxIndex == 10:
        playEffect(eventPlayer, DynamicEffect.BAPTISTE_BIOTIC_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("巴蒂斯特生化榴弹枪爆炸声音"))
    elif eventPlayer.sfxIndex == 11:
        playEffect(eventPlayer, DynamicEffect.BASTION_TANK_CANNON_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“堡垒”坦克炮爆炸效果"))
    elif eventPlayer.sfxIndex == 12:
        playEffect(eventPlayer, DynamicEffect.BASTION_TANK_CANNON_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“堡垒”坦克炮爆炸声音"))
    elif eventPlayer.sfxIndex == 13:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_ARMOR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包护甲效果"))
    elif eventPlayer.sfxIndex == 14:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_ARMOR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包护甲声音"))
    elif eventPlayer.sfxIndex == 15:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包击中效果"))
    elif eventPlayer.sfxIndex == 16:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包击中声音"))
    elif eventPlayer.sfxIndex == 17:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_WHIP_SHOT_HEAL_AREA, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔流星飞锤范围治疗效果"))
    elif eventPlayer.sfxIndex == 18:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_WHIP_SHOT_HEAL_AREA_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔流星飞锤范围治疗声音"))
    elif eventPlayer.sfxIndex == 19:
        playEffect(eventPlayer, DynamicEffect.BUFF_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("状态爆炸声音"))
    elif eventPlayer.sfxIndex == 20:
        playEffect(eventPlayer, DynamicEffect.BUFF_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("正面状态施加声音"))
    elif eventPlayer.sfxIndex == 21:
        playEffect(eventPlayer, DynamicEffect.CASSIDY_FLASHBANG_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卡西迪闪光弹爆炸效果"))
    elif eventPlayer.sfxIndex == 22:
        playEffect(eventPlayer, DynamicEffect.CASSIDY_FLASHBANG_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卡西迪闪光弹爆炸声音"))
    elif eventPlayer.sfxIndex == 23:
        playEffect(eventPlayer, DynamicEffect.DEBUFF_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("负面状态施加声音"))
    elif eventPlayer.sfxIndex == 24:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”毁天灭地击中效果"))
    elif eventPlayer.sfxIndex == 25:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”毁天灭地击中声音"))
    elif eventPlayer.sfxIndex == 26:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳击中效果"))
    elif eventPlayer.sfxIndex == 27:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳击中声音"))
    elif eventPlayer.sfxIndex == 28:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_LEAP, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳跳跃效果"))
    elif eventPlayer.sfxIndex == 29:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_LEAP_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳跳跃声音"))
    elif eventPlayer.sfxIndex == 30:
        playEffect(eventPlayer, DynamicEffect.DVA_MICRO_MISSILES_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va微型飞弹爆炸效果"))
    elif eventPlayer.sfxIndex == 31:
        playEffect(eventPlayer, DynamicEffect.DVA_MICRO_MISSILES_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va微型飞弹爆炸声音"))
    elif eventPlayer.sfxIndex == 32:
        playEffect(eventPlayer, DynamicEffect.DVA_SELF_DESTRUCT_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va自毁爆炸效果"))
    elif eventPlayer.sfxIndex == 33:
        playEffect(eventPlayer, DynamicEffect.DVA_SELF_DESTRUCT_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va自毁爆炸声音"))
    elif eventPlayer.sfxIndex == 34:
        playEffect(eventPlayer, DynamicEffect.ECHO_STICKY_BOMB_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“回声”黏性炸弹爆炸效果"))
    elif eventPlayer.sfxIndex == 35:
        playEffect(eventPlayer, DynamicEffect.ECHO_STICKY_BOMB_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“回声”黏性炸弹爆炸声音"))
    elif eventPlayer.sfxIndex == 36:
        playEffect(eventPlayer, DynamicEffect.GOOD_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有益爆炸"))
    elif eventPlayer.sfxIndex == 37:
        playEffect(eventPlayer, DynamicEffect.GOOD_PICKUP_EFFECT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有益选择效果"))
    elif eventPlayer.sfxIndex == 38:
        playEffect(eventPlayer, DynamicEffect.HANZO_SONIC_ARROW_INITIAL_PULSE, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("半藏音初始脉冲效果"))
    elif eventPlayer.sfxIndex == 39:
        playEffect(eventPlayer, DynamicEffect.HANZO_SONIC_ARROW_INITIAL_PULSE_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("半藏音初始脉冲声音"))
    elif eventPlayer.sfxIndex == 40:
        playEffect(eventPlayer, DynamicEffect.HEAL_TARGET_ACTIVE, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("治疗目标激活效果"))
    elif eventPlayer.sfxIndex == 41:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_CONCUSSION_MINE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”震荡地雷爆炸效果"))
    elif eventPlayer.sfxIndex == 42:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_CONCUSSION_MINE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”震荡地雷爆炸声音"))
    elif eventPlayer.sfxIndex == 43:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”榴弹发射器爆炸效果"))
    elif eventPlayer.sfxIndex == 44:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”榴弹发射器爆炸声音"))
    elif eventPlayer.sfxIndex == 45:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”炸弹轮胎爆炸效果"))
    elif eventPlayer.sfxIndex == 46:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”炸弹轮胎爆炸声音"))
    elif eventPlayer.sfxIndex == 47:
        playEffect(eventPlayer, DynamicEffect.LUCIO_SOUND_BARRIER_CAST, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卢西奥音障施放效果"))
    elif eventPlayer.sfxIndex == 48:
        playEffect(eventPlayer, DynamicEffect.LUCIO_SOUND_BARRIER_CAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卢西奥音障施放声音"))
    elif eventPlayer.sfxIndex == 49:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散消失效果"))
    elif eventPlayer.sfxIndex == 50:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散消失声音"))
    elif eventPlayer.sfxIndex == 51:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散重现效果"))
    elif eventPlayer.sfxIndex == 52:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散重现声音"))
    elif eventPlayer.sfxIndex == 53:
        playEffect(eventPlayer, DynamicEffect.ORISA_HALT_IMPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("奥丽莎站住别动内爆效果"))
    elif eventPlayer.sfxIndex == 54:
        playEffect(eventPlayer, DynamicEffect.ORISA_HALT_IMPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("奥丽莎站住别动内爆声音"))
    elif eventPlayer.sfxIndex == 55:
        playEffect(eventPlayer, DynamicEffect.PHARAH_BARRAGE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭弹幕爆炸效果"))
    elif eventPlayer.sfxIndex == 56:
        playEffect(eventPlayer, DynamicEffect.PHARAH_BARRAGE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭弹幕爆炸声音"))
    elif eventPlayer.sfxIndex == 57:
        playEffect(eventPlayer, DynamicEffect.PHARAH_CONCUSSIVE_BLAST, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”震荡冲击效果"))
    elif eventPlayer.sfxIndex == 58:
        playEffect(eventPlayer, DynamicEffect.PHARAH_CONCUSSIVE_BLAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”震荡冲击声音"))
    elif eventPlayer.sfxIndex == 59:
        playEffect(eventPlayer, DynamicEffect.PHARAH_ROCKET_LAUNCHER_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭发射器爆炸效果"))
    elif eventPlayer.sfxIndex == 60:
        playEffect(eventPlayer, DynamicEffect.PHARAH_ROCKET_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭发射器爆炸声音"))
    elif eventPlayer.sfxIndex == 61:
        playEffect(eventPlayer, DynamicEffect.REAPER_WRAITH_FORM_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“死神”幽灵形态声音"))
    elif eventPlayer.sfxIndex == 62:
        playEffect(eventPlayer, DynamicEffect.REINHARDT_FIRE_STRIKE_TARGET_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莱因哈特烈焰打击目标击中效果"))
    elif eventPlayer.sfxIndex == 63:
        playEffect(eventPlayer, DynamicEffect.REINHARDT_FIRE_STRIKE_TARGET_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莱因哈特烈焰打击目标击中声音"))
    elif eventPlayer.sfxIndex == 64:
        playEffect(eventPlayer, DynamicEffect.RING_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("环状爆炸"))
    elif eventPlayer.sfxIndex == 65:
        playEffect(eventPlayer, DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("环状爆炸声音"))
    elif eventPlayer.sfxIndex == 66:
        playEffect(eventPlayer, DynamicEffect.SIGMA_ACCRETION_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”质量吸附击中效果"))
    elif eventPlayer.sfxIndex == 67:
        playEffect(eventPlayer, DynamicEffect.SIGMA_ACCRETION_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”质量吸附击中声音"))
    elif eventPlayer.sfxIndex == 68:
        playEffect(eventPlayer, DynamicEffect.SIGMA_HYPERSPHERE_IMPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”超能之球内爆效果"))
    elif eventPlayer.sfxIndex == 69:
        playEffect(eventPlayer, DynamicEffect.SIGMA_HYPERSPHERE_IMPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”超能之球内爆声音"))
    elif eventPlayer.sfxIndex == 70:
        playEffect(eventPlayer, DynamicEffect.SOLDIER_SPRINT_START_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“士兵：76”疾跑开始声音"))
    elif eventPlayer.sfxIndex == 71:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_EMP_EXPLOSION_EFFECT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”电磁脉冲爆炸效果"))
    elif eventPlayer.sfxIndex == 72:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_EMP_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”电磁脉冲爆炸声音"))
    elif eventPlayer.sfxIndex == 73:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_LOGO, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”标志效果"))
    elif eventPlayer.sfxIndex == 74:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_LOGO_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”标志声音"))
    elif eventPlayer.sfxIndex == 75:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATING_MATERIAL, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动材料效果"))
    elif eventPlayer.sfxIndex == 76:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动声音"))
    elif eventPlayer.sfxIndex == 77:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_DISAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动消失效果"))
    elif eventPlayer.sfxIndex == 78:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动消失声音"))
    elif eventPlayer.sfxIndex == 79:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动重现效果"))
    elif eventPlayer.sfxIndex == 80:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动重现声音"))
    elif eventPlayer.sfxIndex == 81:
        playEffect(eventPlayer, DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“秩序之光”传送面板重现效果"))
    elif eventPlayer.sfxIndex == 82:
        playEffect(eventPlayer, DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“秩序之光”传送面板重现声音"))
    elif eventPlayer.sfxIndex == 83:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_DISAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空”闪回消失效果"))
    elif eventPlayer.sfxIndex == 84:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空”闪回消失声音"))
    elif eventPlayer.sfxIndex == 85:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空“闪回重现效果"))
    elif eventPlayer.sfxIndex == 86:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空”闪回重现声音"))
    elif eventPlayer.sfxIndex == 87:
        playEffect(eventPlayer, DynamicEffect.WIDOWMAKER_VENOM_MINE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑百合“剧毒诡雷爆炸效果"))
    elif eventPlayer.sfxIndex == 88:
        playEffect(eventPlayer, DynamicEffect.WIDOWMAKER_VENOM_MINE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑百合”剧毒诡雷爆炸声音"))
    elif eventPlayer.sfxIndex == 89:
        playEffect(eventPlayer, DynamicEffect.WINSTON_JUMP_PACK_LANDING, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("温斯顿喷射背包着陆效果"))
    elif eventPlayer.sfxIndex == 90:
        playEffect(eventPlayer, DynamicEffect.WINSTON_JUMP_PACK_LANDING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("温斯顿喷射背包着陆声音"))
    elif eventPlayer.sfxIndex == 91:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”地雷禁区爆炸效果"))
    elif eventPlayer.sfxIndex == 92:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”地雷禁区爆炸声音"))
    elif eventPlayer.sfxIndex == 93:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”重力坠击击中效果"))
    elif eventPlayer.sfxIndex == 94:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”重力坠击击中声音"))
    elif eventPlayer.sfxIndex == 95:
        playEffect(eventPlayer, DynamicEffect.ZARYA_PARTICLE_CANNON_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("查莉娅粒子炮爆炸效果"))
    elif eventPlayer.sfxIndex == 96:
        playEffect(eventPlayer, DynamicEffect.ZARYA_PARTICLE_CANNON_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("查莉娅粒子炮爆炸声音"))
    wait(0.25)


rule "上一音效":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    
    eventPlayer.sfxIndex = (eventPlayer.sfxIndex - 1 + 97) % 97
    if eventPlayer.sfxIndex == 0:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENADE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷爆炸效果"))
    elif eventPlayer.sfxIndex == 1:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENADE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷爆炸声音"))
    elif eventPlayer.sfxIndex == 2:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENADE_INCREASED_HEALING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷增疗声音"))
    elif eventPlayer.sfxIndex == 3:
        playEffect(eventPlayer, DynamicEffect.ANA_BIOTIC_GRENAGE_NO_HEALING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜生物手雷禁疗声音"))
    elif eventPlayer.sfxIndex == 4:
        playEffect(eventPlayer, DynamicEffect.ANA_SLEEPING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("安娜麻醉镖声音"))
    elif eventPlayer.sfxIndex == 5:
        playEffect(eventPlayer, DynamicEffect.ASHE_DYNAMITE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("艾什延时雷管爆炸效果"))
    elif eventPlayer.sfxIndex == 6:
        playEffect(eventPlayer, DynamicEffect.ASHE_DYNAMITE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("艾什延时雷管爆炸声音"))
    elif eventPlayer.sfxIndex == 7:
        playEffect(eventPlayer, DynamicEffect.BAD_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有害爆炸"))
    elif eventPlayer.sfxIndex == 8:
        playEffect(eventPlayer, DynamicEffect.BAD_PICKUP_EFFECT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有害选择效果"))
    elif eventPlayer.sfxIndex == 9:
        playEffect(eventPlayer, DynamicEffect.BAPTISTE_BIOTIC_LAUNCHER_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("巴蒂斯特生化榴弹枪爆炸效果"))
    elif eventPlayer.sfxIndex == 10:
        playEffect(eventPlayer, DynamicEffect.BAPTISTE_BIOTIC_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("巴蒂斯特生化榴弹枪爆炸声音"))
    elif eventPlayer.sfxIndex == 11:
        playEffect(eventPlayer, DynamicEffect.BASTION_TANK_CANNON_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“堡垒”坦克炮爆炸效果"))
    elif eventPlayer.sfxIndex == 12:
        playEffect(eventPlayer, DynamicEffect.BASTION_TANK_CANNON_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“堡垒”坦克炮爆炸声音"))
    elif eventPlayer.sfxIndex == 13:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_ARMOR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包护甲效果"))
    elif eventPlayer.sfxIndex == 14:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_ARMOR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包护甲声音"))
    elif eventPlayer.sfxIndex == 15:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包击中效果"))
    elif eventPlayer.sfxIndex == 16:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_REPAIR_PACK_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔恢复包击中声音"))
    elif eventPlayer.sfxIndex == 17:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_WHIP_SHOT_HEAL_AREA, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔流星飞锤范围治疗效果"))
    elif eventPlayer.sfxIndex == 18:
        playEffect(eventPlayer, DynamicEffect.BRIGITTE_WHIP_SHOT_HEAL_AREA_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("布丽吉塔流星飞锤范围治疗声音"))
    elif eventPlayer.sfxIndex == 19:
        playEffect(eventPlayer, DynamicEffect.BUFF_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("状态爆炸声音"))
    elif eventPlayer.sfxIndex == 20:
        playEffect(eventPlayer, DynamicEffect.BUFF_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("正面状态施加声音"))
    elif eventPlayer.sfxIndex == 21:
        playEffect(eventPlayer, DynamicEffect.CASSIDY_FLASHBANG_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卡西迪闪光弹爆炸效果"))
    elif eventPlayer.sfxIndex == 22:
        playEffect(eventPlayer, DynamicEffect.CASSIDY_FLASHBANG_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卡西迪闪光弹爆炸声音"))
    elif eventPlayer.sfxIndex == 23:
        playEffect(eventPlayer, DynamicEffect.DEBUFF_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("负面状态施加声音"))
    elif eventPlayer.sfxIndex == 24:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”毁天灭地击中效果"))
    elif eventPlayer.sfxIndex == 25:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_METEOR_STRIKE_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”毁天灭地击中声音"))
    elif eventPlayer.sfxIndex == 26:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳击中效果"))
    elif eventPlayer.sfxIndex == 27:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳击中声音"))
    elif eventPlayer.sfxIndex == 28:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_LEAP, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳跳跃效果"))
    elif eventPlayer.sfxIndex == 29:
        playEffect(eventPlayer, DynamicEffect.DOOMFIST_RISING_UPPERCUT_LEAP_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“末日铁拳”上勾重拳跳跃声音"))
    elif eventPlayer.sfxIndex == 30:
        playEffect(eventPlayer, DynamicEffect.DVA_MICRO_MISSILES_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va微型飞弹爆炸效果"))
    elif eventPlayer.sfxIndex == 31:
        playEffect(eventPlayer, DynamicEffect.DVA_MICRO_MISSILES_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va微型飞弹爆炸声音"))
    elif eventPlayer.sfxIndex == 32:
        playEffect(eventPlayer, DynamicEffect.DVA_SELF_DESTRUCT_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va自毁爆炸效果"))
    elif eventPlayer.sfxIndex == 33:
        playEffect(eventPlayer, DynamicEffect.DVA_SELF_DESTRUCT_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("D.Va自毁爆炸声音"))
    elif eventPlayer.sfxIndex == 34:
        playEffect(eventPlayer, DynamicEffect.ECHO_STICKY_BOMB_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“回声”黏性炸弹爆炸效果"))
    elif eventPlayer.sfxIndex == 35:
        playEffect(eventPlayer, DynamicEffect.ECHO_STICKY_BOMB_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“回声”黏性炸弹爆炸声音"))
    elif eventPlayer.sfxIndex == 36:
        playEffect(eventPlayer, DynamicEffect.GOOD_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有益爆炸"))
    elif eventPlayer.sfxIndex == 37:
        playEffect(eventPlayer, DynamicEffect.GOOD_PICKUP_EFFECT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("有益选择效果"))
    elif eventPlayer.sfxIndex == 38:
        playEffect(eventPlayer, DynamicEffect.HANZO_SONIC_ARROW_INITIAL_PULSE, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("半藏音初始脉冲效果"))
    elif eventPlayer.sfxIndex == 39:
        playEffect(eventPlayer, DynamicEffect.HANZO_SONIC_ARROW_INITIAL_PULSE_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("半藏音初始脉冲声音"))
    elif eventPlayer.sfxIndex == 40:
        playEffect(eventPlayer, DynamicEffect.HEAL_TARGET_ACTIVE, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("治疗目标激活效果"))
    elif eventPlayer.sfxIndex == 41:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_CONCUSSION_MINE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”震荡地雷爆炸效果"))
    elif eventPlayer.sfxIndex == 42:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_CONCUSSION_MINE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”震荡地雷爆炸声音"))
    elif eventPlayer.sfxIndex == 43:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”榴弹发射器爆炸效果"))
    elif eventPlayer.sfxIndex == 44:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_FRAG_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”榴弹发射器爆炸声音"))
    elif eventPlayer.sfxIndex == 45:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”炸弹轮胎爆炸效果"))
    elif eventPlayer.sfxIndex == 46:
        playEffect(eventPlayer, DynamicEffect.JUNKRAT_RIP_TIRE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“狂鼠”炸弹轮胎爆炸声音"))
    elif eventPlayer.sfxIndex == 47:
        playEffect(eventPlayer, DynamicEffect.LUCIO_SOUND_BARRIER_CAST, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卢西奥音障施放效果"))
    elif eventPlayer.sfxIndex == 48:
        playEffect(eventPlayer, DynamicEffect.LUCIO_SOUND_BARRIER_CAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("卢西奥音障施放声音"))
    elif eventPlayer.sfxIndex == 49:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散消失效果"))
    elif eventPlayer.sfxIndex == 50:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散消失声音"))
    elif eventPlayer.sfxIndex == 51:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散重现效果"))
    elif eventPlayer.sfxIndex == 52:
        playEffect(eventPlayer, DynamicEffect.MOIRA_FADE_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莫伊拉消散重现声音"))
    elif eventPlayer.sfxIndex == 53:
        playEffect(eventPlayer, DynamicEffect.ORISA_HALT_IMPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("奥丽莎站住别动内爆效果"))
    elif eventPlayer.sfxIndex == 54:
        playEffect(eventPlayer, DynamicEffect.ORISA_HALT_IMPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("奥丽莎站住别动内爆声音"))
    elif eventPlayer.sfxIndex == 55:
        playEffect(eventPlayer, DynamicEffect.PHARAH_BARRAGE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭弹幕爆炸效果"))
    elif eventPlayer.sfxIndex == 56:
        playEffect(eventPlayer, DynamicEffect.PHARAH_BARRAGE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭弹幕爆炸声音"))
    elif eventPlayer.sfxIndex == 57:
        playEffect(eventPlayer, DynamicEffect.PHARAH_CONCUSSIVE_BLAST, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”震荡冲击效果"))
    elif eventPlayer.sfxIndex == 58:
        playEffect(eventPlayer, DynamicEffect.PHARAH_CONCUSSIVE_BLAST_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”震荡冲击声音"))
    elif eventPlayer.sfxIndex == 59:
        playEffect(eventPlayer, DynamicEffect.PHARAH_ROCKET_LAUNCHER_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭发射器爆炸效果"))
    elif eventPlayer.sfxIndex == 60:
        playEffect(eventPlayer, DynamicEffect.PHARAH_ROCKET_LAUNCHER_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“法老之鹰”火箭发射器爆炸声音"))
    elif eventPlayer.sfxIndex == 61:
        playEffect(eventPlayer, DynamicEffect.REAPER_WRAITH_FORM_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“死神”幽灵形态声音"))
    elif eventPlayer.sfxIndex == 62:
        playEffect(eventPlayer, DynamicEffect.REINHARDT_FIRE_STRIKE_TARGET_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莱因哈特烈焰打击目标击中效果"))
    elif eventPlayer.sfxIndex == 63:
        playEffect(eventPlayer, DynamicEffect.REINHARDT_FIRE_STRIKE_TARGET_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("莱因哈特烈焰打击目标击中声音"))
    elif eventPlayer.sfxIndex == 64:
        playEffect(eventPlayer, DynamicEffect.RING_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("环状爆炸"))
    elif eventPlayer.sfxIndex == 65:
        playEffect(eventPlayer, DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("环状爆炸声音"))
    elif eventPlayer.sfxIndex == 66:
        playEffect(eventPlayer, DynamicEffect.SIGMA_ACCRETION_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”质量吸附击中效果"))
    elif eventPlayer.sfxIndex == 67:
        playEffect(eventPlayer, DynamicEffect.SIGMA_ACCRETION_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”质量吸附击中声音"))
    elif eventPlayer.sfxIndex == 68:
        playEffect(eventPlayer, DynamicEffect.SIGMA_HYPERSPHERE_IMPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”超能之球内爆效果"))
    elif eventPlayer.sfxIndex == 69:
        playEffect(eventPlayer, DynamicEffect.SIGMA_HYPERSPHERE_IMPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“西格玛”超能之球内爆声音"))
    elif eventPlayer.sfxIndex == 70:
        playEffect(eventPlayer, DynamicEffect.SOLDIER_SPRINT_START_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“士兵：76”疾跑开始声音"))
    elif eventPlayer.sfxIndex == 71:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_EMP_EXPLOSION_EFFECT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”电磁脉冲爆炸效果"))
    elif eventPlayer.sfxIndex == 72:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_EMP_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”电磁脉冲爆炸声音"))
    elif eventPlayer.sfxIndex == 73:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_LOGO, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”标志效果"))
    elif eventPlayer.sfxIndex == 74:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_LOGO_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”标志声音"))
    elif eventPlayer.sfxIndex == 75:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATING_MATERIAL, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动材料效果"))
    elif eventPlayer.sfxIndex == 76:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动声音"))
    elif eventPlayer.sfxIndex == 77:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_DISAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动消失效果"))
    elif eventPlayer.sfxIndex == 78:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动消失声音"))
    elif eventPlayer.sfxIndex == 79:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动重现效果"))
    elif eventPlayer.sfxIndex == 80:
        playEffect(eventPlayer, DynamicEffect.SOMBRA_TRANSLOCATOR_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑影”位移传动重现声音"))
    elif eventPlayer.sfxIndex == 81:
        playEffect(eventPlayer, DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“秩序之光”传送面板重现效果"))
    elif eventPlayer.sfxIndex == 82:
        playEffect(eventPlayer, DynamicEffect.SYMMETRA_TELEPORTER_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“秩序之光”传送面板重现声音"))
    elif eventPlayer.sfxIndex == 83:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_DISAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空”闪回消失效果"))
    elif eventPlayer.sfxIndex == 84:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_DISAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空”闪回消失声音"))
    elif eventPlayer.sfxIndex == 85:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_REAPPEAR, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空“闪回重现效果"))
    elif eventPlayer.sfxIndex == 86:
        playEffect(eventPlayer, DynamicEffect.TRACER_RECALL_REAPPEAR_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“猎空”闪回重现声音"))
    elif eventPlayer.sfxIndex == 87:
        playEffect(eventPlayer, DynamicEffect.WIDOWMAKER_VENOM_MINE_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑百合“剧毒诡雷爆炸效果"))
    elif eventPlayer.sfxIndex == 88:
        playEffect(eventPlayer, DynamicEffect.WIDOWMAKER_VENOM_MINE_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“黑百合”剧毒诡雷爆炸声音"))
    elif eventPlayer.sfxIndex == 89:
        playEffect(eventPlayer, DynamicEffect.WINSTON_JUMP_PACK_LANDING, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("温斯顿喷射背包着陆效果"))
    elif eventPlayer.sfxIndex == 90:
        playEffect(eventPlayer, DynamicEffect.WINSTON_JUMP_PACK_LANDING_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("温斯顿喷射背包着陆声音"))
    elif eventPlayer.sfxIndex == 91:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”地雷禁区爆炸效果"))
    elif eventPlayer.sfxIndex == 92:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_MINEFIELD_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”地雷禁区爆炸声音"))
    elif eventPlayer.sfxIndex == 93:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”重力坠击击中效果"))
    elif eventPlayer.sfxIndex == 94:
        playEffect(eventPlayer, DynamicEffect.WRECKING_BALL_PILEDRIVER_IMPACT_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("“破坏球”重力坠击击中声音"))
    elif eventPlayer.sfxIndex == 95:
        playEffect(eventPlayer, DynamicEffect.ZARYA_PARTICLE_CANNON_EXPLOSION, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("查莉娅粒子炮爆炸效果"))
    elif eventPlayer.sfxIndex == 96:
        playEffect(eventPlayer, DynamicEffect.ZARYA_PARTICLE_CANNON_EXPLOSION_SOUND, Color.WHITE, eventPlayer.getEyePosition(), 150)
        bigMessage(eventPlayer, "当前音效: {0}".format("查莉娅粒子炮爆炸声音"))
    wait(0.25)


