-- USED_GOODS_BOARD 
-- USED_GOODS_USER 
-- 회원 ID, 닉네임, 총거래금액
-- 완료된 중고 거래의 총금액이 70만원 이상
-- order by 총거래금액 asc

-- USED_GOODS_BOARD writer_id 별로 price의 합을 구하고
-- 합이 70만원 writer_id를 회원 ID, 닉네임, 총거래금액
with cte as (
select *
from USED_GOODS_BOARD
where status = 'DONE'
)

select writer_id as USER_ID, u.NICKNAME, sum(price) as TOTAL_SALES
from cte b left join USED_GOODS_USER u
on b.WRITER_ID = u.USER_ID
group by writer_id
having sum(price) >= 700000
order by TOTAL_SALES asc



