REVOKE ALL ON FUNCTION public.create_order(jsonb, jsonb) FROM PUBLIC;
REVOKE ALL ON FUNCTION public.create_order(jsonb, jsonb) FROM anon;
REVOKE ALL ON FUNCTION public.create_order(jsonb, jsonb) FROM authenticated;
GRANT EXECUTE ON FUNCTION public.create_order(jsonb, jsonb) TO service_role;