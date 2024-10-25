-- 분기별 QUARTER, 분화된 대장균 개체의 총 수 ECOLI_COUNT
-- 분기 +'Q'
-- order by quarter asc
-- 내가 알던 분기랑 다른가
-- 일단 123 1분기 456 2분기 789 3분기 101112 4분기로 해서 연도 무시하고 월일만 보기

with cte as  (select case 
            when date_format(DIFFERENTIATION_DATE, '%m') in (1,2,3) then '1Q'
            when date_format(DIFFERENTIATION_DATE, '%m') in (4,5,6) then '2Q'
            when date_format(DIFFERENTIATION_DATE, '%m') in (7,8,9) then '3Q'
            when date_format(DIFFERENTIATION_DATE, '%m') in (10,11,12) then '4Q'
        end as QUARTER        
from ECOLI_DATA
              )
select quarter, count(quarter) as ecoli_count
from cte
group by quarter
order by quarter asc
        