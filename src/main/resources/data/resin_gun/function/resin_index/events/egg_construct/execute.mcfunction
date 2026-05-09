tag @s add resin_egg
data modify entity @n[tag=dc_custom_display] item_display set value "head"


function resin_gun:resin_index/events/egg_construct/if

scoreboard players operation @n[tag=captured_temp] dc_uid = @s dc_uid
tag @n[tag=captured_temp] remove captured_temp


playsound block.resin.place block @a
playsound block.resin.place block @a
playsound block.resin.place block @a
playsound block.resin.place block @a
playsound block.stone.place block @a