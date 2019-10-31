TECHNOLOGY {
    type = "technology",
    name = "oil-seeds",
    icon = "__pyveganism__/graphics/technology/oil-seeds.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"oil-plants", "protein-plants"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}
