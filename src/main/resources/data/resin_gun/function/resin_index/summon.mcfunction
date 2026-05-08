#首先检查直接击中实体
playsound minecraft:entity.wind_charge.wind_burst block @a ~ ~ ~ 1 1
playsound minecraft:block.shroomlight.place block @a ~ ~ ~ 3 1
playsound minecraft:entity.firework_rocket.blast block @a ~ ~ ~ 10 1
function resin_gun:particle/ex/summon

execute positioned ~ ~-1 ~ if entity @e[type=#resin_gun:mobs,distance=..2.5,tag=!fire_anim,tag=!captured] as @n[type=#resin_gun:mobs,distance=..2.5,tag=!fire_anim,tag=!captured] at @s run return run function resin_gun:sticky_add

#然后检查升级
execute if entity @e[tag=resin_pool,tag=!resin_pool_2,distance=..1.5] as @n[tag=resin_pool,tag=!resin_pool_2] at @s run return run function resin_gun:resin_index/upgrade

execute unless block ~ ~-1 ~ #resin_gun:non_solid align xyz run summon marker ~ ~ ~ {Tags:[dc_place],data:{index:"resin_pool"}}