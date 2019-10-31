FLUID {
    type = "fluid",
    name = "citric-acid",
    icon = "__pyveganism__/graphics/icons/citric-acid.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.850, g = 0.800, b = 0.750},
    flow_color = {r = 0.850, g = 0.800, b = 0.750},
    max_temperature = 100,
    subgroup = "py-veganism-media"
}

ITEM {
    type = "item",
    name = "crystalline-citric-acid",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/crystalline-citric-acid.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-media",
    order = "caa",
    stack_size = 200
}
