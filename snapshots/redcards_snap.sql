{% snapshot redcards_snapshot %}

    {{
        config(
          target_schema= "{{ env_var('target_schema') }}" ,
          strategy='check',
          unique_key='FIRSTNAME',
          check_cols=['FIRSTNAME', 'LASTNAME','YELLOW', 'RED'],
        )
    }}

SELECT
  *
FROM {{source('redcards_structured','redcards_structured')}}

{% endsnapshot %}