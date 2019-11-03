RECIPE {
    type = "recipe",
    name = "enrichment-culture-fiicorum-1",
    category = "bio-reactor",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 50},
        {type = "fluid", name = "steam", amount = 50},
        {type = "item", name = "stone", amount = 10}
    },
    results = {
        {type = "fluid", name = "fiicorum", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/fiicorum.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-fiicorum",
    order = "aaa",
    main_product = ""
}

RECIPE {
    type = "recipe",
    name = "pure-culture-fiicorum-1",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 50},
        {type = "fluid", name = "steam", amount = 50},
        {type = "fluid", name = "fiicorum", amount = 250, catalyst_amount = 250}
    },
    results = {
        {type = "fluid", name = "fiicorum", amount = 300, catalyst_amount = 250}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/fiicorum.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-fiicorum",
    order = "aba",
    main_product = ""
}

RECIPE {
    type = "recipe",
    name = "hyperthermic-stress-fiicorum-1",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "steam", amount = 150},
        {type = "fluid", name = "fiicorum", amount = 300}
    },
    results = {
        {type = "fluid", name = "nitrous-medium", amount = 300}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/fiicorum.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-fiicorum",
    order = "aca",
    main_product = ""
}

if mods["pypetroleumhandling"] then
    RECIPE {
        type = "recipe",
        name = "enrichment-culture-fiicorum-2",
        category = "bio-reactor",
        enabled = true,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "hot-air", amount = 50},
            {type = "item", name = "stone", amount = 10}
        },
        results = {
            {type = "fluid", name = "fiicorum", amount = 50}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/fiicorum.png"},
            {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-fiicorum",
        order = "aab",
        main_product = ""
    }

    RECIPE {
        type = "recipe",
        name = "pure-culture-fiicorum-2",
        category = "bio-reactor",
        enabled = true,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "water", amount = 50},
            {type = "fluid", name = "hot-air", amount = 50},
            {type = "fluid", name = "fiicorum", amount = 250}
        },
        results = {
            {type = "fluid", name = "fiicorum", amount = 300}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/fiicorum.png"},
            {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-fiicorum",
        order = "abb",
        main_product = ""
    }

    RECIPE {
        type = "recipe",
        name = "hyperthermic-stress-fiicorum-2",
        category = "bio-reactor",
        enabled = true,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "hot-air", amount = 150},
            {type = "fluid", name = "fiicorum", amount = 300}
        },
        results = {
            {type = "fluid", name = "nitrous-medium", amount = 300}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/fiicorum.png"},
            {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-fiicorum",
        order = "acb",
        main_product = ""
    }
end
