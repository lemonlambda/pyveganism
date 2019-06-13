ITEM {
    type = "item",
    name = "biomass-burnable",
    enabled = false,
    fuel_value = "5MJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/biomass-burnable.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aaa",
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
    order = "aab",
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
        {type = "item", name = "biomass-burnable", amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessing__/graphics/icons/combustion-mixture1.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-veganism-oil-plants",
    order = "a"
}:add_unlock("energy-1")
