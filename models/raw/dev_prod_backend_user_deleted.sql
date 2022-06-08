{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'user_deleted') }}