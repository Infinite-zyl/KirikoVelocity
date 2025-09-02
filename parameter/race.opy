#!mainFile "../main.opy"

enum GameStatus :
    IDLE = 0
    WAITING = 1
    IN_PROGRESS = 2

globalvar current_map # 当前地图，是一个字符串
globalvar start_line_center # 起跑线中心点
globalvar start_line_direction # 起跑线方向（单位向量）
globalvar start_line_info_list # 起跑线信息(详见描述)
globalvar start_spacing # 每辆车之间的间距
globalvar race_players  # 参加比赛的玩家列表
globalvar race_players_num # 参加比赛的玩家数量
globalvar APAS_center_index # 起跑线中间位置的索引
globalvar APAS_i # 循环变量
globalvar APAS_offset # 位置偏移
globalvar APAS_position # 计算出的传送位置
globalvar game_status # 当前游戏状态(0:无比赛, 1:投票中, 2:比赛中)

playervar has_joined_race  # 是否加入比赛