
FLUID {
    type = "fluid",
    name = "activated-sludge",
    icon = "__pyveganism__/graphics/icons/activated-sludge.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.5, g = 0.05, b = 0.1},
    flow_color = {r = 0.5, g = 0.05, b = 0.1},
    max_temperature = 100,
    subgroup = "py-veganism-media"
}

FLUID {
    type = "fluid",
    name = "sewage-sludge",
    icon = "__pyveganism__/graphics/icons/sewage-sludge.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.5, g = 0.05, b = 0.1},
    flow_color = {r = 0.5, g = 0.05, b = 0.1},
    max_temperature = 100,
    subgroup = "py-veganism-media"
}

FLUID {
    type = "fluid",
    name = "marsh-gas",
    fuel_value = "2MJ",
    icon = "__pyveganism__/graphics/icons/marsh-gas.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.5, g = 0.05, b = 0.1},
    flow_color = {r = 0.5, g = 0.05, b = 0.1},
    max_temperature = 100,
    subgroup = "py-veganism-media"
}

ITEM {
    type = "item",
    name = "sewage-sludge-dry",
    enabled = false,
    fuel_value = "500kJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/sewage-sludge-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-media",
    order = "abca",
    stack_size = 200
}
