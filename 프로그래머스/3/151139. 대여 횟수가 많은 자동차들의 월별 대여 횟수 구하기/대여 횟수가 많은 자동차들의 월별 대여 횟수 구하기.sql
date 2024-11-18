-- 코드를 입력하세요
-- 기간 동안 대여 횟수가 5회 이상인 자동차들의 월별 자동차 ID별 대여횟수
-- order by 월 asc , car_id
with date_filter as (
    SELECT history_id, car_id, start_date, end_date
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    where date_format(start_date,'%Y-%m') >= '2022-08'
    and date_format(start_date,'%Y-%m') <= '2022-10'
    group by car_id
    having count(car_id) >= 5  
    )
    # start_date의 month를 뽑아서 묶어주고 car_id 그룹, 대여횟수 record를 출력
    select month(start_date) as MONTH, car_id, count(car_id) as records
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where date_format(start_date,'%Y-%m') >= '2022-08'
    and date_format(start_date,'%Y-%m') <= '2022-10'
    and car_id in (select car_id from date_filter)
    group by 1, 2
    order by 1 asc, car_id desc
    
    
    
    
    