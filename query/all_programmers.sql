SELECT o.*, r.officer_role_name
FROM officer AS o
    JOIN officer_role AS r
        ON r.officer_role_id = o.officer_role_id
WHERE o.officer_role_id = 2;
