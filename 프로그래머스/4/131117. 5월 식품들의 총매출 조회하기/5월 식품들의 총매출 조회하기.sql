-- 코드를 입력하세요
-- food_product, food_order
-- 2022 5
-- product_id, product_name, TOTAL_SALES 총매출 >> group by product_id >> sum(price)
-- order by total_price desc, product_id asc
select fp.product_id, product_name, sum(fo.amount) * fp.price as TOTAL_SALES
from (SELECT *
    from food_order
    where date_format(PRODUCE_DATE,'%Y-%m') = '2022-05') as fo
    
    join food_product fp
        on fo.product_id = fp.product_id
group by product_id
order by TOTAL_SALES desc, product_id asc;