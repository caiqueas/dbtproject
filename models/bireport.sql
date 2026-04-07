{{
    config(
        materialized='table',
        post_hook=["
            GRANT USAGE ON SCHEMA {{target.schema}} to role biusers;
            GRANT SELECT ON TABLE {{target.schema}}.bireport to role biusers;

        "]
    )
}}

select * from {{ ref('joins') }}