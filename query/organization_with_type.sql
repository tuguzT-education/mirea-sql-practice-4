SELECT o.*, ot.organization_type_name
FROM organization AS o
    JOIN organization_type AS ot
        ON ot.organization_type_id = o.organization_type_id;
