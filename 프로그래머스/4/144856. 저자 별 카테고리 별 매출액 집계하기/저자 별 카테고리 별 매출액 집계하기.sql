-- 코드를 입력하세요
-- 22년 1월 
-- 카테고리별 매출액
-- total_sales = bs.sales * b.price
-- author_id, author_name, category, sales
-- o b author_id asc, category desc
with jan_sales as (
SELECT book_id, sales_date, sales
from book_sales 
where year(sales_date)=2022 and month(sales_date)=1
    )

select a.author_id, a.author_name, b.category, sum(j.sales*b.price) as total_sales
from book b left join author a
on b.author_id = a.author_id
left join jan_sales j
on b.book_id = j.book_id
group by 2,3
order by 1 asc, 3 desc