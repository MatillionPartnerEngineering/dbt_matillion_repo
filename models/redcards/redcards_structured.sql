SELECT
  *,
  ("yellow" + "red") sum_cards,
  'dbt tests' status
FROM {{source('redcards_structured','redcards_structured')}}
