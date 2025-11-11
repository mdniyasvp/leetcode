select distinct num as  ConsecutiveNums 
from (select num,
    lag(num,1)over(order by id) as prev1,
    lead(num,1)over (order by id)as prev2
    from logs) as t
    where num=prev1
    and num=prev2;