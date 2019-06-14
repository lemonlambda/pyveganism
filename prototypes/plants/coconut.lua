ITEM {
    type = "item",
    name = "coconut",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/coconut.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-plants",
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
    subgroup = "py-veganism-plants",
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
    subgroup = "py-veganism-plants",
    order = "abcb",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "copra-halved-dried",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/copra-halved-dried.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-plants",
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
    subgroup = "py-veganism-plants",
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
        {type = "item", name = "coconut", amount = 5}
    },
    icons = {{icon = "__pyveganism__/graphics/icons/grow-coconut-palm.png"}},
    icon_size = 64,
    subgroup = "py-veganism-coconut",
    order = "aba"
}:add_unlock("oil-plants")