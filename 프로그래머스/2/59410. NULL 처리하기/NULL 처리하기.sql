-- 코드를 입력하세요
/*
null로 표시하기 위해서 ifnull이나 coalesce를 사용하면 될듯
*/
SELECT animal_type, coalesce(name, 'No name') as name, SEX_UPON_INTAKE
from animal_ins