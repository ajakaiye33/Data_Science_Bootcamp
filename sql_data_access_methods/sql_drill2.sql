
--What was the hottest day in our data set? Where was that?

SELECT
    zip,
    date,
    max(maxtemperaturef) as hottest
FROM
    weather
WHERE
    maxtemperaturef >= 134
GROUP BY 1,2;

-- How many trips started at each station?
SELECT
    start_station,
    COUNT(start_station) as No_of_trip(s)
FROM
    trips
GROUP BY 1;


-- What's the shortest trip that happened?

SELECT
    min(duration) shortest_trip
FROM
    trips
-- alternatively , since there are more than one trip with such duration we do...

SELECT
    start_date,
    end_date,
    min(duration) as shortest_trips
FROM
    trips
WHERE
    duration <= 60
GROUP BY 1,2;


-- What is the average trip duration, by end station?

SELECT
    end_station,
    AVG(duration) as average_duration
FROM
    trips
GROUP BY 1;

SELECT
    trips.trip_id,
    trips.start_station,
    stations.lat,
    stations.long
FROM
    trips
JOIN
    stations
ON
    trips.start_station = stations.name;
