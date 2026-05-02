data modify storage rg:temp captured_entity set from entity @s data.prop.captured_entity

execute as @e[tag=captured,distance=..10] if score @s dc_uid = @n[tag=dc_custom_pivot] dc_uid run tag @s add to_be_cleared

tp @e[tag=to_be_cleared] ~ -100 ~
kill @e[tag=to_be_cleared]