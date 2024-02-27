SELECT
  *,
  (yellow + red) sumcards
FROM {{source('redcards_structured','redcards_structured')}}
