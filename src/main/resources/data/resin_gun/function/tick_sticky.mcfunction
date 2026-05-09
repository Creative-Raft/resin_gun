particle block{block_state:"resin_block"} ~ ~1 ~ 0.5 0.5 0.5 0 5

#检测在地面
execute unless block ~ ~-1 ~ #resin_gun:non_solid if entity @s[nbt={HurtTime:0s}] run return run function resin_gun:sticky_remove
execute if entity @s[nbt={HurtTime:0s,OnGround:1b}] run function resin_gun:sticky_remove
execute if predicate resin_gun:water run return run function resin_gun:sticky_remove
execute if block ~ ~ ~ lava run return run function resin_gun:sticky_remove