RECIPE {
    type = "recipe",
    name = "enrichment-culture-proxae",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 50},
        {type = "item", name = "toe-nail-sample", amount = 1},
        {type = "item", name = "sugar", amount = 10}
    },
    results = {
        {type = "fluid", name = "proxae", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/proxae.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-proxae",
    order = "aaa"
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "pure-culture-proxae",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 50},
        {type = "fluid", name = "proxae", amount = 250}, 
        {type = "item", name = "sugar", amount = 10}
    },
    results = {
        {type = "fluid", name = "proxae", amount = 300}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/proxae.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-proxae",
    order = "aba"
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "osmosis-stress-proxae",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sugar", amount = 30},
        {type = "fluid", name = "proxae", amount = 300}
    },
    results = {
        {type = "fluid", name = "citric-acid", amount = 150},
        {type = "fluid", name = "waste-water", amount = 150}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/proxae.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-proxae",
    order = "aca"
}:add_unlock("sugar-plants")
