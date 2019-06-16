ITEM {
    type = "item",
    name = "coconut",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/coconut.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-coconut",
    order = "abc",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "copra",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/copra.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-coconut",
    order = "abca",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "copra-halved",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/copra-halved.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-coconut",
    order = "abcb",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "copra-halved-dry",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/copra-halved-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-coconut",
    order = "abcc",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "coconut-butter",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/coconut-butter.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-coconut",
    order = "abcd",
    stack_size = 200
}

RECIPE {
    type = "recipe",
    name = "grow-coconut-palm",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "coconut", amount = 5},
        {type = "item", name = "biomass", amount = 2}
    },
    icons = {{icon = "__pyveganism__/graphics/icons/grow-coconut-palm.png"}},
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aba"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "core-coconut",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "coconut", amount = 5}
    },
    results = {
        {type = "item", name = "copra", amount = 5},
        {type = "item", name = "biomass", amount = 2}
    },
    icons = {{icon = "__pyveganism__/graphics/icons/copra.png"}},
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aaa"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "halve-copra",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "copra", amount = 3}
    },
    results = {
        {type = "item", name = "copra-halved", amount = 1}
    },
    icons = {{icon = "__pyveganism__/graphics/icons/copra-halved.png"}},
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aab"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "dry-copra",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "copra-halved", amount = 10}
    },
    results = {
        {type = "item", name = "copra-halved-dry", amount = 10}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/copra-halved.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aac"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "press-copra",
    category = py_veganism_globals["plant_oil_pressing_category"],
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "copra-halved-dry", amount = 10}
    },
    results = {
        {type = "item", name = "coconut-butter", amount = 10},
        {type = "item", name = "biomass-dry", amount = 4}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/coconut.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aad"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "refine-coconut-butter",
    category = py_veganism_globals["plant_oil_refining_category"],
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "coconut-butter", amount = 10},
        {type = "fluid", name = "vacuum", amount = 50},
        {type = "fluid", name = "steam", amount = 200}
    },
    results = {
        {type = "item", name = "solid-fat", amount = 8},
        {type = "fluid", name = "plant-oil", amount = 100}
    },
    icons = {{icon = "__pyveganism__/graphics/icons/copra-halved.png"}},
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aad"
}:add_unlock("oil-plants")
