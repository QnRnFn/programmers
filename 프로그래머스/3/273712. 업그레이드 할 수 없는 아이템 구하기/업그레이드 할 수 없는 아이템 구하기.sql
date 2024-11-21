-- 코드를 작성해주세요
-- 더이상 업그레이드 할 수 없는 아이템 
-- ITEM_ID, ITEM_NAME, RARITY
-- order by ITEM_ID desc
-- ITEM_ID가 PARENT_ITEM_ID에 없으면 더이상 업그레이드 할 수 없음

select ITEM_ID, ITEM_NAME, RARITY
from ITEM_INFO
where item_id not in (
    select parent_item_id
    from item_tree
    where parent_item_id is not null
    )
order by ITEM_ID desc

