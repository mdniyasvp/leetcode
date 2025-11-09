# Write your MySQL query statement below
select u.unique_id, e.name
from EmployeeUNI u
right join employees e
on u.id = e.id;