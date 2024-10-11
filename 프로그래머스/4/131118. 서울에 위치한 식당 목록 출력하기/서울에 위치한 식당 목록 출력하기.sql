-- 코드를 입력하세요
-- 서울에 위치한 식당
-- rest_id, rest_name, food_type, favorites, address, 리뷰평균점수( round(,3))
-- order by 평균점수 desc. favorites desc
-- join 조건 rest_id
SELECT i.rest_id, i.rest_name, i.FOOD_TYPE, i.favorites, i.address, round(avg(r.review_score),2) as SCORE 
from rest_info i left join rest_review r
    on i.rest_id = r.rest_id
where left(i.address,2) = '서울' and r.review_score is not null
group by i.rest_id
order by 6 desc, 4 desc