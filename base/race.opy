#!mainFile "../main.opy"

macro arrangePlayersAtStart(center, direction, spacing = 3.5):
    race_players = [p for p in getAllPlayers() if p.has_joined_race == true and p.on_board == true]
    race_players_num = len(race_players)
    APAS_center_index = floor(race_players_num / 2)
    start_line_direction = vect(-direction.z, 0, direction.x)

    for APAS_i in range(race_players_num):
        APAS_offset = (APAS_i - APAS_center_index) * spacing
        APAS_position = nearestWalkablePosition(center + start_line_direction * APAS_offset)
        race_players[APAS_i].teleport(APAS_position)
        race_players[APAS_i].setFacing(direction, Relativity.TO_PLAYER)


rule "传送玩家到起点":
    @Event global
    @Condition isGameInProgress()
    @Condition game_status == GameStatus.IN_PROGRESS
    @Condition start_line_info_list[0] != null

    if start_line_info_list[0] != null:
        arrangePlayersAtStart(start_line_info_list[0][0], 
        start_line_info_list[0][1], 
        start_spacing)
