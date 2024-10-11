-- 코드를 입력하세요
-- CATEGORY, MAX_PRICE, PRODUCT_NAME
select CATEGORY, price as MAX_PRICE, PRODUCT_NAME
from (SELECT *, rank() over (partition by category order by price desc) as rk
from food_product) as dfa
where rk =1 and category in ('과자','국','김치','식용유')
order by 2 desc


