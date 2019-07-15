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
    main_product = "soy",
    icons = {{icon = "__pyveganism__/graphics/icons/grow-soy.png"}},
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aba"
}:add_unlock("oil-plants")

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
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "core-soy-pods",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "soy-pods-washed", amount = 20}
    },
    results = {
        {type = "item", name = "edamame", amount = 20},
        {type = "item", name = "plant-residues", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/soy-pods-washed.png"}, 
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aab"
}:add_unlock("oil-plants")

RECIPE {
    type = "recipe",
    name = "ripen-edamame",
    category = "crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "edamame", amount = 50}
    },
    results = {
        {type = "item", name = "soy-beans", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/edamame.png"},
    },
    icon_size = 64,
    subgroup = "py-veganism-soy",
    order = "aac"
}:add_unlock("oil-plants")
