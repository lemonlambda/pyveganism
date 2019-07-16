FLUID {
    type = "fluid",
    name = "solfaen",
    icon = "__pyveganism__/graphics/icons/solfaen.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.958, g = 0.166, b = 0.054},
    flow_color = {r = 0.958, g = 0.166, b = 0.054},
    max_temperature = 100,
    subgroup = "py-veganism-mo"
}

ITEM {
    type = "item",
    name = "solfaen-dry",
    enabled = false,
    fuel_value = "250kJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/solfaen-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-solfaen",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "solfaen-washed",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/solfaen-washed.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-solfaen",
    order = "aab",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "agarose-gel",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/agarose-gel.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-solfaen",
    order = "aac",
    stack_size = 200
}
