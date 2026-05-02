tag @s add sticky

execute if entity @s[type=#resin_gun:flying_mobs] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Marker:0b,Small:1b,Tags:[resin_sticky],attributes:[{id:"scale",base:0.2}]}

execute if entity @s[type=#resin_gun:flying_mobs] run ride @s mount @n[tag=resin_sticky]

#水中失效
execute if predicate resin_gun:water run return run function resin_gun:sticky_remove


#检测捕获
execute if entity @s[type=#resin_gun:small_mobs] run function resin_gun:on_capture/small
execute if entity @s[type=#resin_gun:mid_mobs] at @s if entity @e[tag=resin_pool,distance=..2] run function resin_gun:on_capture/mid
execute if entity @s[type=#resin_gun:large_mobs] at @s if entity @e[tag=resin_pool_2,distance=..4] run function resin_gun:on_capture/large