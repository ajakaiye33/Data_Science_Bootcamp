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


SELECT
	c.date,
	l.price,
	MIN(l.price) as cheapest_price,
	date_part('month', c.date) as month_of_year

FROM
    clean_lond_cal c

JOIN
    london_listings l

ON l.id = c.listing_id

WHERE
    l.price >=5

GROUP BY 1,2

ORDER BY
    cheapest_price, month_of_year ASC;



--What about the busiest?

SELECT
    l.availability_365,
    c.date,
    MAX(l.calculated_host_listings_count),


FROM
    london_listings l

JOIN
    clean_lond_cal c

ON l.id = c.listing_id

GROUP BY 1,2

ORDER BY l.availability_365;
