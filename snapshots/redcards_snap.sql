{% snapshot redcards_snapshot_check %}

SELECT
  *
FROM {{source('redcards_structured','redcards_structured')}}

{% endsnapshot %}