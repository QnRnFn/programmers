-- 코드를 작성해주세요
-- fish_info : id, fish_type, length, time
-- 물고기 길이 10 이하 : length = null
-- 평균 길이가 33 이상인 물고기들 종류별로 
-- group by fish_type
-- avg(length)

-- order by fish_type asc
-- null값은 10cm
-- 잡은수 count(), 최대 길이, 물고기의 종류
-- output : fish_count, max_length, fish_type
with cte as (
select id, fish_type, coalesce(length,10) as length, time
from fish_info    
    ),
cte2 as (
select fish_type, avg(LENGTH) as avg_length
from cte
group by fish_type
    )
select count(c.fish_type) as fish_count, max(length) as max_length, c.fish_type
from cte c left join cte2 c2
    on c.fish_type = c2.fish_type
where avg_length >= 33
group by c.fish_type
order by 3 asc

