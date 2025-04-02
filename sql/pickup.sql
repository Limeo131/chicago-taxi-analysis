SELECT
  pickup_community_area,
  COUNT(*) AS trip_count
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE trip_start_timestamp BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY pickup_community_area
ORDER BY trip_count DESC
LIMIT 10;


