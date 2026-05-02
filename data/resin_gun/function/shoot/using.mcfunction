advancement revoke @s only resin_gun:targeting

scoreboard players set @s resin_using 1

scoreboard players add @s resin_usetime 1

execute if score @s resin_using_lt matches 0 run playsound minecraft:item.crossbow.loading_end block @a ~ ~ ~ 1 2
execute if score @s resin_using_lt matches 0 run playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~ 5 2