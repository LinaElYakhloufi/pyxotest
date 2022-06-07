{{
    config(
        materialized='table'
    )
}}
SELECT * FROM "dev"."prod_backend"."users";