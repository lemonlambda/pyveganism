RECIPE {
    type = "recipe",
    name = "grow-sugar-cane",
    category = "nursery",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "sugar-cane", amount = 15},
        {type = "item", name = "plant-residues", amount = 2}
    },
    main_product = "sugar-cane",
    icons = {
        {icon = "__pyveganism__/graphics/icons/grow-sugar-cane.png"},
        {icon = "__pyveganism__/graphics/icons/grow.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sugar-cane",
    order = "aba"
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "refine-sugar-cane",
    category = py_veganism_globals.sugar_refine_category,
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sugar-cane", amount = 20},
        {type = "item", name = "lime", amount = 6},
        {type = "fluid", name = "vacuum", amount = 20},
        {type = "fluid", name = "steam", amount = 50}
    },
    results = {
        {type = "item", name = "sugar", amount = 20},
        {type = "item", name = "limestone", amount = 6},
        {type = "item", name = "plant-residues-dry", amount = 2},
        {type = "item", name = "molasses", amount = 15},
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/sugar-cane.png"},
        {icon = "__pyveganism__/graphics/icons/refine.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sugar-cane",
    order = "aaa"
}:add_unlock("sugar-plants")
