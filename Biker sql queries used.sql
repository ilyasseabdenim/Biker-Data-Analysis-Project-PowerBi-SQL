with cte as (
select *
from bike_share_yr_0 
union all
select *
from bike_share_yr_1)

select 
dteday,
season, 
a.yr, 
weekday, 
hr, 
rider_type, 
riders, 
price, 
COGS,

CAST(riders AS float) * price AS revenue,
CAST(riders AS float) * price - COGS  AS profit



from cte a
left join cost_table b
on a.yr=b.yr


