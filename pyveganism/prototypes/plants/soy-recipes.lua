--[[
--> Growing
]]--
RECIPE {
    type = "recipe",
    name = "grow-soy",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "soy-pods", amount = 10},
        {type = "item", name = "plant-residues", amount = 2}
    },
    main_product = "soy-pods",
    icons = {{icon = "__pyveganism__/graphics/icons/grow-soy.png"}},
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aca"
}:add_unlock("oil-plants"):add_unlock("protein-plants")

--[[
--> Processing
]]--
RECIPE {
    type = "recipe",
    name = "wash-soy",
    category = "washer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "soy-pods", amount = 20},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "soy-pods-washed", amount = 20},
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/soy-pods.png"},
        {icon = "__pyveganism__/graphics/icons/washing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aaa"
}:add_unlock("oil-plants"):add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "core-soy-pods",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "soy-pods-washed", amount = 10}
    },
    results = {
        {type = "item", name = "edamame", amount = 30},
        {type = "item", name = "plant-residues", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/soy-pods-washed.png"}, 
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aab"
}:add_unlock("oil-plants"):add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "ripen-edamame",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "edamame", amount = 300}
    },
    results = {
        {type = "item", name = "soy-beans", amount = 300}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/soy-beans.png"},
        {icon = "__pyveganism__/graphics/icons/time.png"},
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aac"
}:add_unlock("oil-plants"):add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "press-soy-beans",
    category = py_veganism_globals.plant_oil_pressing_category,
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "soy-beans", amount = 15}
    },
    results = {
        {type = "fluid", name = "plant-oil", amount = 35},
        {type = "item", name = "solid-fat", amount = 1},
        {type = "item", name = "soy-meal", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/canola.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aad"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "declassify-canola-meal",
    category = "crafting",
    enabled = false,
    energy_required = 0.05,
    ingredients = {
        {type = "item", name = "soy-meal", amount = 10}
    },
    results = {
        {type = "item", name = "plant-residues-dry", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/soy-meal.png"}, 
        {icon = "__pyveganism__/graphics/icons/arrow-down.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aae"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "soy-milk",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soy-beans", amount = 5}, 
        {type = "fluid", name = "clean-water", amount = 100}
    },
    results = {
        {type = "fluid", name = "soy-milk", amount = 100}, 
        {type = "item", name = "soy-meal", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/soy-milk.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aaf"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "tofu",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "soy-milk", amount = 80}, 
        {type = "fluid", name = "citric-acid", amount = 15}
    },
    results = {
        {type = "item", name = "tofu-block", amount = 5}, 
        {type = "item", name = "yuba", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/tofu-block.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aag"
}:add_unlock("protein-plants")

RECIPE {
    type = "recipe",
    name = "tempeh",
    category = "bio-reactor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "soy-beans", amount = 20}, 
        {type = "fluid", name = "proxae", amount = 50}
    },
    results = {
        {type = "item", name = "tempeh", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/tempeh.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aah"
}:add_unlock("protein-plants")

--[[
--> Extraction Recipes  
]]--
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
