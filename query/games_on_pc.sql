SELECT gp.*, gpp.game_project_platform_name
FROM game_project AS gp
    JOIN platform_to_game_object AS ptgo
        ON ptgo.game_project_id = gp.game_project_id
    JOIN game_project_platform AS gpp
        ON ptgo.game_project_platform_id = gpp.game_project_platform_id
WHERE gpp.game_project_platform_name IN ('Windows', 'Linux', 'macOS');
