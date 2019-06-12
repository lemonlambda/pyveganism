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
    subgroup = "py-veganism-oil-plants",
    order = "aaa"
}:add_unlock("oil-plants")