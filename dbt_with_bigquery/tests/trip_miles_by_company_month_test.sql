SELECT
  COUNT(*) AS row_count
FROM
  {{ ref('trip_miles_by_company_month') }}
WHERE
  trip_month IS NULL OR company IS NULL OR trip_miles IS NULL
