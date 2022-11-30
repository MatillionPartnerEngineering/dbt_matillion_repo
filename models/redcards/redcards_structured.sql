SELECT
  *,
  sum('yellow','red'),
  'dbt tests' status
FROM {{source('redcards_structured','redcards_structured')}}
