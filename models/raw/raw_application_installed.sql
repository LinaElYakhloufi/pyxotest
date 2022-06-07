{{
    config(
        materialized='table'
    )
}}
SELECT * 
FROM "dev"."prod_app_conso"."application_installed"