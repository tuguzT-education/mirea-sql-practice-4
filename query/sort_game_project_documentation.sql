SELECT *
FROM game_project_documentation as documentation
ORDER BY documentation.game_project_business_plan DESC,
         documentation.game_project_design_document DESC,
         documentation.game_project_vision DESC;
