-- 코드를 입력하세요
-- 22년 4월 13일
-- 취소되지않은 cs 진료 예약 내역
-- output : APNT_NO, PT_NAME, PT_NO, MCDP_CD, DR_NAME, APNT_YMD
-- APNT_YMD asc
select ap.APNT_NO, p.PT_NAME, p.PT_NO, ap.MCDP_CD, d.DR_NAME, ap.APNT_YMD
from (SELECT *
        from appointment
        where date_format(APNT_YMD,'%Y-%m-%d')= '2022-04-13' and MCDP_CD = 'CS'
        and APNT_CNCL_YN ='N'
      ) as ap join PATIENT  p
        on ap.PT_NO = p.PT_NO
      left join DOCTOR d
        on ap.MDDR_ID = d.DR_ID
order by APNT_YMD asc


       