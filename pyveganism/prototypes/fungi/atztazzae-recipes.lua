RECIPE {
    type = "recipe",
    name = "separate-atztazzae-spore",
    category = "carbonfilter",
    enabled = false,
    energy_required = 5,
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
    energy_required = 10,
    ingredients = {
        {type = "item", name = "atztazzae-spore", amount = 1},
        {type = "fluid", name = "clean-water", amount = 100}, 
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "plant-residues-dry", amount = 10}, 
        {type = "item", name = "solid-fat", amount = 5}, 
        {type = "item", name = "tailings-dust", amount = 5}
    },
    results = {
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.025}, 
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/atztazzae-mushroom.png"}, 
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aaba"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "cultivate-atztazzae-mycel-deionized-water",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "atztazzae-spore", amount = 1},
        {type = "fluid", name = "deionized-water", amount = 100}, 
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "plant-residues-dry", amount = 10}, 
        {type = "item", name = "solid-fat", amount = 5}, 
        {type = "item", name = "tailings-dust", amount = 5}
    },
    results = {
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.05}, 
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/atztazzae-mushroom.png"}, 
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"},
        {icon = "__pyveganism__/graphics/icons/3.png"}
    },    
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aabb"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "cultivate-atztazzae-mycel-ultra-pure-water",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "atztazzae-spore", amount = 1},
        {type = "fluid", name = "ultra-pure-water", amount = 100}, 
        {type = "item", name = "soil", amount = 20},
        {type = "item", name = "plant-residues-dry", amount = 10}, 
        {type = "item", name = "solid-fat", amount = 5}, 
        {type = "item", name = "tailings-dust", amount = 5}
    },
    results = {
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.1}, 
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/atztazzae-mushroom.png"}, 
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"},
        {icon = "__pyveganism__/graphics/icons/4.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aabc"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "grow-atztazzae",
    category = "fawogae",
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "item", name = "atztazzae-mycel", amount = 1},
        {type = "fluid", name = "pressured-water", amount = 20000}
    },
    results = {
        {type = "item", name = "atztazzae-mushroom", amount = 100}, 
        {type = "item", name = "atztazzae-mycel", amount = 1, probability = 0.99},
    },
    main_product = "atztazzae-mushroom",
    icons = {
        {icon = "__pyveganism__/graphics/icons/atztazzae-mushroom.png"},
        {icon = "__pyveganism__/graphics/icons/grow.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-atztazzae",
    order = "aac"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "atztazzae-to-vanabins",
    category = "quenching-tower",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "atztazzae-mushroom", amount = 10},
        {type = "fluid", name = "water", amount = 200}, 
        {type = "item", name = "sand", amount = 2}
    },
    results = {
        {type = "fluid", name = "vanabins", amount = 100}, 
        {type = "fluid", name = "waste-water", amount = 100}
    },
    icons = {
        {icon = "__pyfusionenergy__/graphics/icons/vanabins.png"},
        {icon = "__pyveganism__/graphics/icons/vegan-small.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-atztazzae",
    order = "aad"
}:add_unlock("vanadium-processing")
