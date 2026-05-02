#子弹状态
execute store result score @s resin_bullet run clear @s *[custom_data~{id:"resin_bullet"}] 0

#使用状态

execute if predicate resin_gun:gun_loaded/main if score @s resin_using matches 0 if score @s resin_using_lt matches 1 if score @s resin_usetime matches 1.. run function resin_gun:shoot/trigger

execute if score @s resin_using matches 0 run scoreboard players set @s resin_usetime 0

scoreboard players operation @s resin_using_lt = @s resin_using
scoreboard players set @s resin_using 0


# 发射动画
execute if entity @s[tag=fire_anim] run function resin_gun:fire_anim

# 状态
execute unless entity @s[tag=fire_anim] if predicate resin_gun:gun_empty/main if predicate resin_gun:status/score/bullet unless predicate resin_gun:status/reload/main run item modify entity @s weapon.mainhand resin_gun:normal
execute unless entity @s[tag=fire_anim] if predicate resin_gun:gun_empty/main unless predicate resin_gun:status/score/bullet if predicate resin_gun:status/reload/main run item modify entity @s weapon.mainhand resin_gun:no_reload

execute unless entity @s[tag=fire_anim] if predicate resin_gun:gun_empty/off if predicate resin_gun:status/reload/off run item modify entity @s weapon.offhand resin_gun:no_reload


execute unless entity @s[tag=fire_anim] if predicate resin_gun:gun_loaded/main if predicate resin_gun:status/disable/main run item modify entity @s weapon.mainhand resin_gun:loaded_enable 
execute unless entity @s[tag=fire_anim] if predicate resin_gun:gun_loaded/off unless predicate resin_gun:status/disable/off run item modify entity @s weapon.offhand resin_gun:loaded_disable 

#换弹

execute if score @s resin_reload matches 0 run scoreboard players set @s resin_timer 0

scoreboard players set @s resin_reload 0