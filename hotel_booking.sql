USE hotelmanagement;

-- this query fetches the data of two different hotel types and calculates the revenue according to the year.
-- WITH hotels AS(
-- SELECT * FROM data_2018
-- UNION
-- SELECT * FROM data_2019
-- UNION
-- SELECT * FROM data_2020
-- )
-- SELECT arrival_date_year,hotel,
-- round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr),2) AS revenue 
-- FROM hotels
-- GROUP BY arrival_date_year,hotel;

-- this query will combine hotel data with meal segment and meal cost 
WITH hotel_market_seg AS(
SELECT * FROM data_2018
UNION
SELECT * FROM data_2019
UNION
SELECT * FROM data_2020
)
SELECT * FROM hotel_market_seg 
LEFT JOIN market_segment 
ON hotel_market_seg.market_segment = market_segment.market_segment
LEFT JOIN meal_cost
ON hotel_market_seg.meal = meal_cost.meal;