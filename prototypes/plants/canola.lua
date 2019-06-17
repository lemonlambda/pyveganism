ITEM {
    type = "item",
    name = "canola",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/canola.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-canola",
    order = "abd",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "canola-seed",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/canola-seed.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-canola",
    order = "abda",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "canola-seed-dry",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/canola-seed-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-canola",
    order = "abdb",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "canola-seed-peeled",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/canola-seed-peeled.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-canola",
    order = "abdc",
    stack_size = 200
}

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
    icons = {{icon = "__pyveganism__/graphics/icons/grow-canola.png"}},
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aba"
}:add_unlock("oil-plants")

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
        {type = "item", name = "canola-seed", amount = 10},
        {type = "item", name = "biomass", amount = 10}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aab"
}:add_unlock("oil-plants")

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
        {type = "item", name = "canola-seed", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola-seed.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aac"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "skin-canola-seed",
    category = "solid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "canola-seed-dry", amount = 5}
    },
    results = {
        {type = "item", name = "canola-seed-peeled", amount = 5},
        {type = "item", name = "biomass-dry", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola-seed.png"},
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aad"
}:add_unlock("oil-plants")

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
        {type = "fluid", name = "plant-oil", amount = 200},
        {type = "item", name = "biomass-dry", amount = 10}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aae"
}:add_unlock("oil-plants")
