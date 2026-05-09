#踩块减速

execute if entity @e[distance=..1,tag=resin_pool] run function resin_gun:sticky
execute if entity @e[distance=..2,tag=resin_pool2] run function resin_gun:sticky
execute if entity @s[tag=sticky] run function resin_gun:sticky

execute unless entity @e[distance=..1,tag=resin_pool] unless entity @e[distance=..2,tag=resin_pool2] unless entity @s[tag=sticky] run function resin_gun:sticky_end

execute if entity @s[tag=to_be_captured] run function resin_gun:tick_on_capture
execute if entity @s[tag=sticky] run function resin_gun:tick_sticky
execute if entity @s[tag=captured] run function resin_gun:tick_captured

execute if entity @s[tag=!sticky,tag=!to_be_captured] on vehicle if entity @s[tag=resin_sticky] run kill @s