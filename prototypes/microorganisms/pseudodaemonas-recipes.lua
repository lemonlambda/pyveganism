RECIPE {
    type = "recipe",
    name = "blood-rocket-fuel",
    category = "crafting",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "blood-bag", amount = 1},
        {type = "item", name = "iron-plate", amount = 3}
    },
    results = {
        {type = "item", name = "rocket-fuel", amount = 25}
    },
    icons = {
        {icon = "__base__/graphics/icons/rocket-fuel.png"},
        {icon = "__pyveganism__/graphics/icons/vegan.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pseudodaemonas",
    order = "aba",
    main_product = ""
}:add_unlock("rocket-fuel")

RECIPE {
    type = "recipe",
    name = "pseudodaemonas-rocket-fuel",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "pseudodaemonas", amount = 50},
        {type = "item", name = "iron-plate", amount = 3}
    },
    results = {
        {type = "item", name = "rocket-fuel", amount = 20}
    },
    icons = {
        {icon = "__base__/graphics/icons/rocket-fuel.png"},
        {icon = "__pyveganism__/graphics/icons/vegan.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pseudodaemonas",
    order = "abb",
    main_product = ""
}:add_unlock("growth-media-3"):add_unlock("rocket-fuel")

RECIPE {
    type = "recipe",
    name = "enrichment-culture-pseudodaemonas",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "pseudodaemonas-growth-medium", amount = 50},
        {type = "fluid", name = "pressured-air", amount = 20},
        {type = "fluid", name = "citric-acid", amount = 10},
        {type = "item", name = "limestone", amount = 2},
        {type = "item", name = "blood-bag", amount = 1}
    },
    results = {
        {type = "fluid", name = "pseudodaemonas", amount = 25}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/pseudodaemonas.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pseudodaemonas",
    order = "aaa",
    main_product = ""
}:add_unlock("growth-media-3"):add_unlock("rocket-fuel")

RECIPE {
    type = "recipe",
    name = "pure-culture-pseudodaemonas",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pseudodaemonas-growth-medium", amount = 25},
        {type = "fluid", name = "pressured-air", amount = 20},
        {type = "fluid", name = "citric-acid", amount = 10},
        {type = "fluid", name = "pseudodaemonas", amount = 25, catalyst_amount = 25},
        {type = "item", name = "limestone", amount = 2}
    },
    results = {
        {type = "fluid", name = "pseudodaemonas", amount = 50, catalyst_amount = 25}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/pseudodaemonas.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pseudodaemonas",
    order = "aab",
    main_product = ""
}:add_unlock("growth-media-3"):add_unlock("rocket-fuel")

if mods["pyrawores"] then
    RECIPE("pseudodaemonas-rocket-fuel"):replace_ingredient("iron-plate", "tin-plate")
    RECIPE("enrichment-culture-pseudodaemonas"):replace_ingredient("limestone", "sodium-hydroxide")
    RECIPE("enrichment-culture-pseudodaemonas"):replace_ingredient("pressured-air", "oxygen")
    RECIPE("pure-culture-pseudodaemonas"):replace_ingredient("limestone", "sodium-hydroxide")
    RECIPE("pure-culture-pseudodaemonas"):replace_ingredient("pressured-air", "oxygen")
end
