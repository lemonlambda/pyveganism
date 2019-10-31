FLUID {
    type = "fluid",
    name = "pemtenn",
    icon = "__pyveganism__/graphics/icons/pemtenn.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.800, g = 0.650, b = 0.420},
    flow_color = {r = 0.800, g = 0.650, b = 0.420},
    max_temperature = 100,
    subgroup = "py-veganism-mo"
}

FLUID {
    type = "fluid",
    name = "ethanol-solution",
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/ethanol.png"}
    },
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.151, g = 0.483, b = 0.933},
    flow_color = {r = 0.151, g = 0.483, b = 0.933},
    max_temperature = 100,
    subgroup = "py-veganism-media"
}
