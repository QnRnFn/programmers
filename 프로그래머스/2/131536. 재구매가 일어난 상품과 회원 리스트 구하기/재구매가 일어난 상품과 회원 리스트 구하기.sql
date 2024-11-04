-- online_sale : online_sale_id, user_id, product_id, sales_amount, sales_date
-- 동일한 회원이 상품을 재구매한 데이터
-- user_id, product_id
-- order by uers_id asc, product_id desc
-- user_id, product_id로 그룹해서 count가 2개이상인것 출력
SELECT user_id, product_id
from online_sale
group by user_id, product_id
having count(product_id) >= 2
order by user_id asc, product_id desc