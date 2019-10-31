TECHNOLOGY {
    type = "technology",
    name = "protein-plants",
    icon = "__pyveganism__/graphics/technology/protein-plants.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"coal-processing-2"},
    effects = {},
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

ITEM {
    type = "item",
    name = "protein",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/protein.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-proteins",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "glycine",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/glycine.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-proteins",
    order = "aab",
    stack_size = 200
}
