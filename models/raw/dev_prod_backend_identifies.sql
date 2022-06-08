{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'identifies') }}