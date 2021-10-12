DELETE FROM organization
WHERE (
    SELECT COUNT(*)
    FROM officer AS o
    WHERE o.organization_id = organization.organization_id
    ) = 0;
