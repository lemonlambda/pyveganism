RECIPE {
    type = "recipe",
    name = "separate-atztazzae-spore",
    category = "carbonfilter",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "organics", amount = 100},
        {type = "item", name = "lens", amount = 10}, 
        {type = "item", name = "agarose-gel", amount = 10}
    },
    results = {
        {type = "item", name = "atztazzae-spore", amount = 10}, 
    },
    icon = "__pyveganism__/graphics/icons/spores-petri-dish.png",
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aaa"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "cultivate-atztazzae-mycel-clean-water",
    category = "bio-reactor",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "atztazzae-spore", amount = 1},
        {type = "fluid", name = "clean-water", amount = 100}, 
        {type = "item", name = "agarose-gel", amount = 50}
    },
    results = {
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.025}, 
    },
    icon = "__pyveganism__/graphics/icons/atztazzae-mycel.png",
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aab"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "cultivate-atztazzae-mycel-deionized-water",
    category = "bio-reactor",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "atztazzae-spore", amount = 1},
        {type = "fluid", name = "deionized-water", amount = 100}, 
        {type = "item", name = "agarose-gel", amount = 50}
    },
    results = {
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.05}, 
    },
    icon = "__pyveganism__/graphics/icons/atztazzae-mycel.png",
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aab"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "cultivate-atztazzae-mycel-ultra-pure-water",
    category = "bio-reactor",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "atztazzae-spore", amount = 1},
        {type = "fluid", name = "ultra-pure-water", amount = 100}, 
        {type = "item", name = "agarose-gel", amount = 50}
    },
    results = {
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.1}, 
    },
    icon = "__pyveganism__/graphics/icons/atztazzae-mycel.png",
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aab"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "grow-atztazzae",
    category = "fawogae",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "atztazzae-mycel", amount = 1},
        {type = "fluid", name = "water", amount = 20000}
    },
    results = {
        {type = "item", name = "atztazzae-mushroom", amount = 10}, 
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.999}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/atztazzae-mushroom.png"},
        {icon = "__pyveganism__/graphics/icons/grow.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aac"
}:add_unlock("vanadium-processing")
