{{
    config(
        materialized='table'
    )
}}
SELECT * FROM "dev"."prod_backend"."user_deleted";