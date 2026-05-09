#发射子弹

#替换
execute if predicate resin_gun:gun_loaded/main run loot replace entity @s weapon.mainhand loot resin_gun:resin_gun
execute if predicate resin_gun:gun_loaded/off run loot replace entity @s weapon.offhand loot resin_gun:resin_gun

tag @s add fire_anim 
scoreboard players set @s resin_fire 0

playsound minecraft:entity.wind_charge.wind_burst block @a ~ ~ ~ 1 0.5
playsound minecraft:entity.slime.jump block @a ~ ~ ~ 1 1
playsound minecraft:block.shroomlight.place block @a ~ ~ ~ 3 1

function resin_gun:shoot/snowball

execute anchored eyes positioned ^ ^ ^1 run function resin_gun:particle/fire/summon