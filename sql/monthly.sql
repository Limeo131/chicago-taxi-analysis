SELECT
  FORMAT_TIMESTAMP('%Y-%m', trip_start_timestamp) AS month,
  COUNT(*) AS trip_count
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE trip_start_timestamp BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY month
ORDER BY month;
