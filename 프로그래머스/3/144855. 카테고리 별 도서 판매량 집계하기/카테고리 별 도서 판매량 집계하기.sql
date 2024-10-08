-- 코드를 입력하세요
-- 1월의 카테고리별 도서 판매량 합산
-- category, total_sales 출력
SELECT category, sum(s.sales) as total_sales
from book b left join 
(select book_id, sales_date, sales
from book_sales
where year(sales_date) = 2022 and month(sales_date)=1) as s
on b.book_id = s.book_id
group by category
order by category;

