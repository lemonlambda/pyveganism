ITEM {
    type = "item",
    name = "oil-palm-fruit",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/oil-palm-fruit.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-plants",
    order = "aba",
    stack_size = 200
}

RECIPE {
    type = "recipe",
    name = "grow-oil-palm",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "oil-palm-fruit", amount = 5}
    },
    icons = {{icon = "__pyveganism__/graphics/icons/grow-oil-palm.png"}},
    icon_size = 64,
    subgroup = "py-veganism-oil-plants",
    order = "aaa"
}:add_unlock("oil-plants")
