



--What are the three longest trips on rainy days?

SELECT
	trips.duration,
	trips.bike_id,
	weather.events,
	weather.date


FROM
	trips
INNER JOIN weather
ON trips.zip_code = weather.zip
WHERE weather.events LIKE 'Rain'
ORDER BY duration DESC
LIMIT 3;


--Which station is full most often?

SELECT
	status.bikes_available,
	status.docks_available,
	stations.name,
	stations.dockcount
FROM status
INNER JOIN stations
ON status.station_id = stations.station_id
ORDER BY status.bikes_available DESC;


--Return a list of stations with a count of number of trips starting at that
--station but ordered by dock count.

SELECT
	stations.name,
	COUNT(trips.start_station) as number_of_trips,
	trips.start_station

FROM stations
JOIN trips
ON trips.start_station = stations.name
GROUP BY 1,2,3
ORDER BY stations.dockcount;



--(Challenge) What's the length of the longest trip for each day it
--rains anywhere?

SELECT
	MAX(trips.duration),
	trips.start_date,
	trips.end_date,
	weather.events

FROM trips
JOIN weather
ON weather.zip = trips.zip_code
WHERE weather.events LIKE 'Rain'
