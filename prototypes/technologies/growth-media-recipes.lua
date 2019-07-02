--sterile water recipes
RECIPE {
    type = "recipe",
    name = "sterile-water-boiling",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 150}
    },
    results = {
        {type = "fluid", name = "sterile-water", amount = 150}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"},
        {icon = "__pyveganism__/graphics/icons/1.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aaa"
}:add_unlock("growth-media-1")

if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "sterile-water-chlorine",
        category = "chemistry",
        enabled = false,
        energy_required = 0.5,
        ingredients = {
            {type = "fluid", name = "water", amount = 600},
            {type = "fluid", name = "chlorine", amount = 10}
        },
        results = {
            {type = "fluid", name = "sterile-water", amount = 600}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/water-drop.png"},
            {icon = "__pyveganism__/graphics/icons/toxic-stress.png"},
            {icon = "__pyveganism__/graphics/icons/1.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-media",
        order = "aac"
    }:add_unlock("growth-media-1")
end

RECIPE {
    type = "recipe",
    name = "sterile-water-chlorate",
    category = "chemistry",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "fluid", name = "water", amount = 1600},
        {type = "item", name = "sodium-chlorate", amount = 1}
    },
    results = {
        {type = "fluid", name = "sterile-water", amount = 1600}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/toxic-stress.png"},
        {icon = "__pyveganism__/graphics/icons/1.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aab"
}:add_unlock("growth-media-1")

--clean water recipes
RECIPE {
    type = "recipe",
    name = "clean-water-purification",
    category = "fluid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "sterile-water", amount = 500},
        {type = "item", name = "rake", amount = 1}
    },
    results = {
        {type = "fluid", name = "clean-water", amount = 500}, 
        {type = "item", name = "clogged-rake", amount = 1}, 
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aba"
}:add_unlock("growth-media-2")

--deionized water recipes
RECIPE {
    type = "recipe",
    name = "reverse-osmosis",
    category = "fluid-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 500},
        {type = "item", name = "semipermeable-membrane", amount = 1}
    },
    results = {
        {type = "fluid", name = "deionized-water", amount = 450},
        {type = "fluid", name = "water-saline", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/pressing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "aca"
}:add_unlock("growth-media-3")

RECIPE {
    type = "recipe",
    name = "semipermeable-membrane",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "syngas", amount = 100},
        {type = "item", name = "plastic-bar", amount = 3}
    },
    results = {
        {type = "item", name = "semipermeable-membrane", amount = 2}
    },
    icon = "__pyveganism__/graphics/icons/semipermeable-membrane.png",
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "acba"
}:add_unlock("growth-media-3")

if mods["pyhightech"] then
    RECIPE {
        type = "recipe",
        name = "semipermeable-membrane-nylon",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "nylon", amount = 3}
        },
        results = {
            {type = "item", name = "semipermeable-membrane", amount = 20}
        },
        icon = "__pyveganism__/graphics/icons/semipermeable-membrane.png",
        icon_size = 64,
        subgroup = "py-veganism-media",
        order = "acbb"
    }:add_unlock("growth-media-3")
end

--ultra pure water recipes
