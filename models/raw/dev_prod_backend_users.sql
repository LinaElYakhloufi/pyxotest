{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'users') }}