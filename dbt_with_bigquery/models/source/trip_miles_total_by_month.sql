{{
    config(
      materialized='table'
    )
}} 

SELECT
  trip_month,
  SUM(trip_miles) AS trip_miles_total
FROM
  {{ ref('trip_miles_by_company_month') }}
GROUP BY
  trip_month
