SELECT
  *,
  firstname || ' ' || lastname fullname,
  (yellow + red) sumcards,
  ((yellow + red)/minutes) cards_per_minute
FROM {{source('redcards_source','STG_SPRING_PREMIERCARDS')}}