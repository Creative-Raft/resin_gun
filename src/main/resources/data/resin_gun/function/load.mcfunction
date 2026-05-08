scoreboard objectives add resin_using dummy
scoreboard objectives add resin_using_lt dummy
scoreboard objectives add resin_usetime dummy

scoreboard objectives add resin_fire dummy
scoreboard objectives add resin_bullet dummy

scoreboard objectives add resin_timer dummy
scoreboard objectives add resin_reload dummy

#世界实体
forceload add 0 0
summon marker 0 0 0 {UUID:[I;0,0,0,1],Tags:["World"]}