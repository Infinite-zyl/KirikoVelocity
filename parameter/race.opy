#!mainFile "../main.opy"

enum GameStatus :
    IDLE = 0
    VOTING
    WAITING
    IN_PROGRESS
    

globalvar current_map # 当前地图，是一个字符串
globalvar start_line_direction # 起跑线方向（单位向量）
globalvar start_line_face_direction # 起跑线玩家面朝方向（单位向量）
globalvar start_line_info_list # 起跑线信息(详见描述)
globalvar start_spacing # 每辆车之间的间距
globalvar race_players  # 参加比赛的玩家列表
globalvar center_index # 起跑线中间位置的索引
globalvar game_status # 当前游戏状态(0:无比赛, 1:投票中, 2:等待开始, 3:比赛中)

playervar has_joined_race  # 是否加入比赛
playervar player_status # 玩家在当前游戏的状态(0:无比赛, 1:投票中, 2:等待开始, 3:比赛中)
playervar gSLP_offset 
playervar gSLP_position 