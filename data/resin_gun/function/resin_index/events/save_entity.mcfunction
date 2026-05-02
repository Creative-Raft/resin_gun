data modify entity @s Item.components."minecraft:entity_data".data.inheritance.prop.captured_entity set from storage rg:temp captured_entity

data modify storage rg:temp lore.id set string entity @s Item.components."minecraft:entity_data".data.inheritance.prop.captured_entity.id 10
execute if data entity @s Item.components."minecraft:entity_data".data.inheritance.prop.captured_entity run function resin_gun:resin_index/events/save_entity_ with storage rg:temp lore