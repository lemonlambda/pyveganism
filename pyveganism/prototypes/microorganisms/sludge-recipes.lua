RECIPE {
    type = "recipe",
    name = "enrichment-culture-activated-sludge",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sterile-water", amount = 100},
        {type = "item", name = "stool-sample", amount = 2},
        {type = "item", name = "soil", amount = 20}
    },
    results = {
        {type = "fluid", name = "activated-sludge", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/activated-sludge.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abca"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "pure-culture-activated-sludge",
    category = "bio-reactor",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "activated-sludge", amount = 100}
    },
    results = {
        {type = "fluid", name = "activated-sludge", amount = 180}, 
        {type = "fluid", name = "sewage-sludge", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/activated-sludge.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abcb"
}:add_unlock("growth-media-2")
