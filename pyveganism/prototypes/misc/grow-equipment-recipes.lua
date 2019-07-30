--[[
--> Lamp Recipes
]]--
if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "sodium-vapor-lamp",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {type = "item", name = "glass", amount = 2},
            {type = "item", name = "sodium-hydroxide", amount = 1},
            {type = "item", name = "copper-cable", amount = 3},
            {type = "fluid", name = "vacuum", amount = 20}
        },
        results = {
            {type = "item", name = "small-lamp", amount = 4}
        },
        icon = "__base__/graphics/icons/small-lamp.png",
        icon_size = 32,
        subgroup = "py-veganism-grow-equipment",
        order = "aaa"
    }:add_unlock("optics")
end

--[[
--> Fertilizer Recipes
]]--
local size = py_veganism_globals["fertilizer_icon"].size
RECIPE {
    type = "recipe",
    name = "pyveganism-fertilizer-ash-1",
    category = "mixer",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "ash", amount = 10},
        {type = "item", name = "urea", amount = 10}, 
        {type = "item", name = "humus", amount = 1},
        {type = "item", name = "limestone", amount = 1}
    },
    results = {
        {type = "item", name = "py-fertilizer", amount = 1}
    },
    icons = {
        {icon = py_veganism_globals["fertilizer_icon"].icon},
        {icon = py_veganism_globals:get_vegan_icon(size)}
    },
    icon_size = size,
    subgroup = "py-veganism-grow-equipment",
    order = "aba"
}:add_unlock("cultivation-expertise-1")

RECIPE {
    type = "recipe",
    name = "pyveganism-fertilizer-ash-2",
    category = "mixer",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "ash", amount = 10},
        {type = "item", name = "urea", amount = 6}, 
        {type = "item", name = "morgenroete-endospores", amount = 1},
        {type = "item", name = "humus", amount = 2},
        {type = "item", name = "limestone", amount = 1}
    },
    results = {
        {type = "item", name = "py-fertilizer", amount = 2}
    },
    icons = {
        {icon = py_veganism_globals["fertilizer_icon"].icon},
        {icon = py_veganism_globals:get_vegan_icon(size)}
    },
    icon_size = size,
    subgroup = "py-veganism-grow-equipment",
    order = "aba"
}:add_unlock("cultivation-expertise-2")

RECIPE {
    type = "recipe",
    name = "pyveganism-fertilizer-tailings-1",
    category = "mixer",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "item", name = "urea", amount = 9}, 
        {type = "item", name = "morgenroete-endospores", amount = 1},
        {type = "item", name = "humus", amount = 3},
        {type = "item", name = "limestone", amount = 1}
    },
    results = {
        {type = "item", name = "py-fertilizer", amount = 3}
    },
    icons = {
        {icon = py_veganism_globals["fertilizer_icon"].icon},
        {icon = py_veganism_globals:get_vegan_icon(size)}
    },
    icon_size = size,
    subgroup = "py-veganism-grow-equipment",
    order = "aca"
}:add_unlock("cultivation-expertise-3")

RECIPE {
    type = "recipe",
    name = "pyveganism-fertilizer-tailings-dust-1",
    category = "mixer",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "tailings-dust", amount = 6},
        {type = "item", name = "urea", amount = 12}, 
        {type = "item", name = "morgenroete-endospores", amount = 1},
        {type = "item", name = "humus", amount = 4},
        {type = "item", name = "limestone", amount = 2}
    },
    results = {
        {type = "item", name = "py-fertilizer", amount = 4}
    },
    icons = {
        {icon = py_veganism_globals["fertilizer_icon"].icon},
        {icon = py_veganism_globals:get_vegan_icon(size)}
    },
    icon_size = size,
    subgroup = "py-veganism-grow-equipment",
    order = "ada"
}:add_unlock("cultivation-expertise-4")
