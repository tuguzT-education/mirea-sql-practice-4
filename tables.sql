CREATE TABLE game_project_platform (
	game_project_platform_id INTEGER NOT NULL,
	game_project_platform_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (game_project_platform_id),
);

CREATE TABLE game_project_documentation (
	game_project_documentation_id INTEGER NOT NULL,
	game_project_business_plan LONGTEXT NULL,
	game_project_design_document LONGTEXT NULL,
	game_project_vision LONGTEXT NULL,
	PRIMARY KEY (game_project_documentation_id),
);

CREATE TABLE game_project (
	game_project_id INTEGER NOT NULL,
	game_project_name VARCHAR(255) NOT NULL,
	game_project_description LONGTEXT NOT NULL,
	game_project_documentation_id INTEGER NOT NULL,
	PRIMARY KEY (game_project_id, game_project_documentation_id),
	FOREIGN KEY (game_project_documentation_id)
	    REFERENCES game_project_documentation (game_project_documentation_id),
);

CREATE TABLE platform_to_game_object (
	game_project_platform_id INTEGER NOT NULL,
	game_project_id INTEGER NOT NULL,
	PRIMARY KEY (game_project_platform_id, game_project_id),
	FOREIGN KEY (game_project_platform_id)
	    REFERENCES game_project_platform (game_project_platform_id),
	FOREIGN KEY (game_project_id)
	    REFERENCES game_project (game_project_id),
);

CREATE TABLE game_asset_type (
	game_asset_type_id INTEGER NOT NULL,
	game_asset_type_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (game_asset_type_id),
);

CREATE TABLE game_asset (
	game_asset_id INTEGER NOT NULL,
	game_asset_name VARCHAR(100) NOT NULL,
	game_asset_type_id INTEGER NOT NULL,
	game_asset_description LONGTEXT NOT NULL,
	game_asset_data LONGBLOB NOT NULL,
	game_project_id INTEGER NOT NULL,
	PRIMARY KEY (game_asset_id, game_project_id, game_asset_type_id),
	FOREIGN KEY (game_project_id)
	    REFERENCES game_project (game_project_id),
	FOREIGN KEY (game_asset_type_id)
	    REFERENCES game_asset_type (game_asset_type_id),
);

CREATE TABLE game_project_version (
	game_project_version_id INTEGER NOT NULL,
	game_project_version_hash VARCHAR(40) NOT NULL,
	game_project_version_major INTEGER NOT NULL,
	game_project_version_minor INTEGER NOT NULL,
	game_project_version_patch INTEGER NOT NULL,
	game_project_version_metadata VARCHAR(255) NOT NULL,
	game_project_id INTEGER NOT NULL,
	PRIMARY KEY (game_project_version_id, game_project_id),
	FOREIGN KEY (game_project_id)
	    REFERENCES game_project (game_project_id),
);

CREATE TABLE officer_role (
	officer_role_id INTEGER NOT NULL,
	officer_role_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (officer_role_id),
);

CREATE TABLE test_level (
	test_level_id INTEGER NOT NULL,
	test_level_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (test_level_id),
);

CREATE TABLE test_document (
	test_document_id INTEGER NOT NULL,
	test_level_id INTEGER NOT NULL,
	test_document_data LONGTEXT NOT NULL,
	PRIMARY KEY (test_document_id, test_level_id),
	FOREIGN KEY (test_level_id)
	    REFERENCES test_level(test_level_id),
);

CREATE TABLE organization_type (
	organization_type_id INTEGER NOT NULL,
	organization_type_name VARCHAR(20) NOT NULL,
	PRIMARY KEY (organization_type_id),
);

CREATE TABLE organization (
	organization_id INTEGER NOT NULL,
	organization_name VARCHAR(50) NOT NULL,
	organization_type_id INTEGER NOT NULL,
	test_document_id INTEGER NULL,
	game_project_id INTEGER NULL,
	organization_description LONGTEXT NOT NULL,
	PRIMARY KEY (organization_id, organization_type_id),
	FOREIGN KEY (test_document_id)
	    REFERENCES test_document (test_document_id),
	FOREIGN KEY (organization_type_id)
	    REFERENCES organization_type (organization_type_id),
	FOREIGN KEY (game_project_id)
	    REFERENCES game_project (game_project_id),
);

CREATE TABLE officer (
	officer_id INTEGER NOT NULL,
	officer_name VARCHAR(20) NOT NULL,
	officer_role_id INTEGER NOT NULL,
	organization_id INTEGER NOT NULL,
	PRIMARY KEY (officer_id, officer_role_id, organization_id),
	FOREIGN KEY (officer_role_id)
	    REFERENCES officer_role (officer_role_id),
	FOREIGN KEY (organization_id)
	    REFERENCES organization (organization_id),
);

CREATE TABLE user (
	user_id INTEGER NOT NULL,
	user_login VARCHAR(20) NOT NULL,
	user_password_encrypted VARCHAR(100) NOT NULL,
	officer_id INTEGER NOT NULL,
	PRIMARY KEY (user_id, officer_id),
	FOREIGN KEY (officer_id)
	    REFERENCES officer (officer_id),
);
