{{
    config(
      materialized='table'
    )
}}

SELECT
  md.month_name,
  cd.company_key,
  cd.trip_count,
  cd.total_trip_miles,
  tf.trip_miles
FROM
  {{ ref('trip_miles_fact') }} AS tf
JOIN
  {{ ref('month') }} AS md
ON
  tf.month_key = md.month_key
JOIN
  {{ ref('company') }} AS cd
ON
  tf.company_key = cd.company_key