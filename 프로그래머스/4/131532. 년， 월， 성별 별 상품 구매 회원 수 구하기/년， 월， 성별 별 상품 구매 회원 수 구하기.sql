-- 코드를 입력하세요
-- YEAR,	MONTH,	GENDER,	USERS
-- gender 0 남자, 1 여자
-- 년,월, 성별 별 상품 구매한 회원수
-- order by 년, 월, 성별 asc
-- 성별이 없는 경우 제외

-- 성별 없는 것 제외 
with user_gender as (
SELECT *
from user_info
where gender is not null
    )

select year(sales_date) as YEAR, month(sales_date) as MONTH, GENDER, count(distinct o.user_id) as USERS
from online_sale o left join user_gender u
    on o.user_id = u.user_id
    where gender is not null
    group by year, month, gender
    
    
