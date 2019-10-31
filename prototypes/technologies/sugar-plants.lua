TECHNOLOGY {
    type = "technology",
    name = "sugar-plants",
    icon = "__pyveganism__/graphics/technology/sugar-plants.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"coal-processing-2"},
    effects = {},
    unit = {
        count = 77,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

ITEM {
    type = "item",
    name = "sugar",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/sugar.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-carbohydrates",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "molasses",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/molasses.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-carbohydrates",
    order = "aab",
    stack_size = 200
}
