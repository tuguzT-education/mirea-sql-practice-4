SELECT u.*, o.officer_name, r.officer_role_name
FROM officer AS o
    JOIN user AS u
        ON o.officer_id = u.officer_id
    JOIN officer_role as r
        ON r.officer_role_id = o.officer_role_id;
