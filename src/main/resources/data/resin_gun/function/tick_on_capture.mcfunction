#检测捕获
execute if entity @s[nbt={OnGround:1b},type=#resin_gun:small_mobs] run function resin_gun:capture/small

execute if entity @s[nbt={OnGround:1b},type=#resin_gun:mid_mobs] run function resin_gun:capture/mid

execute if entity @s[nbt={OnGround:1b},type=#resin_gun:large_mobs] run function resin_gun:capture/large



execute if entity @s[type=#resin_gun:small_mobs,type=#resin_gun:flying_mobs] on vehicle if entity @s[nbt={OnGround:1b}] on passengers run function resin_gun:capture/small

execute if entity @s[type=#resin_gun:mid_mobs,type=#resin_gun:flying_mobs] on vehicle if entity @s[nbt={OnGround:1b}] on passengers run function resin_gun:capture/mid

execute if entity @s[type=#resin_gun:large_mobs,type=#resin_gun:flying_mobs] on vehicle if entity @s[nbt={OnGround:1b}] on passengers run function resin_gun:capture/large