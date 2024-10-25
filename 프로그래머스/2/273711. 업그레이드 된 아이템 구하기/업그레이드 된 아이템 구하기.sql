-- 코드를 작성해주세요
-- output : 아이템 희귀도가 'rare'인 아이템의 다음 업그레이드 아이템 ITEM_ID, ITEM_NAME, RARITY
-- order by ITEM_ID desc
-- 아이템 희귀도가 레어 -> ITEM_INFO 조건으로 rarity = 'rare'
-- join Item_TREE
-- item_id를 parent_item_id로 가지는 ITEM_ID가 있으면 = 다음 업그레이드 아이템
-- 자식의 부모 id가 rare인 것

select i.item_id, item_name, rarity
from item_info i join item_tree t
on i.item_id = t.item_id
where parent_item_id in (select item_id
                        from ITEM_INFO 
                        where rarity = 'rare')
order by item_id desc
