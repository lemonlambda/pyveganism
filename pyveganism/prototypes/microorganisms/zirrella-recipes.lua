RECIPE {
    type = "recipe",
    name = "enrichment-culture-zirrella",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 50},
        {type = "item", name = "fawogae", amount = 10}
    },
    results = {
        {type = "fluid", name = "zirrella", amount = 50}
    },
    icons = {
        { icon = "__pyveganism__/graphics/icons/zirrella.png" },
        { icon = "__pyveganism__/graphics/icons/enrichment-culture.png" }
    },
    icon_size = 64,
    subgroup = "py-veganism-zirrella",
    order = "aaa"
}

RECIPE {
    type = "recipe",
    name = "pure-culture-zirrella",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 250},
        {type = "item", name = "fawogae", amount = 10},
        {type = "fluid", name = "zirrella", amount = 50}
    },
    results = {
        {type = "fluid", name = "zirrella", amount = 300}
    },
    icons = {
        { icon = "__pyveganism__/graphics/icons/zirrella.png" },
        { icon = "__pyveganism__/graphics/icons/pure-culture.png" }
    },
    icon_size = 64,
    subgroup = "py-veganism-zirrella",
    order = "aba"
}

RECIPE {
    type = "recipe",
    name = "toxic-stress-zirrella",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "nitrous-medium", amount = 150},
        {type = "fluid", name = "zirrella", amount = 150}, 
        {type = "fluid", name = "carbon-dioxide", amount = 100}
    },
    results = {
        {type = "fluid", name = "urea-medium", amount = 300}
    },
    icons = {
        { icon = "__pyveganism__/graphics/icons/zirrella.png" },
        { icon = "__pyveganism__/graphics/icons/toxic-stress.png" }
    },
    icon_size = 64,
    subgroup = "py-veganism-zirrella",
    order = "aca"
}

RECIPE {
    type = "recipe",
    name = "evaporate-urea-medium",
    category = "evaporator",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "urea-medium", amount = 150},
    },
    results = {
        {type = "item", name = "urea", amount = 50}
    },
    icons = {
        {icon = "__pyhightech__/graphics/icons/urea.png"},
        {icon = "__pyveganism__/graphics/icons/vegan-small.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-zirrella",
    order = "ada"
}
