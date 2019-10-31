RECIPE {
    type = "recipe",
    name = "ammonium-sulfate-1",
    category = "chemistry",
    enabled = false,
    energy_required = 1.25,
    ingredients = {
        {type = "fluid", name = "ammonia", amount = 50},
        {type = "fluid", name = "acidgas", amount = 50}
    },
    results = {
        {type = "item", name = "ammonium-sulfate", amount = 2}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/ammonium-sulfate.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-grow-equipment",
    order = "baa"
}:add_unlock("cultivation-expertise-3")

RECIPE {
    type = "recipe",
    name = "ammonium-sulfate-2",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "ammonia", amount = 50},
        {type = "fluid", name = "sulfuric-acid", amount = 20}
    },
    results = {
        {type = "item", name = "ammonium-sulfate", amount = 3}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/ammonium-sulfate.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-grow-equipment",
    order = "bab"
}:add_unlock("cultivation-expertise-3")
