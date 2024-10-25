-- ECOLI_DATA 
-- output : 부모의 형질을 모두 보유한 대장균 ID, genotype, parent_genotype
-- order by ID asc
-- 부모의 genotype과 자식의 genotype이 같은 자식의 ID
with cte as (
select e.ID, e.parent_id, d.genotype as parent_geno, e.genotype as children_geno
from ecoli_data e join ecoli_data d
    on e.parent_id = d.id
order by id
)
# select * from cte
select id, children_geno as genotype, parent_geno as parent_genotype
from cte
where parent_geno & children_geno = parent_geno
