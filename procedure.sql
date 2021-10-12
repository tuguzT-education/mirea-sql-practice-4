CREATE PROCEDURE create_user_with_officer(
    name VARCHAR(100),
    officer_role INTEGER,
    organization INTEGER,
    login VARCHAR(20),
    password_encrypted VARCHAR(100)
)
BEGIN
    INSERT INTO officer (officer_name, officer_role_id, organization_id)
    VALUES (name, officer_role, organization);

    INSERT INTO user (user_login, user_password_encrypted, officer_id)
    VALUES (login, password_encrypted, LAST_INSERT_ID());
END;

CALL create_user_with_officer(
    'Damir Tugushev',
    1,
    4,
    '0damir1tugushev',
    'dopirpnvhut:mfginothnvg857'
);
