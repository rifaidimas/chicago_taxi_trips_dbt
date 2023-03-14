{{
    config(
      materialized='table'
    )
}}

SELECT
  tm.company,
  tm.trip_month,
  tm.trip_miles,
  tmt.trip_miles_total,
  tm.trip_miles / tmt.trip_miles_total * 100 AS trip_miles_percentage
FROM
  {{ ref('trip_miles_by_company_month') }} AS tm
JOIN
  {{ ref('trip_miles_total_by_month') }} AS tmt
ON
  tm.trip_month = tmt.trip_month
