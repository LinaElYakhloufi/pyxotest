{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'deposit_unpaired') }}