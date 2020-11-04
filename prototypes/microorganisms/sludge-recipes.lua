--<< Sludge >>
RECIPE {
    type = "recipe",
    name = "enrichment-culture-activated-sludge",
    category = "bio-reactor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "sterile-water", amount = 100},
        {type = "item", name = "stool-sample", amount = 1},
        {type = "item", name = "soil", amount = 20}
    },
    results = {
        {type = "fluid", name = "activated-sludge", amount = 10}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/activated-sludge.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abca"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "pure-culture-activated-sludge",
    category = "bio-reactor",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "activated-sludge", amount = 100, catalyst_amount = 100}
    },
    results = {
        {type = "fluid", name = "activated-sludge", amount = 180, catalyst_amount = 100},
        {type = "fluid", name = "sewage-sludge", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/activated-sludge.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abcb"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "dry-sewage-sludge",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sewage-sludge", amount = 10}
    },
    results = {
        {type = "item", name = "sewage-sludge-dry", amount = 7}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/sewage-sludge.png"},
        {icon = "__pyveganism__/graphics/icons/hyperthermic-stress.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abcc"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "marsh-gas-fermentation",
    category = "bio-reactor",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "activated-sludge", amount = 40},
        {type = "item", name = "plant-residues", amount = 5}
    },
    results = {
        {type = "fluid", name = "marsh-gas", amount = 200}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/marsh-gas.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abcd"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "marsh-gas-dry-fermentation",
    category = "bio-reactor",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "plant-residues-dry", amount = 4},
        {type = "fluid", name = "activated-sludge", amount = 40},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "fluid", name = "marsh-gas", amount = 200}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/marsh-gas.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abce"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "marsh-gas",
    category = "bio-reactor",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "sewage-sludge", amount = 10}
    },
    results = {
        {type = "fluid", name = "marsh-gas", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/marsh-gas.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abcf"
}:add_unlock("growth-media-2")

--<< Usage Marsh Gas >>
RECIPE {
    type = "recipe",
    name = "marsh-gas-to-syngas",
    category = "gasifier",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "marsh-gas", amount = 80}
    },
    results = {
        {type = "fluid", name = "syngas", amount = 100}
    },
    icons = {
        {icon = "__pycoalprocessinggraphics__/graphics/icons/syngas.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-sludge",
    order = "abda"
}:add_unlock("growth-media-2")

if mods["pyrawores"] then
    RECIPE("marsh-gas-to-syngas"):add_ingredient({type = "fluid", name = "hydrogen", amount = 40})
end

RECIPE {
    type = "recipe",
    name = "marsh-gas-combustion-with-sludge",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "marsh-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "sewage-sludge-dry", amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 100, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-mixture1.png",
    icon_size = 32,
    main_product = "combustion-mixture1",
    subgroup = "py-veganism-combustion",
    order = "aba"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "marsh-gas-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "marsh-gas", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 100, temperature = 600},
        {type = "fluid", name = "steam", amount = 500, temperature = 60}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-mixture1.png",
    icon_size = 32,
    main_product = "combustion-mixture1",
    subgroup = "py-veganism-combustion",
    order = "abb"
}:add_unlock("growth-media-2")

if mods["pyhightech"] then
    RECIPE {
        type = "recipe",
        name = "marsh-gas-to-methane",
        category = "gasifier",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "fluid", name = "marsh-gas", amount = 100}
        },
        results = {
            {type = "fluid", name = "methane", amount = 100}
        },
        icons = {
            {icon = "__pyhightechgraphics__/graphics/icons/methane.png"}
        },
        icon_size = 32,
        subgroup = "py-veganism-sludge",
        order = "abdd"
    }:add_unlock("growth-media-2")
end

RECIPE {
    type = "recipe",
    name = "marsh-gas-to-sulfur",
    category = "desulfurization",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "marsh-gas", amount = 200}
    },
    results = {
        {type = "item", name = "sulfur", amount = 5}
    },
    icons = {
        {icon = "__base__/graphics/icons/sulfur.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-sludge",
    order = "abde"
}:add_unlock("growth-media-2")
