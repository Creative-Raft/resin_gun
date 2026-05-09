execute if predicate resin_gun:gun_empty/main run item modify entity @s weapon.mainhand resin_gun:fire
execute if predicate resin_gun:gun_empty/off run item modify entity @s weapon.offhand resin_gun:fire
execute unless predicate resin_gun:gun_empty/both run tag @s remove fire_anim

execute if score @s resin_fire matches 20.. run tag @s remove fire_anim
scoreboard players add @s resin_fire 1