RECIPE {
    type = "recipe",
    name = "grow-canola",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "canola", amount = 10}
    },
    main_product = "canola",
    icons = {
        {icon = "__pyveganism__/graphics/icons/grow-canola.png"},
        {icon = "__pyveganism__/graphics/icons/grow.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aba"
}:add_unlock("oil-seeds")

RECIPE {
    type = "recipe",
    name = "process-canola",
    category = "solid-separator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "canola", amount = 10}
    },
    results = {
        {type = "item", name = "canola-seed", amount = 20},
        {type = "item", name = "plant-residues", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola.png"},
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aab"
}:add_unlock("oil-seeds")

RECIPE {
    type = "recipe",
    name = "dry-canola-seed",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "canola-seed", amount = 20}
    },
    results = {
        {type = "item", name = "canola-seed-dry", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola-seed.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aac"
}:add_unlock("oil-seeds")

RECIPE {
    type = "recipe",
    name = "skin-canola-seed",
    category = "solid-separator",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item", name = "canola-seed-dry", amount = 20}
    },
    results = {
        {type = "item", name = "canola-seed-peeled", amount = 20},
        {type = "item", name = "plant-residues-dry", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola-seed.png"},
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aad"
}:add_unlock("oil-seeds")

RECIPE {
    type = "recipe",
    name = "press-canola",
    category = py_veganism_globals["plant_oil_pressing_category"],
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "canola-seed-peeled", amount = 10}
    },
    results = {
        {type = "fluid", name = "plant-oil", amount = 113},
        {type = "item", name = "canola-meal", amount = 10}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aae"
}:add_unlock("oil-seeds")

--[[RECIPE {
    type = "recipe",
    name = "declassify-canola-meal",
    category = "crafting",
    enabled = false,
    energy_required = 0.05,
    ingredients = {
        {type = "item", name = "canola-meal", amount = 10}
    },
    results = {
        {type = "item", name = "plant-residues-dry", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola-meal.png"},
        {icon = "__pyveganism__/graphics/icons/arrow-down.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aaf"
}:add_unlock("oil-seeds")]]

RECIPE {
    type = "recipe",
    name = "extract-protein-canola-meal",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "canola-meal", amount = 10},
        {type = "fluid", name = "ethanol-solution", amount = 40}
    },
    results = {
        {type = "item", name = "protein", amount = 7}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola-meal.png"},
        {icon = "__pyveganism__/graphics/icons/refine.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aag"
}:add_unlock("protein-plants")
