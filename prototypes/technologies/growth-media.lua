TECHNOLOGY {
    type = "technology",
    name = "growth-media-1",
    icons = {
        {icon = "__pyveganism__/graphics/technology/growth-media.png"},
        {icon = "__pyveganism__/graphics/technology/tech-1.png"}
    },
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"coal-processing-1"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "growth-media-2",    
    icons = {
        {icon = "__pyveganism__/graphics/technology/growth-media.png"},
        {icon = "__pyveganism__/graphics/technology/tech-2.png"}
    },
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"growth-media-1"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "growth-media-3",
    icons = {
        {icon = "__pyveganism__/graphics/technology/growth-media.png"},
        {icon = "__pyveganism__/graphics/technology/tech-3.png"}
    },
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"growth-media-2"},
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

TECHNOLOGY {
    type = "technology",
    name = "growth-media-4",
    icons = {
        {icon = "__pyveganism__/graphics/technology/growth-media.png"},
        {icon = "__pyveganism__/graphics/technology/tech-4.png"}
    },
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"growth-media-3"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}, 
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 30
    }
}

FLUID {
    type = "fluid",
    name = "sterile-water",
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/1.png"}
    },
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
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
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
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/3.png"}
    },
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
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/4.png"}
    },
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

ITEM {
    type = "item",
    name = "semipermeable-membrane",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/semipermeable-membrane.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-media",
    order = "aca",
    stack_size = 200
}
