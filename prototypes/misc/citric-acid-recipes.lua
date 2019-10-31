RECIPE {
    type = "recipe",
    name = "citric-acid-solution",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "crystalline-citric-acid", amount = 1},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "fluid", name = "citric-acid", amount = 100}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/citric-acid.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "daa"
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "crystallize-citric-acid",
    category = "evaporator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "citric-acid", amount = 100}
    },
    results = {
        {type = "item", name = "crystalline-citric-acid", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/crystalline-citric-acid.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "dab"
}:add_unlock("sugar-plants")
