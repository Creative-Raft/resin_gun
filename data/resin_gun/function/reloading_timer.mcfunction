advancement revoke @s only resin_gun:reloading
scoreboard players set @s resin_reload 1
scoreboard players add @s resin_timer 1

execute if score @s resin_timer matches 1 run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 10 1

execute if score @s resin_timer matches 7 run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 10 0.9
execute if score @s resin_timer matches 21 run playsound minecraft:ui.button.click block @a ~ ~ ~ 10 2
execute if score @s resin_timer matches 26 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 10 1
execute if score @s resin_timer matches 26 run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 3 1.5
execute if score @s resin_timer matches 29 run playsound minecraft:block.wooden_trapdoor.open block @a ~ ~ ~ 3 1.5
execute if score @s resin_timer matches 29 run playsound minecraft:item.crossbow.loading_end block @a ~ ~ ~ 10 1
execute if score @s resin_timer matches 30 run playsound minecraft:entity.item.pickup block @a ~ ~ ~ 10 0.5
execute if score @s resin_timer matches 36 run playsound minecraft:item.ominous_bottle.dispose block @a ~ ~ ~ 10 1
execute if score @s resin_timer matches 43 run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 10 1
execute if score @s resin_timer matches 43 run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 3 1.5
execute if score @s resin_timer matches 46 run playsound minecraft:block.piston.extend block @a ~ ~ ~ 10 1.5
execute if score @s resin_timer matches 46 run playsound minecraft:block.wooden_trapdoor.open block @a ~ ~ ~ 3 1.5
execute if score @s resin_timer matches 52 run playsound minecraft:block.piston.contract block @a ~ ~ ~ 10 1.5
execute if score @s resin_timer matches 53 run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 10 1
execute if score @s resin_timer matches 64 run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 10 0.9
execute if score @s resin_timer matches 71 run playsound minecraft:item.armor.equip_leather block @a ~ ~ ~ 10 1
execute if score @s resin_timer matches 71 run playsound minecraft:item.crossbow.loading_end block @a ~ ~ ~ 10 1


