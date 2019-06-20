TECHNOLOGY {
    type = "technology",
    name = "growth-media-1",
    icon = "__pyveganism__/graphics/technology/growth-media-1.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"coal-processing-3"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}, 
            {"chemical-science-pack", 1}
        },
        time = 30
    }
}

FLUID {
    type = "fluid",
    name = "sterile-water",
    icon = "__pyveganism__/graphics/icons/sterile-water.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.151, g = 0.483, b = 0.933},
    flow_color = {r = 0.151, g = 0.483, b = 0.933},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-media"
}

FLUID {
    type = "fluid",
    name = "clean-water",
    icon = "__pyveganism__/graphics/icons/clean-water.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.151, g = 0.483, b = 0.933},
    flow_color = {r = 0.151, g = 0.483, b = 0.933},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-media"
}

FLUID {
    type = "fluid",
    name = "deionized-water",
    icon = "__pyveganism__/graphics/icons/deionized-water.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.151, g = 0.483, b = 0.933},
    flow_color = {r = 0.151, g = 0.483, b = 0.933},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-media"
}

FLUID {
    type = "fluid",
    name = "ultra-pure-water",
    icon = "__pyveganism__/graphics/icons/ultra-pure-water.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.151, g = 0.483, b = 0.933},
    flow_color = {r = 0.151, g = 0.483, b = 0.933},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-media"
}

--sterile water recipes
RECIPE {
    type = "recipe",
    name = "sterile-water-boiling",
    category = "hpf",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
    },
    results = {
        {type = "fluid", name = "deionized-water", amount = 450}, 
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    icon = "__pyveganism__/graphics/icons/atztazzae-mycel.png",
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aab"
}:add_unlock("vanadium-processing")

--clean water recipes


--deionized water recipes
RECIPE {
    type = "recipe",
    name = "reverse-osmosis",
    category = "fluid-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 500},
        {type = "item", name = "porous-membrane", amount = 1}
    },
    results = {
        {type = "fluid", name = "deionized-water", amount = 450}, 
        {type = "fluid", name = "saline-water", amount = 50}
    },
    icon = "__pyveganism__/graphics/icons/atztazzae-mycel.png",
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aab"
}:add_unlock("vanadium-processing")