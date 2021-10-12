SELECT u.*, o.officer_name, `or`.officer_role_name
FROM officer AS o
    JOIN user AS u
        ON o.officer_id = u.officer_id
    JOIN officer_role as `or`
        ON `or`.officer_role_id = o.officer_role_id;
