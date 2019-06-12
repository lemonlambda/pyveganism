RECIPE {
    type = "recipe",
    name = "vegetable-lard",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "solid-fat", amount = 6},
        {type = "fluid", name = "plant-oil", amount = 40}
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 4}
    },
    icon = "__pycoalprocessing__/graphics/icons/mukmoux-fat.png",
    icon_size = 32,
    subgroup = "py-veganism-oil-plants",
    order = "aba"
}:add_unlock("oil-plants")

TECHNOLOGY {
    type = "technology",
    name = "oil-plants",
    icon = "__pyveganism__/graphics/technology/oil-plants.png",
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
