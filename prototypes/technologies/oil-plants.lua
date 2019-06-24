TECHNOLOGY {
    type = "technology",
    name = "oil-plants",
    icon = "__pyveganism__/graphics/technology/oil-plants.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"coal-processing-2"},
    effects = {},
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

ITEM {
    type = "item",
    name = "solid-fat",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/solid-fat.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aba",
    stack_size = 200
}

FLUID {
    type = "fluid",
    name = "plant-oil",
    icon = "__pyveganism__/graphics/icons/plant-oil.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.965, g = 0.784, b = 0.040},
    flow_color = {r = 0.965, g = 0.784, b = 0.040},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-biomass"
}
