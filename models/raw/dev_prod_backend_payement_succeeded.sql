{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'payment_succeeded') }}