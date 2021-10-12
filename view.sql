CREATE VIEW game_asset_view AS
    SELECT ga.*, gat.game_asset_type_name
    FROM game_asset AS ga
        JOIN game_asset_type AS gat
            ON gat.game_asset_type_id = ga.game_asset_type_id;
