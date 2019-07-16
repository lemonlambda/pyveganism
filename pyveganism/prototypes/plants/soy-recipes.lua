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
    order = "aba"
}:add_unlock("oil-plants"):add_unlock("protein-plants")

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
    category = py_veganism_globals["plant_oil_pressing_category"],
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
    subgroup = "py-veganism-canola",
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
        {icon = "__pyveganism__/graphics/icons/canola-meal.png"}, 
        {icon = "__pyveganism__/graphics/icons/arrow-down.png"}, 
    },
    icon_size = 64,
    subgroup = "py-veganism-canola",
    order = "aae"
}:add_unlock("oil-plants")
