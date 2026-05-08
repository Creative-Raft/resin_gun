tag @s remove sticky

execute if entity @e[tag=resin_pool,tag=!resin_pool_2,distance=..1.5] as @n[tag=resin_pool,tag=!resin_pool_2] at @s run return run function resin_gun:resin_index/upgrade


execute unless block ~ ~-1 ~ #resin_gun:non_solid align xyz run summon marker ~ ~ ~ {Tags:[dc_place],data:{index:"resin_pool"}}