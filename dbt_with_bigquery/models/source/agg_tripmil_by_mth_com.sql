{{
    config(
      materialized='table'
    )
}}

SELECT
  EXTRACT(MONTH FROM trip_start_timestamp) AS trip_month,
  company,
  SUM(trip_miles) AS trip_miles
FROM
  `iykra-data-fellowship-380209.taxi.taxi_trips`
GROUP BY
  trip_month,
  company
