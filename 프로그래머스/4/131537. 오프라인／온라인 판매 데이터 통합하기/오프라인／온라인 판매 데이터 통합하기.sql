-- 코드를 입력하세요
-- where year(SALES_DATE)=2022 and month(SALES_DATE)=3
-- order by SALES_DATE asc, product_id asc, user_id
-- union

with cte as (
SELECT USER_ID, PRODUCT_ID, SALES_AMOUNT, SALES_DATE
from online_sale
union all
select null as user_id, PRODUCT_ID, SALES_AMOUNT, SALES_DATE
from offline_sale
    )
 
  
select date_format(sales_date, '%Y-%m-%d') as SALES_DATE, product_id, user_id, sales_amount
from cte
where year(SALES_DATE)=2022 and month(SALES_DATE)=3
order by SALES_DATE asc, product_id asc, user_id



