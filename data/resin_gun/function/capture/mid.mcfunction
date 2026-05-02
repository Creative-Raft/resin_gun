#完成捕获
execute on passengers if entity @s[tag=resin_capture] run kill @s
execute on passengers run ride @s dismount


tag @s remove to_be_captured
tag @s add captured
tag @s add captured_temp
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
data modify entity @s Invulnerable set value 1b

summon marker ~ ~ ~ {Tags:[dc_place,dc_direct_summon],data:{index:"resin_egg_2"}}