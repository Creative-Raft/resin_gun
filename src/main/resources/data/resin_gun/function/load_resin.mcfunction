advancement revoke @s only resin_gun:load_resin

#创造模式替换
execute if entity @s[gamemode=creative] if predicate resin_gun:gun_empty/main run loot replace entity @s weapon.mainhand loot resin_gun:resin_gun_loaded
execute if entity @s[gamemode=creative] if predicate resin_gun:gun_empty/off run loot replace entity @s weapon.offhand loot resin_gun:resin_gun_loaded

#移除树脂
clear @s[gamemode=!creative] *[custom_data~{id:"resin_gun:resin_bullet"}] 1

playsound minecraft:item.crossbow.loading_end block @a ~ ~ ~ 1 2
playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~ 5 2