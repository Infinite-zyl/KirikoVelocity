#Only remove the following directive if the gamemode does not use tricks such as A+0, A*0, "am" == "**", etc which would otherwise be optimized out.
#!optimizeStrict

enum ModeVect:
    CAMERA_X = 0
    CAMERA_Y
    CAMERA_Z
    POSITION_X
    POSITION_Y
    POSITION_Z

playervar mode
playervar camera_x
playervar camera_y
playervar camera_z
playervar position_x
playervar position_y
playervar position_z
playervar camera

rule "规则 1":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    
    eventPlayer.setMoveSpeed(0)
    wait(1)
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.ULTIMATE)
    eventPlayer.disallowButton(Button.ABILITY_2)
    eventPlayer.disallowButton(Button.RELOAD)
    eventPlayer.disallowButton(Button.CROUCH)
    eventPlayer.startFacing(vect(-1, 0, 0), 1000)

rule "变量初始化":
    @Event eachPlayer
    @Condition isGameInProgress() == true
    
    eventPlayer.mode = ModeVect.CAMERA_X
    eventPlayer.camera = true
    eventPlayer.camera_x = 0
    eventPlayer.camera_y = 1.4
    eventPlayer.camera_z = -2.5
    eventPlayer.position_x = 0
    eventPlayer.position_y = 1.1
    eventPlayer.position_z = 0

    createEffect(
        eventPlayer, 
        Effect.SPHERE, 
        Color.GREEN, 
        worldVector(
            vect(-2, 2, -0.5), 
            eventPlayer, 
            Transform.ROTATION_AND_TRANSLATION), 
        0.1, 
        EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(
        eventPlayer, 
        Effect.SPHERE, 
        Color.GREEN, 
        worldVector(
            vect(2, 2, -0.5), 
            eventPlayer, 
            Transform.ROTATION_AND_TRANSLATION), 
        0.1, 
        EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(
        eventPlayer, 
        Effect.SPHERE, 
        Color.GREEN, 
        worldVector(
            vect(0, 1, -0.5), 
            eventPlayer, 
            Transform.ROTATION_AND_TRANSLATION), 
        0.1, 
        EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "规则 2":
    @Event eachPlayer
    @Condition eventPlayer.isCommunicatingEmote() == true
    
    wait(2)
    eventPlayer.teleport(vect(0, 0, 0))


rule "增加":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    
    if eventPlayer.mode == ModeVect.CAMERA_X:
        eventPlayer.camera_x += 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Y:
        eventPlayer.camera_y += 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Z:
        eventPlayer.camera_z += 0.01
    elif eventPlayer.mode == ModeVect.POSITION_X:
        eventPlayer.position_x += 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Y:
        eventPlayer.position_y += 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Z:
        eventPlayer.position_z += 0.01
    wait(0.1)
    if ruleCondition:
        loop()

rule "增加":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.isHoldingButton(Button.CROUCH) == true
  
    if eventPlayer.mode == ModeVect.CAMERA_X:
        eventPlayer.camera_x += 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Y:
        eventPlayer.camera_y += 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Z:
        eventPlayer.camera_z += 0.01
    elif eventPlayer.mode == ModeVect.POSITION_X:
        eventPlayer.position_x += 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Y:
        eventPlayer.position_y += 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Z:
        eventPlayer.position_z += 0.01
    wait(0.01)
    if ruleCondition:
        loop()

rule "减少":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    
    if eventPlayer.mode == ModeVect.CAMERA_X:
        eventPlayer.camera_x -= 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Y:
        eventPlayer.camera_y -= 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Z:
        eventPlayer.camera_z -= 0.01
    elif eventPlayer.mode == ModeVect.POSITION_X:
        eventPlayer.position_x -= 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Y:
        eventPlayer.position_y -= 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Z:
        eventPlayer.position_z -= 0.01
    wait(0.1)
    if ruleCondition:
        loop()

rule "减少":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    @Condition eventPlayer.isHoldingButton(Button.CROUCH) == true
  
    if eventPlayer.mode == ModeVect.CAMERA_X:
        eventPlayer.camera_x -= 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Y:
        eventPlayer.camera_y -= 0.01
    elif eventPlayer.mode == ModeVect.CAMERA_Z:
        eventPlayer.camera_z -= 0.01
    elif eventPlayer.mode == ModeVect.POSITION_X:
        eventPlayer.position_x -= 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Y:
        eventPlayer.position_y -= 0.01
    elif eventPlayer.mode == ModeVect.POSITION_Z:
        eventPlayer.position_z -= 0.01
    wait(0.01)
    if ruleCondition:
        loop()

rule "HUD":
    @Event eachPlayer
    @Condition isGameInProgress() == true

    hudHeader(getAllPlayers(), 
    "当前选项：{}\n开始位置：{}\n望向位置：{}".format(
        eventPlayer.mode, 
        vect(
            eventPlayer.camera_x, 
            eventPlayer.camera_y,
            eventPlayer.camera_z
            ), 
        vect(
            eventPlayer.position_x, 
            eventPlayer.position_y,
            eventPlayer.position_z
            )), 
    HudPosition.LEFT, 
    0, 
    Color.ORANGE, 
    HudReeval.VISIBILITY_AND_STRING)

rule "开始镜头":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.RELOAD) == true
    
    if eventPlayer.camera:
        eventPlayer.startCamera(
            worldVector(
                vect(
                    eventPlayer.camera_x,
                    eventPlayer.camera_y,
                    eventPlayer.camera_z), 
                eventPlayer, 
                Transform.ROTATION_AND_TRANSLATION), 
            worldVector(
                vect(
                    eventPlayer.position_x,
                    eventPlayer.position_y,
                    eventPlayer.position_z), 
                eventPlayer, 
                Transform.ROTATION_AND_TRANSLATION), 
            100)
        eventPlayer.camera = false
    else:
        eventPlayer.stopCamera()
        eventPlayer.camera = true


rule "向上切换模式":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.ULTIMATE) == true
    
    eventPlayer.mode = (eventPlayer.mode - 1) % 6


rule "向下切换模式":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_2) == true

    eventPlayer.mode = (eventPlayer.mode + 1) % 6
