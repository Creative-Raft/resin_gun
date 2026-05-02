data modify storage dc:template resin_egg set value {\
    events:{\
        construct:[{event:"custom",args:{func:"resin_gun:resin_index/events/egg_construct"}}],destruct:[{event:"custom"}],\
        left_click:{\
            fallback:{event:"group",args:{events:[\
            {event:"custom",args:{func:"resin_gun:resin_index/events/egg_destruct"}},\
            {event:"destruct",args:{particle:"block{block_state:\"resin_block\"}",sound:"block.resin.break",item:{func:"resin_gun:resin_index/events/save_entity"}}},\
            ]}}\
        },\
        right_click:{fallback:{event:"custom",args:{func:"resin_gun:resin_index/events/egg_fallback"}}}\
    }\
}

data modify storage dc:template resin_egg_burst set value {\
    events:{\
        update:[{event:"custom",args:{func:"resin_gun:resin_index/events/egg_burst"}}],destruct:[{event:"custom"}],\
        left_click:{\
            fallback:{event:"__nothing__"}\
        },\
    }\
}


# 【resin_egg_1】树脂球
data modify storage dc:index input.resin_egg_1 set value {\
    item:{\
        components:{"minecraft:item_model":"resin_gun:resin_egg_01"}\
    },\
    "loot_table":"resin_gun:resin_egg_1",\
    interactsize:{height:1,width:1},\
    template:"resin_egg",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"resin_egg_1_burst",func:"resin_gun:resin_index/events/burst_flint"},item:{id:"flint_and_steel"}},\
                {event:"trans",args:{index:"resin_egg_1_burst",func:"resin_gun:resin_index/events/burst_charge"},item:{id:"fire_charge"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "resin_egg_1"


# 【resin_egg_2】树脂球
data modify storage dc:index input.resin_egg_2 set value {\
    item:{\
        components:{"minecraft:item_model":"resin_gun:resin_egg_02"}\
    },\
    "loot_table":"resin_gun:resin_egg_2",\
    interactsize:{height:2,width:2},\
    template:"resin_egg",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"resin_egg_2_burst",func:"resin_gun:resin_index/events/burst_flint"},item:{id:"flint_and_steel"}},\
                {event:"trans",args:{index:"resin_egg_2_burst",func:"resin_gun:resin_index/events/burst_charge"},item:{id:"fire_charge"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "resin_egg_2"

# 【resin_egg_3】树脂球
data modify storage dc:index input.resin_egg_3 set value {\
    item:{\
        components:{"minecraft:item_model":"resin_gun:resin_egg_03"}\
    },\
    "loot_table":"resin_gun:resin_egg_3",\
    interactsize:{height:2,width:2},\
    template:"resin_egg",\
    events:{\
        right_click:{\
            criteria:[\
                {event:"trans",args:{index:"resin_egg_3_burst",func:"resin_gun:resin_index/events/burst_flint"},item:{id:"flint_and_steel"}},\
                {event:"trans",args:{index:"resin_egg_3_burst",func:"resin_gun:resin_index/events/burst_charge"},item:{id:"fire_charge"}}\
            ]\
        }\
    }\
}
data modify storage dc:index keylist append value "resin_egg_3"







# 【resin_egg_1_burst】树脂球
data modify storage dc:index input.resin_egg_1_burst set value {\
    item:{\
        components:{"minecraft:item_model":"resin_gun:resin_egg_01"}\
    },\
    "loot_table":"resin_gun:resin_egg_1",\
    interactsize:{height:1,width:1},\
    template:"resin_egg_burst"\
}
data modify storage dc:index keylist append value "resin_egg_1_burst"


# 【resin_egg_2_burst】树脂球
data modify storage dc:index input.resin_egg_2_burst set value {\
    item:{\
        components:{"minecraft:item_model":"resin_gun:resin_egg_02"}\
    },\
    "loot_table":"resin_gun:resin_egg_2",\
    interactsize:{height:2,width:2},\
    template:"resin_egg_burst"\
}
data modify storage dc:index keylist append value "resin_egg_2_burst"

# 【resin_egg_3_burst】树脂球
data modify storage dc:index input.resin_egg_3_burst set value {\
    item:{\
        components:{"minecraft:item_model":"resin_gun:resin_egg_03"}\
    },\
    "loot_table":"resin_gun:resin_egg_3",\
    interactsize:{height:2,width:2},\
    template:"resin_egg_burst"\
}
data modify storage dc:index keylist append value "resin_egg_3_burst"
