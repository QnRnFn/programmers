-- 코드를 입력하세요

-- MILK, YOGURT 컬럼 만들어서 있는지없는지 체크
with cte as (
    SELECT cart_id, sum(case when name in ('milk') then 1 end)  as milk, 
sum(case when name in ('Yogurt') then 1 end)  as yogurt
from CART_PRODUCTS 

group by cart_id)

select cart_id
from cte
where milk is not null and yogurt is not null

