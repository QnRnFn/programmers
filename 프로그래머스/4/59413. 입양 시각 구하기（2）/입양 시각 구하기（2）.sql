-- 코드를 입력하세요

with recursive rc as (
  select 0 as hour
  union all
  select hour + 1 from rc where hour < 23
) , cte as (SELECT hour(datetime) as hour, count(*) as counts
from animal_outs
group by hour
order by hour)

select rc.hour, coalesce(cte.counts,0) from rc left join cte
on rc.hour= cte.hour