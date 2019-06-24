--sterile water recipes
RECIPE {
    type = "recipe",
    name = "sterile-water-boiling",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
    },
    results = {
        {type = "fluid", name = "sterile-water", amount = 500}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aaa"
}:add_unlock("growth-media-1")

--clean water recipes


--deionized water recipes
RECIPE {
    type = "recipe",
    name = "reverse-osmosis",
    category = "fluid-separator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 500},
        {type = "item", name = "porous-membrane", amount = 1}
    },
    results = {
        {type = "fluid", name = "deionized-water", amount = 450}, 
        {type = "fluid", name = "water-saline", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aca"
}:add_unlock("growth-media-3")


--ultra pure water recipes
