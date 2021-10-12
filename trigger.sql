CREATE TABLE organization_cache (
    organization_id INTEGER NOT NULL,
    organization_name VARCHAR(50) NOT NULL,
    organization_type_id INTEGER NOT NULL,
    test_document_id INTEGER NULL,
    game_project_id INTEGER NULL,
    organization_description LONGTEXT NOT NULL,
    deletion_time TIMESTAMP
);

CREATE TRIGGER organization_caching
    BEFORE DELETE
    ON organization FOR EACH ROW
BEGIN
    INSERT INTO organization_cache
        VALUES (
                OLD.organization_id,
                OLD.organization_name,
                OLD.organization_type_id,
                OLD.test_document_id,
                OLD.game_project_id,
                OLD.organization_description,
                NOW()
               );
END;

DROP TRIGGER organization_caching;
