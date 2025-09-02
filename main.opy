# 游戏基本设置
#!include "settings/settings.opy"

# 加载全局变量、玩家变量、宏、地图工坊参数、公共方法变量
#!include "parameter/variables.opy"
#!include "parameter/macros.opy"
#!include "parameter/workshop_setting.opy"

# 加载公共方法
#!include "common/"

# 角色初始化
#!include "initialization/player_ini.opy"

# 赛道信息初始化
#!include "initialization/race_ini.opy"

# 加载效果，包括音效，特效
#!include "effects/"

# HUD显示
#!include "hud/speed.opy"

# 基础功能
#!include "base/control.opy"

#!include "base/race.opy"

# 测试方法
#!include "test_function/race_test.opy"

# 测试用例
#!include "parameter/test/test_cases.opy"
#!include "initialization/test_cases_ini.opy"
#!include "test_function/test_cases/test_pipline.opy"