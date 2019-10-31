FLUID {
    type = "fluid",
    name = "morgenroete",
    icon = "__pyveganism__/graphics/icons/morgenroete.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.513, g = 0.228, b = 0.130},
    flow_color = {r = 0.513, g = 0.228, b = 0.130},
    max_temperature = 100,
    subgroup = "py-veganism-mo"
}

ITEM {
    type = "item",
    name = "morgenroete-endospores",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/morgenroete-endospores.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-morgenroete",
    order = "aaa",
    stack_size = 200
}
