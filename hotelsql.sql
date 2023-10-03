with hotels as (
select * from hotel_revenue_historical_2018
UNION
select * from hotel_revenue_historical_2019
UNION
select * from hotel_revenue_historical_2020
) select * from hotels
right join market_segment
on hotels.market_segment = market_segment.market_segment
right join meal_cost
on meal_cost.meal=hotels.meal