SELECT
  COUNT(*) AS row_count
FROM
  {{ ref('trip_miles_percentage_by_company_month') }}
WHERE
  company IS NULL OR trip_month IS NULL OR trip_miles IS NULL OR trip_miles_total IS NULL OR trip_miles_percentage IS NULL
