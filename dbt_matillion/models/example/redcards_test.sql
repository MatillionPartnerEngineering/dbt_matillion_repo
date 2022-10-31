{{ config(materialized='table') }}

with source_data as (

    select * from analytics.premier_red_cards.redcards_structured

)

select *
from source_data
