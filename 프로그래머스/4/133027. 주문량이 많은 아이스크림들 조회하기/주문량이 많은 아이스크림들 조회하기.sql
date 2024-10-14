-- 코드를 입력하세요
-- 7월 아이스크림 + 상반기 아이스크림 큰 순서대로 3개의 맛
-- union 해서 flavor로 그룹하고 더하기
with cte as (
select flavor, sum(total_order)
from (
SELECT shipment_id, flavor, total_order
from first_half
union all
select shipment_id, flavor, total_order
from july
    ) as un
group by flavor
order by 2 desc
    )

select flavor
from cte
limit 3