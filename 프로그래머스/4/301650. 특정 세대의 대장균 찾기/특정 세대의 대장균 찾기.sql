WITH RECURSIVE cte AS (
    -- 1세대 (PARENT_ID가 NULL인 개체)
    SELECT ID, PARENT_ID, 1 AS generation
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NULL

    UNION ALL

    -- 재귀적으로 자식 개체를 찾아 세대 계산
    SELECT e.ID, e.PARENT_ID, cte.generation + 1 AS generation
    FROM ECOLI_DATA e
    JOIN cte ON e.PARENT_ID = cte.ID
)

select ID from cte
where generation in ('3')