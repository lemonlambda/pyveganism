FLUID {
    type = "fluid",
    name = "solfaen",
    icon = "__pyveganism__/graphics/icons/solfaen.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.958, g = 0.166, b = 0.054},
    flow_color = {r = 0.958, g = 0.166, b = 0.054},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-mo"
}

ITEM {
    type = "item",
    name = "solfaen-dry",
    enabled = false,
    fuel_value = "250kJ",
    fuel_category = "chemical",
    icon = "__pyveganism__/graphics/icons/solfaen-dry.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-solfaen",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "solfaen-washed",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/solfaen-washed.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-solfaen",
    order = "aab",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "agarose-gel",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/agarose-gel.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-solfaen",
    order = "aac",
    stack_size = 200
}

--first gen
RECIPE {
    type = "recipe",
    name = "grow-solfaen-1",
    category = py_veganism_globals["algae_growing_category"],
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "water", amount = 300},
    },
    results = {
        {type = "fluid", name = "solfaen", amount = 30}
    },
    main_product = "solfaen",
    icon = "__pyveganism__/graphics/icons/solfaen.png",
    icon_size = 64,
    subgroup = "py-veganism-solfaen",
    order = "aba"
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "grow-solfaen-2",
    category = py_veganism_globals["algae_growing_category"],
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water", amount = 300},
        {type = "fluid", name = "carbon-dioxide", amount = 100}
    },
    results = {
        {type = "fluid", name = "solfaen", amount = 60}
    },
    main_product = "solfaen",
    icon = "__pyveganism__/graphics/icons/solfaen.png",
    icon_size = 64,
    subgroup = "py-veganism-solfaen",
    order = "abb"
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "agarose-gel-1",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "solfaen", amount = 100},
    },
    results = {
        {type = "item", name = "agarose-gel", amount = 3}
    },
    main_product = "agarose-gel",
    icon = "__pyveganism__/graphics/icons/agarose-gel.png",
    icon_size = 64,
    subgroup = "py-veganism-solfaen",
    order = "aca"
}:add_unlock("coal-processing-1")

--second gen
RECIPE {
    type = "recipe",
    name = "dry-solfaen",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "solfaen", amount = 100},
    },
    results = {
        {type = "item", name = "solfaen-dry", amount = 10}
    },
    main_product = "solfaen-dry",
    icon = "__pyveganism__/graphics/icons/solfaen-dry.png",
    icon_size = 64,
    subgroup = "py-veganism-solfaen",
    order = "ada"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "wash-solfaen",
    category = "washer",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "solfaen-dry", amount = 5},
        {type = "fluid", name = "water", amount = 200}
    },
    results = {
        {type = "item", name = "solfaen-washed", amount = 5},
        {type = "fluid", name = "dirty-water", amount = 100}
    },
    main_product = "solfaen-washed",
    icons = {
        {icon = "__pyveganism__/graphics/icons/solfaen-washed.png"},
        {icon = "__pyveganism__/graphics/icons/washing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-solfaen",
    order = "adb"
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "agarose-gel-2",
    category = "crafting",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "solfaen-washed", amount = 3},
    },
    results = {
        {type = "item", name = "agarose-gel", amount = 3}
    },
    main_product = "agarose-gel",
    icon = "__pyveganism__/graphics/icons/agarose-gel.png",
    icon_size = 64,
    subgroup = "py-veganism-solfaen",
    order = "adc"
}:add_unlock("coal-processing-2")

--usage
RECIPE {
    type = "recipe",
    name = "bio-sample01-agarose",
    category = "crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ralesia-seeds", amount = 18},
        {type = "item", name = "agarose-gel", amount = 4}
    },
    results = {
        {type = "item", name = "bio-sample01", amount = 4}
    },
    main_product = "bio-sample01",
    icon = "__pycoalprocessing__/graphics/icons/bio-sample01.png",
    icon_size = 32,
    subgroup = "py-veganism-solfaen",
    order = "afa"
}:add_unlock("coal-processing-1")