SELECT o.*, `or`.officer_role_name
FROM officer AS o
    JOIN officer_role AS `or`
        ON `or`.officer_role_id = o.officer_role_id
WHERE o.officer_role_id = 2;
