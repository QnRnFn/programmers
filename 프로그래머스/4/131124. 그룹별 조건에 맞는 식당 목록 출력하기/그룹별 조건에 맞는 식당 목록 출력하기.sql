-- 코드를 입력하세요
-- 가장 많은 리뷰를 작성한 회원 의 리뷰를 조회
-- output 회원이름, 리뷰 텍스트, 리뷰 작성일
-- order by 리뷰작성일 asc, 리뷰 텍스트 asc
# SELECT m.member_name, r.review_text, r.review_date
# from rest_review r left join member_profile m
# on r.member_id = m.member_id
# group by r.member_ID
# having count(review_id)
# order by review_date, review_date

SELECT m.member_name, r.review_text, date_format(r.review_date,'%Y-%m-%d') as review_date
from rest_review r left join member_profile m
on r.member_id = m.member_id
where m.member_id = 
 (select member_id
from rest_review
group by member_id
order by count(review_id) desc
limit 1) 
order by review_date, review_date;

