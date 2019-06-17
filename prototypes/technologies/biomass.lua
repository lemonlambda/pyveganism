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

RECIPE {
    type = "recipe",
    name = "plant-oil-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "plant-oil", amount = 100},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "biomass-pellets", amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessing__/graphics/icons/combustion-mixture1.png",
    icon_size = 32,
    main_product = "combustion-mixture1",
    subgroup = "py-veganism-oil-plants",
    order = "a"
}:add_unlock("biomass")

RECIPE {
    type = "recipe",
    name = "biomass-pellets",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "biomass-dry", amount = 10}
    },
    results = {
        {type = "item", name = "biomass-pellets", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/biomass-pellets.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aaa"
}:add_unlock("biomass")

RECIPE {
    type = "recipe",
    name = "biomass-dry",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "biomass", amount = 30}
    },
    results = {
        {type = "item", name = "biomass-dry", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/biomass-dry.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aab"
}:add_unlock("biomass")
