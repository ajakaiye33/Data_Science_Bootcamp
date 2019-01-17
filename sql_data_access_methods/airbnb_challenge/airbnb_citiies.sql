--What's the most expensive listing?

SELECT
    MAX(price) as the_most_expensive_listing
FROM
    london_listings




--What else can you tell me about the listing?

SELECT
    *
FROM
    london_listings
WHERE
    price >= 13700;




--What neighborhoods seem to be the most popular?

SELECT
    COUNT(neighbourhood) as popularity,
    neighbourhood

FROM
    london_listings

GROUP BY
    neighbourhood

ORDER BY
    popularity DESC;





--What time of year is the cheapest time to go to your city
