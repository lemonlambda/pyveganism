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
