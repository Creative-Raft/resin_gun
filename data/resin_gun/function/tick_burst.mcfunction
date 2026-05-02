scoreboard players add @s resin_timer 1

particle block{block_state:"resin_block"} ~ ~1 ~ 1 1 1 0 10

particle smoke ~ ~0.5 ~ 0 0.1 0 0.05 10

execute if score @s resin_timer matches 30.. run function resin_gun:burst