-- 자식의 수를 보려면 parent_id가 보고자 하는 id의 값을 가지는 걸로

# select a.id, coalesce(count(b.parent_id),0) as child_count
# from ECOLI_DATA  a left join ECOLI_DATA  b
# on a.id = b.parent_id
# group by a.id
# having a.id = b.parent_id

select a.id, count(b.parent_id) as CHILD_COUNT
from  ECOLI_DATA  a left join ECOLI_DATA  b
on a.id = b.parent_id
group by a.id

