execute on vehicle run data modify entity 00000000-0000-0000-0000-000000000001 Pos set from entity @s Motion
execute positioned 0. 0. 0. facing entity 00000000-0000-0000-0000-000000000001 feet run rotate @s ~ ~

particle block{block_state:"resin_block"} ~ ~ ~ 0 0 0 0 0

execute on vehicle run return 0

function resin_gun:resin_index/summon

kill @s