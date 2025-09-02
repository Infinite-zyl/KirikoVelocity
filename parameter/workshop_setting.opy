#!mainFile "../main.opy"

rule "地图工坊调整参数":
    max_speed_kmh = createWorkshopSettingFloat("速度控制", "最大速度KM/H", 40, 30, 60, 0)
    low_speed_kmh = createWorkshopSettingFloat("速度控制", "最小速度KM/H", 5, 2, 10, 1)
    accel_rate = createWorkshopSettingFloat("速度控制", "加速度系数", 10, 5, 20, 2)
    drag_rate = createWorkshopSettingFloat("速度控制", "阻力系数", 2, 1, 5, 3)
    break_rate = createWorkshopSettingFloat("速度控制", "刹车系数", 20, 10, 30, 4)
    speed_boosted_rate = createWorkshopSettingFloat("氮气加速", "氮气加速系数", 80, 70, 100, 0)
    speed_boosted_kmh = createWorkshopSettingFloat("氮气加速", "氮气加速最大速度KM/H", 70, 60, 80, 0)
    speed_boosted_time = createWorkshopSettingFloat("氮气加速", "持续时间", 0.5, 0.25, 1.5, 1)
    drift_factor = createWorkshopSettingFloat("漂移", "漂移系数", 0.5, 0.1, 0.9, 0)
    test_cases_pipeline = createWorkshopSettingBool("测试用例", "启动测试用例流水线", true, 0)
    max_speed_ms = max_speed_kmh / KMH_TO_MS
    low_speed_ms = low_speed_kmh / KMH_TO_MS
    speed_boosted_ms = speed_boosted_kmh / KMH_TO_MS
    accel_rate = accel_rate / 100
    drag_rate = drag_rate / 100
    break_rate = break_rate / 100
    speed_boosted_rate = speed_boosted_rate / 100
