/* Write your T-SQL query statement below */
select b.id
from weather as a
inner join weather as b on b.recordDate = dateadd(DAY,1,a.recordDate)
where b.temperature > a.temperature