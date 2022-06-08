{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('dev', 'product_returned') }}