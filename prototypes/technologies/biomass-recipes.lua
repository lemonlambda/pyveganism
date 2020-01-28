RECIPE {
    type = "recipe",
    name = "plant-oil-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "plant-oil", amount = 100},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "plant-residues-pellets", amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-mixture1.png",
    icon_size = 32,
    main_product = "combustion-mixture1",
    subgroup = "py-veganism-combustion",
    order = "aaa"
}:add_unlock("biomass")

RECIPE {
    type = "recipe",
    name = "plant-residues-pellets",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "plant-residues-dry", amount = 10}
    },
    results = {
        {type = "item", name = "plant-residues-pellets", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/plant-residues-pellets.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aaa"
}:add_unlock("biomass")

RECIPE {
    type = "recipe",
    name = "plant-residues-dry",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "plant-residues", amount = 30}
    },
    results = {
        {type = "item", name = "plant-residues-dry", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/plant-residues-dry.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aab"
}:add_unlock("biomass")

RECIPE {
    type = "recipe",
    name = "plant-residues-to-organics",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "plant-residues-dry", amount = 2}
    },
    results = {
        {type = "item", name = "organics", amount = 50}
    },
    main_product = "organics",
    icons = {
        {icon = "__pyveganism__/graphics/icons/plant-residues-dry.png"},
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aac"
}:add_unlock("biomass")

RECIPE {
    type = "recipe",
    name = "plant-residues-to-carbon-dioxide",
    category = "hpf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "plant-residues-pellets", amount = 5}
    },
    results = {
        {type = "fluid", name = "carbon-dioxide", amount = 1000}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/carbon-dioxide.png",
    icon_size = 32,
    subgroup = "py-veganism-biomass",
    order = "aad"
}:add_unlock("biomass")
