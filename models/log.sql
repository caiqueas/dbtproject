select
distinct event_name tipo,
event_timestamp datahora,
event_schema schema,
event_model modelo,
event_user usuario,
event_target target
from {{target.schema}}.dbt_audit_log