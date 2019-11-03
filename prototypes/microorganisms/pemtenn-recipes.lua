RECIPE {
    type = "recipe",
    name = "enrichment-culture-pemtenn",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50},
        {type = "item", name = "sugar-beet-washed", amount = 2}
    },
    results = {
        {type = "fluid", name = "pemtenn", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/pemtenn.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pemtenn",
    order = "aaa",
    main_product = ""
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "pure-culture-pemtenn",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50},
        {type = "fluid", name = "pemtenn", amount = 250, catalyst_amount = 250}
    },
    results = {
        {type = "fluid", name = "pemtenn", amount = 300, catalyst_amount = 250}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/pemtenn.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pemtenn",
    order = "aba",
    main_product = ""
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "osmotic-stress-pemtenn",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sugar", amount = 30},
        {type = "fluid", name = "pemtenn", amount = 20}, 
        {type = "fluid", name = "sterile-water", amount = 280}
    },
    results = {
        {type = "fluid", name = "ethanol-solution", amount = 200},
        {type = "fluid", name = "waste-water", amount = 100}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/pemtenn.png"}, 
        {icon = "__pyveganism__/graphics/icons/toxic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-pemtenn",
    order = "aca"
}:add_unlock("sugar-plants")
