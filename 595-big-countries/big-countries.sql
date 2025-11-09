# Write your MySQL query statement below
#select name, population,area from world
#where area >= 3000000 and population >= 25000000;
SELECT 
    name, 
    population, 
    area
FROM 
    world
WHERE 
    area >= 3000000
    or population >= 25000000;
