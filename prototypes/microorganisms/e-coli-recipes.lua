RECIPE {
    type = "recipe",
    name = "enrichment-culture-e-coli",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50},
        {type = "item", name = "stool-sample", amount = 1}, 
        {type = "item", name = "limestone", amount = 2}
    },
    results = {
        {type = "fluid", name = "e-coli", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/e-coli.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-e-coli",
    order = "aaa",
    main_product = ""
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "pure-culture-e-coli",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50, catalyst_amount = 50},
        {type = "fluid", name = "e-coli", amount = 50},
        {type = "item", name = "limestone", amount = 2}
    },
    results = {
        {type = "fluid", name = "e-coli", amount = 100, catalyst_amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/e-coli.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-e-coli",
    order = "aba",
    main_product = ""
}:add_unlock("sugar-plants")
