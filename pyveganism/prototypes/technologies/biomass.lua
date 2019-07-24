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
    name = "plant-residues",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/plant-residues.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "baa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "plant-residues-dry",
    enabled = false,
    fuel_value = "1.5MJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/plant-residues-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "bab",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "plant-residues-pellets",
    enabled = false,
    fuel_value = "5MJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/plant-residues-pellets.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "bac",
    stack_size = 200
}
