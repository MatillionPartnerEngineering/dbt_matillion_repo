SELECT
  *,
  (yellow + red) sumcards,
  'dbt tests' status
FROM {{source('redcards_structured','redcards_structured')}}
