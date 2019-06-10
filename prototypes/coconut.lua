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
    name = "grow-coconut",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "sand", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "coconut", amount = 5}
    },
    main_product = "tiriscefing-willow",
    icon = "__pyveganism__/graphics/icons/tiriscefing-willow.png",
    icon_size = 64,
    subgroup = "py-veganism-tiriscefing-willow",
    order = "aaa"
}:add_unlock("coal-processing-1")