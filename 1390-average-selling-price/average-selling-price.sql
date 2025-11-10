# Write your MySQL query statement below
select p.product_id,
round(coalesce (nullif(sum(p.price*u.units)/nullif(sum(u.units),0),0),0),2) as average_price
from prices p 
left join unitssold u
on p.product_id = u.product_id
and purchase_date BETWEEN start_date AND end_date
group by p.product_id;