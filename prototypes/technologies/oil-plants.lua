TECHNOLOGY {
    type = "technology",
    name = "oil-plants",
    icon = "__pyveganism__/graphics/technology/oil-plants.png",
    icon_size = 128,
    order = "c-a",
    upgrade = false,
    prerequisites = {"coal-processing-2"},
    effects = {},
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

RECIPE {
    type = "recipe",
    name = "vegetable-lard",
    category = "hpf",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "solid-fat", amount = 6},
        {type = "fluid", name = "plant-oil", amount = 80}
    },
    results = {
        {type = "item", name = "mukmoux-fat", amount = 4}
    },
    icons = {
        {icon = "__pycoalprocessing__/graphics/icons/mukmoux-fat.png"},
        {icon = "__pyveganism__/graphics/icons/vegan-small.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-oil-plants",
    order = "aaa"
}:add_unlock("oil-plants")

if mods["pyrawores"] then
    RECIPE {
        type = "recipe",
        name = "fat-hardening",
        category = "fluid-separator",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "plant-oil", amount = 200}, 
            {type = "fluid", name = "hydrogen", amount = 100}, 
            {type = "item", name = "nickel-plate", amount = 1}
        },
        results = {
            {type = "item", name = "solid-fat", amount = 20}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/solid-fat.png"}, 
            {icon = "__pyveganism__/graphics/icons/steam-refining.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-oil-plants",
        order = "aab"
    }:add_unlock("oil-plants")
else 
    RECIPE {
        type = "recipe",
        name = "fat-hardening",
        category = "fluid-separator",
        enabled = false,
        energy_required = 2,
        ingredients = {
            {type = "fluid", name = "plant-oil", amount = 200}, 
            {type = "fluid", name = "steam", amount = 100}, 
            {type = "item", name = "iron-plate", amount = 1}
        },
        results = {
            {type = "item", name = "solid-fat", amount = 20}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/solid-fat.png"}, 
            {icon = "__pyveganism__/graphics/icons/steam-refining.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-oil-plants",
        order = "aab"
    }:add_unlock("oil-plants")
end

-- TODO: Saponisierung und eine Lauge dafür
