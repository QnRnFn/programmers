-- HR_department : dept_id, dept_name_kr, dept_name_en, location
-- hr_employees : emp_no, emp_name, dept_id, position, email, comp_tel, hire_date, sal
-- hr_grade : emp_no, year, half_year, score
-- 사원별 성과금 정보
-- emp_no, emp_name, as grade, as bonus
-- order by emp_no
-- employees join year_mean_score on emp_no =

with year_mean_score as
(
select emp_no, year, avg(score) as score
from hr_grade
group by emp_no, year
order by emp_no
)
select y.emp_no, e.emp_name, 
    case 
    when y.score >= 96 then 'S'
    when y.score >= 90 then 'A'
    when y.score >= 80 then 'B'
    else 'C' end as grade, 
    case
    when y.score >= 96 then e.sal*0.2
    when y.score >= 90 then e.sal*0.15
    when y.score >= 80 then e.sal*0.1
    else 0 end as bonus
from  year_mean_score y join hr_employees e
on y.emp_no = e.emp_no
order by emp_no


