/*
SKILLCODES s NAME, CATEGORY, CODE
DEVELOPERS d ID, FIRST_NAME, LAST_NAME, EMAIL, SKILL_CODE
front end 스킬을 가진 개발자의 ID, email, first_name, last_name
order by ID asc

 16  2048 8192
 1000 10000000000
 
 d.skill_code & s.code >> code 그 스킬을 보유하고있다
 where -- in (select )
 
 cte로 front end 필터링
*/
with cte as (
select *
from skillcodes
where category in ('Front End')
    )
    
select distinct ID, email, first_name, last_name
from (
select d.ID, d.email, d.first_name, d.last_name, 
    case when (c.CODE & d.skill_code) = c.code then 1 else 0 end as front
from developers d , cte c
    ) as cte2
where front = 1
order by ID asc


