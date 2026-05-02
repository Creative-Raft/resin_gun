execute positioned ~ ~1 ~ run function resin_gun:particle/ex/summon

playsound block.resin.break player @a
playsound block.resin.break player @a
playsound block.resin.break player @a
playsound block.resin.break player @a

tag @s add resin_egg_burst_temp
execute as @e[tag=captured,distance=..10] if score @s dc_uid = @n[tag=resin_egg_burst_temp] dc_uid run function resin_gun:decapture

data modify storage dc events.temp.target set value {event:"destruct",args:{}}
function dc:events/_detect/event_execute with storage dc events.temp.target