-- Drill No. 1

SELECT
  trip_id,
  duration
FROM
  trips
WHERE
  duration > 2000
ORDER BY
  duration DESC

## Drill No. 2
å
SELECT
  *
FROM
  stations
WHERE
  station_id = 84

-- Drill No. 3

SELECT
  mintemperaturef
FROM
  weather
WHERE
  zip = 94301 AND
  events LIKE 'Rain'
