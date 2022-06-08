{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'user_signed_up') }}