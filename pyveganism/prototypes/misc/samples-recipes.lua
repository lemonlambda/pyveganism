RECIPE {
    type = "recipe",
    name = "generate-stool-sample",
    category = "handcrafting",
    enabled = false,
    energy_required = 300,
    ingredients = {},
    results = {
        {type = "item", name = "stool-sample", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/stool-sample.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-samples",
    order = "bae"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "generate-engineer-blood",
    category = "handcrafting",
    enabled = false,
    energy_required = 1,
    ingredients = {},
    results = {
        {type = "item", name = "engineer-blood", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/engineer-blood.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-samples",
    order = "bae"
}:add_unlock("rocket-fuel")
