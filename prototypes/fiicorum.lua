FLUID {
    type = "fluid",
    name = "fiicorum",
    icon = "__pyveganism__/graphics/icons/fiicorum.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.422, g = 0.635, b = 0.863},
    flow_color = {r = 0.422, g = 0.635, b = 0.863},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-mo"
}

FLUID {
    type = "fluid",
    name = "nitrous-medium",
    icon = "__pyveganism__/graphics/icons/nitrous-medium.png",
    icon_size = 64,
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0, g = 0.635, b = 0.863},
    flow_color = {r = 0, g = 0.635, b = 0.863},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-veganism-mo"
}

RECIPE {
    type = "recipe",
    name = "fiicorum-enrichment-culture-1",
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
        { icon = "__pyveganism__/graphics/icons/fiicorum.png" },
        { icon = "__pyveganism__/graphics/icons/enrichment-culture.png" }
    },
    icon_size = 64,
    subgroup = "py-veganism-fiicorum",
    order = "aaa"
}

RECIPE {
    type = "recipe",
    name = "fiicorum-pure-culture-1",
    category = "bio-reactor",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 50},
        {type = "fluid", name = "steam", amount = 50},
        {type = "fluid", name = "fiicorum", amount = 250}
    },
    results = {
        {type = "fluid", name = "fiicorum", amount = 300}
    },
    icons = {
        { icon = "__pyveganism__/graphics/icons/fiicorum.png" },
        { icon = "__pyveganism__/graphics/icons/pure-culture.png" }
    },
    icon_size = 64,
    subgroup = "py-veganism-fiicorum",
    order = "aba"
}

RECIPE {
    type = "recipe",
    name = "fiicorum-hyperthermic-stress-1",
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
        { icon = "__pyveganism__/graphics/icons/fiicorum.png" },
        { icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png" }
    },
    icon_size = 64,
    subgroup = "py-veganism-fiicorum",
    order = "aca"
}

if mods["pypetroleumhandling"] then 
    RECIPE {
        type = "recipe",
        name = "fiicorum-enrichment-culture-2",
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
            { icon = "__pyveganism__/graphics/icons/fiicorum.png" },
            { icon = "__pyveganism__/graphics/icons/enrichment-culture.png" }
        },
        icon_size = 64,
        subgroup = "py-veganism-fiicorum",
        order = "aab"
    }
    
    RECIPE {
        type = "recipe",
        name = "fiicorum-pure-culture-2",
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
            { icon = "__pyveganism__/graphics/icons/fiicorum.png" },
            { icon = "__pyveganism__/graphics/icons/pure-culture.png" }
        },
        icon_size = 64,
        subgroup = "py-veganism-fiicorum",
        order = "abb"
    }
    
    RECIPE {
        type = "recipe",
        name = "fiicorum-hyperthermic-stress-2",
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
            { icon = "__pyveganism__/graphics/icons/fiicorum.png" },
            { icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png" }
        },
        icon_size = 64,
        subgroup = "py-veganism-fiicorum",
        order = "acb"
    }
end