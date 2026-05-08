#初始化所有参数
data merge entity @s {item:{id:"firework_star",components:{"item_model":"resin_gun:resin_fire",custom_model_data:{strings:["resin_fire"],floats:[0]}}},billboard:"center",brightness:{block:15,sky:15}}

function sh:init

#在指定的storage指定参数
data modify storage sh:props data merge value {id:"resin_fire",frames:12,type:2,anim_index:0,frame_index:0,function:"resin_gun:particle/fire/end"}
#执行开始动画函数
function sh:start