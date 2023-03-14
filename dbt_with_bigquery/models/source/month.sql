{{
    config(
      materialized='table'
    )
}}

SELECT
  EXTRACT(MONTH FROM trip_start_timestamp) AS month_key,
  FORMAT_DATE('%B', DATE_TRUNC(DATE(trip_start_timestamp), MONTH)) AS month_name
FROM
  `iykra-data-fellowship-380209.taxi.taxi_trips`
GROUP BY
  month_key,
  month_name
