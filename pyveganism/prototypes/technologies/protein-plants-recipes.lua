--[[
-- Extraction Recipes  
]]
RECIPE {
    type = "recipe",
    name = "extract-glycine-soy-meal-sulfuric-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "soy-meal", amount = 10}, 
        {type = "fluid", name = "sulfuric-acid", amount = 40}
    },
    results = {
        {type = "item", name = "glycine", amount = 3}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aba"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "extract-glycine-soy-meal-citric-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "soy-meal", amount = 10}, 
        {type = "fluid", name = "citric-acid", amount = 30}
    },
    results = {
        {type = "item", name = "glycine", amount = 4}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "abb"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "extract-glycine-tofu-block",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "tofu-block", amount = 10}, 
        {type = "fluid", name = "citric-acid", amount = 30}
    },
    results = {
        {type = "item", name = "glycine", amount = 4}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "abc"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "extract-glycine-yuba",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "yuba", amount = 10}, 
        {type = "fluid", name = "citric-acid", amount = 30}
    },
    results = {
        {type = "item", name = "glycine", amount = 4}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "abd"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "extract-glycine-tempeh",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "tempeh", amount = 10}, 
        {type = "fluid", name = "citric-acid", amount = 30}
    },
    results = {
        {type = "item", name = "glycine", amount = 4}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "abe"
}:add_unlock("protein-plants")
