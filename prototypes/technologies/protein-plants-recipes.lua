--[[
--> Amino Acid Extraction
]]--
RECIPE {
    type = "recipe",
    name = "extract-glycine-with-sulfuric-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "protein", amount = 15}, 
        {type = "fluid", name = "sulfuric-acid", amount = 40}
    },
    results = {
        {type = "item", name = "glycine", amount = 3}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-proteins",
    order = "aaa"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "extract-glycine-with-citric-acid",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "protein", amount = 15}, 
        {type = "fluid", name = "citric-acid", amount = 20}
    },
    results = {
        {type = "item", name = "glycine", amount = 3}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/glycine.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-proteins",
    order = "aba"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "extract-serine",
    category = "chemistry",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "protein", amount = 15}, 
        {type = "fluid", name = "citric-acid", amount = 20}
    },
    results = {
        {type = "item", name = "serine", amount = 1}
    },
    icons = {
        {icon = "__pyfusionenergy__/graphics/icons/serine.png"},
        {icon = "__pyveganism__/graphics/icons/vegan-small.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-proteins",
    order = "aca"
}:add_unlock("protein-plants")

--[[
--> Fermentation
]]--
RECIPE {
    type = "recipe",
    name = "serine-fermentation",
    category = "bio-reactor",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "glycine", amount = 3}, 
        {type = "item", name = "protein", amount = 5},
        {type = "fluid", name = "clean-water", amount = 180},
        {type = "fluid", name = "e-coli", amount = 20}, 
        {type = "fluid", name = "carbon-dioxide", amount = 200}
    },
    results = {
        {type = "item", name = "serine", amount = 4}, 
        {type = "fluid", name = "waste-water", amount = 200}
    },
    icons = {
        {icon = "__pyfusionenergy__/graphics/icons/serine.png"},
        {icon = "__pyveganism__/graphics/icons/vegan-small.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-proteins",
    order = "baa"
}:add_unlock("protein-plants")
