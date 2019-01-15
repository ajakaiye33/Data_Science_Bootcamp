



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
	t.start_station,
	t.end_station,
	s.dockcount,
	COUNT(t.start_station) as number_of_trips

FROM stations s
JOIN trips t
ON t.start_station = s.name
GROUP BY 1,2,3
ORDER BY s.dockcount DESC;


--(Challenge) What's the length of the longest trip for each day it
--rains anywhere?

SELECT
	t.start_date,
	t.end_date,
	w.events,
	MAX(trips.duration) as longest_trip

FROM trips t
JOIN weather w
ON w.zip = t.zip_code
WHERE weather.events LIKE 'Rain'
GROUP BY 1,2,3
ORDER BY longest_trip DESC;
