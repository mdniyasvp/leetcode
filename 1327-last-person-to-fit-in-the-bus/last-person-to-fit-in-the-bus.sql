select person_name
  from(
    select sum(weight) over(order by turn asc) as total_weight,
    person_name, weight,turn 
    from queue
) as t
 where  total_weight <=1000
 order by turn desc
 limit 1;