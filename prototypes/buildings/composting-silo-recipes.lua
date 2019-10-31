RECIPE {
    type = "recipe",
    name = "composting-silo",
    category = "crafting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "iron-plate", amount = 25},
        {type = "item", name = "soil", amount = 50},
        {type = "item", name = "stone-brick", amount = 50},
    },
    results = {
        {type = "item", name = "composting-silo", amount = 1}
    },
    icons = {
        { icon = "__pyveganism__/graphics/icons/composting-silo.png" },
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aaa"
}
