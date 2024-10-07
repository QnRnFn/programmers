-- 코드를 입력하세요
-- food_type group by
-- output : food_type, rest_id, rest_name, favorites
-- order by food_type desc
# SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
# from rest_info
# group by food_type
# having max(favorites)
# order by food_type desc
with cte as (
select food_type, rest_id, rest_name, rank() over (partition by food_type order by FAVORITES desc) as rest_rk, favorites
from rest_info )

select food_type, rest_id, rest_name, favorites
from cte
where rest_rk = 1
order by food_type desc
