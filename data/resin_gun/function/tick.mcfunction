execute as @a at @s run function resin_gun:tick_player
execute as @e[type=item_display,tag=resin_marker] at @s run function resin_gun:tick_bullet

execute as @e[type=#resin_gun:mobs] at @s run function resin_gun:tick_mob

execute as @e[type=marker,tag=resin_egg_burst] at @s run function resin_gun:tick_burst

