#!mainFile "../main.opy"

enum GameStatus :
    IDLE = 0
    VOTING
    WAITING
    COUNTDOWN
    IN_PROGRESS


globalvar current_map # 当前地图，是一个字符串
globalvar start_line_face_direction # 起跑线玩家面朝方向（单位向量）
globalvar start_line_info_list # 起跑线信息(详见描述)
globalvar start_forward_spacing # 每辆车之间的间距
globalvar start_side_spacing # 每辆车之间的间距
globalvar race_players  # 参加比赛的玩家列表
globalvar center_index # 起跑线中间位置的索引
globalvar game_status # 当前游戏状态(0:无比赛, 1:投票中, 2:等待开始, 3:比赛中)
globalvar count_down_position # 比赛倒计时位置
globalvar count_down_text # 比赛倒计时文本
globalvar count_down_rgba # 倒计时特效颜色
globalvar sCDBS_i # 循环变量

playervar has_joined_race  # 是否加入比赛
playervar player_status # 玩家在当前游戏的状态(0:无比赛, 1:投票中, 2:等待开始, 3:比赛中)
playervar count_down_world_position 

playervar gSLP_sideOffset
playervar gSLP_forwardOffset
playervar gSLP_position 