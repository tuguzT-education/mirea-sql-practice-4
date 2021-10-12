SELECT gp.*, gpp.game_project_platform_name
FROM game_project AS gp
    JOIN platform_to_game_object AS ptgo
        on ptgo.game_project_id = gp.game_project_id
    JOIN game_project_platform AS gpp
        on ptgo.game_project_platform_id = gpp.game_project_platform_id;
