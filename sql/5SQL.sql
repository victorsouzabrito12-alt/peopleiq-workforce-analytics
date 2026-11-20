SELECT
table_name,column_name
FROM information_schema.columns
WHERE table_schema = 'analytics' AND table_name IN ('vw_attrition_analytics',
'vw_compensation_career',
'vw_employee_experience',
'vw_workforce_overview')
ORDER BY table_name, ordinal_position;
