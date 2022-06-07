select 
--from track table
t.user_id,
t.event,
t.received_at as event_timestamp
from "dev"."prod_backend"."tracks" as t
