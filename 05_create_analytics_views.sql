SELECT
   schemaname,
   viewname,
   definition
FROM pg_views
WHERE schemaname = 'analytics'
ORDER BY viewname;