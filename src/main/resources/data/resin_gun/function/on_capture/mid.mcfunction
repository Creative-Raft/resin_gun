#捕获中间态
tag @s add to_be_captured
tag @s remove sticky

data modify entity @s PersistenceRequired set value 1b

playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~ 5 0.5

execute on vehicle if entity @s[tag=resin_sticky] on passengers run ride @s dismount

summon item_display ~ ~ ~ {item:{id:"firework_star",components:{item_model:"resin_gun:resin_egg_02"}},Tags:[resin_capture_temp,resin_capture],transformation:{translation:[0,-1,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1]}}

ride @n[tag=resin_capture_temp] mount @s

tag @n[tag=resin_capture_temp] remove resin_capture_temp

execute as @n[tag=resin_pool] at @s run function resin_gun:resin_index/destruct