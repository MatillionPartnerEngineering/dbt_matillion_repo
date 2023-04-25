{% snapshot redcards_snapshot_check %}

{{
    config(
        target_schema='snapshots',
        unique_key='firstname',
        strategy='timestamp',
        updated_at='lastupdated',
    )
}}

SELECT
  *
FROM {{source('redcards_structured','redcards_structured')}}

{% endsnapshot %}