RECIPE {
    type = "recipe",
    name = "grow-sugar-beet",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 10},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "sugar-beet", amount = 10},
        {type = "item", name = "plant-residues", amount = 2}
    },
    main_product = "sugar-beet",
    icons = {{icon = "__pyveganism__/graphics/icons/grow-sugar-beet.png"}},
    icon_size = 64,
    subgroup = "py-veganism-sugar-beet",
    order = "aba"
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "wash-sugar-beet",
    category = "washer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "sugar-beet", amount = 10},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "sugar-beet-washed", amount = 10},
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/sugar-beet.png"},
        {icon = "__pyveganism__/graphics/icons/washing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sugar-beet",
    order = "aaa"
}:add_unlock("sugar-plants")

RECIPE {
    type = "recipe",
    name = "refine-sugar-beet",
    category = py_veganism_globals.sugar_refine_category,
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sugar-beet-washed", amount = 20},
        {type = "item", name = "lime", amount = 6},
        {type = "fluid", name = "vacuum", amount = 20},
        {type = "fluid", name = "steam", amount = 50}
    },
    results = {
        {type = "item", name = "sugar", amount = 30},
        {type = "item", name = "limestone", amount = 6},
        {type = "item", name = "plant-residues-dry", amount = 2},
        {type = "item", name = "molasses", amount = 5},
        {type = "fluid", name = "dirty-water", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/sugar-beet-washed.png"},
        {icon = "__pyveganism__/graphics/icons/refine.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sugar-beet",
    order = "aab"
}:add_unlock("sugar-plants")
