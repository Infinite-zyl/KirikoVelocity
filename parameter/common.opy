#!mainFile "../main.opy"

globalvar test_cases_pipeline # 是否启动测试用例流水线

playervar is_holding # 是否正在按住按钮
playervar bHP_i # 循环变量
playervar bH_i # 循环变量

playervar cPG_i # 循环变量
playervar camera_position_group # 摄像机位置组

playervar ue_records # 所有玩家当前效果(HUD,地图文本,效果)的记录数组
playervar addUE_i # 循环变量i
playervar rUE_i # 循环变量i