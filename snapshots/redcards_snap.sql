{% snapshot redcards_snapshot_check %}

--   {{
--       config(
--          target_schema= "PUBLIC",
--          strategy='check',
--          unique_key='FIRSTNAME',
--          check_cols=['FIRSTNAME', 'LASTNAME','YELLOW', 'RED']
--        )
--    }}

--SELECT
--  *
--FROM {{source('redcards_structured','redcards_structured')}}

{% endsnapshot %}