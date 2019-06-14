ITEM {
    type = "item",
    name = "canola",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/canola.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-plants",
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
    subgroup = "py-veganism-plants",
    order = "abda",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "canola-seed-dried",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/canola-seed-dried.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-plants",
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
    subgroup = "py-veganism-plants",
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
        {type = "item", name = "canola", amount = 5}
    },
    main_product = "canola",
    icons = {{icon = "__pyveganism__/graphics/icons/grow-canola.png"}},
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aba"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "process-cocoa",
    category = "solid-separator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "canola", amount = 10},
    },
    results = {
        {type = "item", name = "canola-seed", amount = 10},
        {type = "fluid", name = "biomass", amount = 10}
    },
    icon = "__pyveganism__/graphics/icons/canola-seed.png",
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aaa"
}:add_unlock("oil-plants")
