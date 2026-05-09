#保存数据

data modify entity @s data.prop.captured_entity.data set from entity @n[tag=captured_temp]
ride @n[tag=captured_temp] mount @n[tag=dc_custom_display]
data modify entity @s data.prop.captured_entity.id set from entity @n[tag=dc_custom_display] Passengers[0].id
ride @n[tag=captured_temp] dismount
data modify entity @n[tag=captured_temp] Pos set from entity @s data.prop.captured_entity.data.Pos

data remove entity @s data.prop.captured_entity.data.UUID
data remove entity @s data.prop.captured_entity.data.Pos
data remove entity @s data.prop.captured_entity.data.Rotation
