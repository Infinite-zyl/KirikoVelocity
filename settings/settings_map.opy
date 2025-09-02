#!mainFile "main.opy"

settings {
    "main": {
        "description": "代码：0098H 版本：0.0.1",
        "modeName": "雾子滑板：竞速"
    },
    "lobby": {
        "mapRotation": "afterGame",
        "team1Slots": 8,
        "team2Slots": 0,
        "returnToLobby": "afterGame"
    },
    "gamemodes": {
        "clash": {
            "enabled": false,
            "captureSpeed%": 45
        },
        "skirmish": {
            "enabledMaps": [
                "newJunkCity",
                "suravasa"
            ]
        }
    },
    "heroes": {
        "allTeams": {
            "kiriko": {
                "enableSpawningWithUlt": true
            },
            "enabledHeroes": [
                "kiriko"
            ],
            "general": {
                "enablePrimaryFire": false,
                "enableUlt": false
            }
        }
    },
    "workshop": {
        "刹车系数": 15,
        "加速度系数": 15,
        "持续时间": 0.7,
        "最大速度KMH": 40,
        "最小速度KMH": 5,
        "氮气加速比率": 1.5,
        "阻力系数": 1.5
    }
}

#Activated extensions

#!extension beamSounds
#!extension buffStatusEffects
#!extension buffAndDebuffSounds
#!extension energyExplosionEffects
#!extension kineticExplosionEffects
#!extension explosionSounds
#!extension playMoreEffects