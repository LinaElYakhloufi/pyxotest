{{
    config(
        materialized='table'
    )
}}
SELECT * FROM "dev"."prod_backend"."deposit_expired"; 