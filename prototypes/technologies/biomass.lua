TECHNOLOGY {
    type = "technology",
    name = "biomass",
    icon = "__pyveganism__/graphics/technology/biomass.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"oil-plants"},
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
    name = "biomass",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/biomass.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "biomass-dry",
    enabled = false,
    fuel_value = "1.5MJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/biomass-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aab",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "biomass-pellets",
    enabled = false,
    fuel_value = "5MJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/biomass-pellets.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aac",
    stack_size = 200
}
