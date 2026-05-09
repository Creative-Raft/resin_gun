# 【resin_pool】树脂团
data modify storage dc:index input.resin_pool set value {\
    item:{\
        id:"firework_star",\
        components:{"minecraft:item_model":"resin_gun:resin_pool_01"}\
    },\
    interactsize:{height:0.5,width:1},\
    events:{\
        construct:[{event:"custom",args:{func:"resin_gun:resin_index/events/pool_construct"}}],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"resin_clump",count:1}},particle:"block{block_state:\"resin_block\"}",sound:"block.resin.break"}}\
        },\
    }\
}
data modify storage dc:index keylist append value "resin_pool"


# 【resin_pool_2】树脂团
data modify storage dc:index input.resin_pool_2 set value {\
    item:{\
        id:"firework_star",\
        components:{"minecraft:item_model":"resin_gun:resin_pool_02"}\
    },\
    interactsize:{height:0.5,width:2},\
    events:{\
        update:[{event:"custom",args:{func:"resin_gun:resin_index/events/pool_update"}}],\
        left_click:{\
            fallback:{event:"destruct",args:{item:{mode:"replace",item:{id:"resin_clump",count:2}},particle:"block{block_state:\"resin_block\"}",sound:"block.resin.break"}}\
        }\
    }\
}
data modify storage dc:index keylist append value "resin_pool_2"