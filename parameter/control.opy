#!mainFile "../main.opy"

globalvar max_speed_kmh # 最大速度km/h
globalvar low_speed_kmh # 最小速度km/h
globalvar max_speed_ms # 最大速度m/s
globalvar low_speed_ms # 最小速度m/s

globalvar accel_rate # 加速度系数
globalvar drag_rate # 阻力系数
globalvar break_rate # 刹车系数

globalvar speed_boosted_rate # 氮气加速比率
globalvar speed_boosted_time # 氮气加速时长
globalvar speed_boosted_kmh # 氮气加速最终速度km/h
globalvar speed_boosted_ms # 氮气加速最终速度m/s

globalvar drift_factor # 漂移系数


playervar on_board # 玩家是否在滑板上(其实也就是判断做没做表情)
playervar progress_bar_hud_arr # 进度条hud数组
playervar text_hud_arr # 文字hud数组
playervar map_text_hud_arr # 地图hud数组
playervar hud_records # 每个玩家的 HUD 记录数组
playervar hud_records_i # removeHudByName方法需要的计数i

playervar real_speed_ms # 玩家当前实际速度m/s
playervar max_speed_ms_player # 玩家最大速度km/h
playervar low_speed_ms_player # 玩家最小速度km/h
playervar speed_percent_player # 玩家速度百分比
playervar target_speed_player # 玩家插值目标速度m/s

playervar rate # 指代玩家的某个系数（ext. 加速度、阻力、刹车）
playervar accel_rate_player # 玩家加速度系数
playervar drag_rate_player  # 玩家阻力系数
playervar break_rate_player # 玩家刹车系数

playervar speed_boosted_rate_player # 玩家氮气加速系数
playervar speed_boosted_ms_player # 玩家氮气加速最终速度
playervar speed_boosted_time_player # 玩家氮气加速时长
playervar boosted_state # 是否在氮气加速中

playervar is_drifting # 是否处于漂移状态
playervar velocity_dir # 速度方向(矢量)
playervar drift_forward_vector # 玩家前方向量，随玩家旋转
playervar drift_right_vector # 玩家前方向量，随玩家旋转
playervar drift_factor_player # 玩家漂移系数
playervar drift_dir # 速度插值(矢量)，决定漂移运动方向，目前有问题，弃用
playervar drift_angle # 漂移角度