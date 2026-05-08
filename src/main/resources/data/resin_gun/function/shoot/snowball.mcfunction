#生成雪球

#根据世界实体的坐标生成motion
execute positioned 0. 0. 0. rotated as @s run tp 00000000-0000-0000-0000-000000000001 ^ ^ ^1.5

data modify storage rg:temp motion set value {x:0f,y:0f,z:0f}
data modify storage rg:temp motion.x set from entity 00000000-0000-0000-0000-000000000001 Pos[0]
data modify storage rg:temp motion.y set from entity 00000000-0000-0000-0000-000000000001 Pos[1]
data modify storage rg:temp motion.z set from entity 00000000-0000-0000-0000-000000000001 Pos[2]

execute anchored eyes positioned ^ ^ ^1 run function resin_gun:shoot/snowball_summon with storage rg:temp motion

summon item_display ~ ~ ~ {Tags:[resin_marker,resin_marker_temp],item:{id:"firework_star",components:{item_model:"resin_gun:resin_bullet_flying"}},teleport_duration:2,brightness:{block:15,sky:15}}

ride @n[tag=resin_marker_temp] mount @n[tag=resin_bullet_temp]

rotate @n[tag=resin_marker_temp] ~ ~
rotate @n[tag=resin_bullet_temp] ~ ~

tag @e[tag=resin_marker_temp] remove resin_marker_temp
tag @e[tag=resin_bullet_temp] remove resin_bullet_temp