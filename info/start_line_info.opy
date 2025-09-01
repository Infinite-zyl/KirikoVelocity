#!mainFile "../main.opy"


/* 起跑线信息
   地图名称: [
       [起跑线中心点, 玩家面朝方向（单位向量）],
       ...
   ]
*/
rule "加载当前地图起跑线信息":
    @Event global
    @Condition isGameInProgress()

    current_map = getCurrentMap()
    start_line_info_list = {
            Map.SURAVASA: [
                [vect(78, 3, -42), vect(-1, 0, 0)]
            ],
            Map.NEW_JUNK_CITY: 1,
        }[current_map]