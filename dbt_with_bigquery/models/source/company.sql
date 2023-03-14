{{
    config(
      materialized='table'
    )
}}

SELECT
  company AS company_key,
  COUNT(*) AS trip_count,
  SUM(trip_miles) AS total_trip_miles
FROM
  `iykra-data-fellowship-380209.taxi.taxi_trips`
GROUP BY
  company