SELECT
  COUNT(*) AS row_count
FROM
  {{ ref('trip_miles_total_by_month') }}
WHERE
  trip_month IS NULL OR trip_miles_total IS NULL