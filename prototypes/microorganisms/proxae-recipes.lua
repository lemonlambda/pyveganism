RECIPE {
    type = "recipe",
    name = "enrichment-culture-proxae",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50},
        {type = "item", name = "toe-nail-sample", amount = 1}
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
    order = "aaa",
    main_product = ""
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "pure-culture-proxae",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50},
        {type = "fluid", name = "proxae", amount = 250, catalyst_amount = 250}
    },
    results = {
        {type = "fluid", name = "proxae", amount = 300, catalyst_amount = 250}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/proxae.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-proxae",
    order = "aba",
    main_product = ""
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "osmotic-stress-proxae",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sugar", amount = 30},
        {type = "fluid", name = "proxae", amount = 300}
    },
    results = {
        {type = "fluid", name = "citric-acid", amount = 200},
        {type = "fluid", name = "waste-water", amount = 100}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/proxae.png"}, 
        {icon = "__pyveganism__/graphics/icons/toxic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-proxae",
    order = "aca"
}:add_unlock("sugar-plants")
