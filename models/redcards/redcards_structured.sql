SELECT
  *,
  (yellow + red) sumcards,
  ((yellow + red)/minutes) cards_per_minute
FROM {{source('redcards_source','stg_SPRING_PREMIERCARDS')}}
