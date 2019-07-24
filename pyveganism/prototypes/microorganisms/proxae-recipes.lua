RECIPE {
    type = "recipe",
    name = "enrichment-culture-proxae-",
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