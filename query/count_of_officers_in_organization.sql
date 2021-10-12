SELECT o.organization_id,
       o.organization_name,
       (SELECT COUNT(*)
            FROM officer
            WHERE o.organization_id = officer.organization_id) AS officer_count
FROM organization AS o
ORDER BY officer_count DESC;
