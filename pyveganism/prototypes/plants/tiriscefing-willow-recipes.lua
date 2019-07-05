RECIPE {
    type = "recipe",
    name = "grow-tiriscefing-willow-1",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 30},
        {type = "item", name = "limestone", amount = 20},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "item", name = "tiriscefing-willow", amount = 3}
    },
    main_product = "tiriscefing-willow",
    icon = "__pyveganism__/graphics/icons/grow-tiriscefing-willow.png",
    icon_size = 64,
    subgroup = "py-veganism-tiriscefing-willow",
    order = "aaa"
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "grow-tiriscefing-willow-2",
    category = "nursery",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "soil", amount = 30},
        {type = "item", name = "limestone", amount = 10},
        {type = "fluid", name = "water", amount = 500},
        {type = "fluid", name = "carbon-dioxide", amount = 500}
    },
    results = {
        {type = "item", name = "tiriscefing-willow", amount = 6}
    },
    main_product = "tiriscefing-willow",
    icons = {
        {icon = "__pyveganism__/graphics/icons/grow-tiriscefing-willow.png"},
        {icon = "__pyveganism__/graphics/icons/with-carbon-dioxide.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-tiriscefing-willow",
    order = "aab"
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "process-tiriscefing-willow",
    category = "wpu",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "tiriscefing-willow", amount = 1}
    },
    results = {
        {type = "item", name = "tiriscefing-willow-bork", amount = 3},
        {type = "item", name = "wood", amount = 3}
    },
    main_product = "tiriscefing-willow-bork",
    icons = {
        {icon = "__pyveganism__/graphics/icons/tiriscefing-willow.png"},
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-tiriscefing-willow",
    order = "aba"
}:add_unlock("coal-processing-1")

RECIPE {
    type = "recipe",
    name = "process-tiriscefing-willow-bork",
    category = "solid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "tiriscefing-willow-bork", amount = 1}
    },
    results = {
        {type = "item", name = "bonemeal", amount = 1},
        {type = "item", name = "organics", amount = 2}
    },
    main_product = "bonemeal",
    icons = {
        {icon = "__pycoalprocessing__/graphics/icons/bonemeal.png"},
        {icon = "__pyveganism__/graphics/icons/vegan-small.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-tiriscefing-willow",
    order = "aca"
}:add_unlock("separation")
