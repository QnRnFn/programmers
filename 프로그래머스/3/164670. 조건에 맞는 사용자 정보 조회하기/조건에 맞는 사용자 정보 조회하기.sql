-- USED_GOODS_BOARD 
-- USED_GOODS_USER 
-- 중고 거래 게시물을 3건 이상 등록한 사용자 -- board 테이블에서 user_id로 그룹해서 게시글이 3개 이상인 writer_id
-- user_id, nickname, 전체 주소, TLNO
-- 전체주소 = 시, 도로명 주소, 상세 주소
-- 하이픈으로 중간 잇기
-- order by user_id desc


select USER_ID, NICKNAME, 
        concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as '전체주소', 
        concat(substring(TLNO,1,3),'-',substring(TLNO,4,4),'-',substring(TLNO,8,4)) as '전화번호'
from USED_GOODS_USER 
where user_id in (SELECT writer_id
                    from USED_GOODS_BOARD
                    group by writer_id
                    having count(BOARD_ID) >= 3 )
order by USER_ID desc
