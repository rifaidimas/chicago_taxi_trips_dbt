{{
    config(
      materialized='table'
    )
}}

SELECT
  EXTRACT(MONTH FROM trip_start_timestamp) AS month_key,
  company_key,
  SUM(trip_miles) AS trip_miles
FROM
  `iykra-data-fellowship-380209.taxi.taxi_trips`
GROUP BY
  month_key,
  company_key