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
        {type = "fluid", name = "activated-sludge", amount = 20},
        {type = "item", name = "rake", amount = 1}, 
    },
    results = {
        {type = "fluid", name = "clean-water", amount = 500}, 
        {type = "fluid", name = "sewage-sludge", amount = 20},
        {type = "item", name = "clogged-rake", amount = 1}, 
        {type = "item", name = "sand", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abaa"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "waste-water-purification",
    category = "fluid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 500},
        {type = "fluid", name = "activated-sludge", amount = 20},
        {type = "item", name = "rake", amount = 1}, 
    },
    results = {
        {type = "fluid", name = "clean-water", amount = 450}, 
        {type = "fluid", name = "sewage-sludge", amount = 70},
        {type = "item", name = "clogged-rake", amount = 1}, 
        {type = "item", name = "sand", amount = 2}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abaa"
}:add_unlock("growth-media-3")

RECIPE {
    type = "recipe",
    name = "dirty-water-purification",
    category = "fluid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "dirty-water", amount = 500},
        {type = "fluid", name = "activated-sludge", amount = 20},
        {type = "item", name = "rake", amount = 1}, 
    },
    results = {
        {type = "fluid", name = "clean-water", amount = 500}, 
        {type = "fluid", name = "sewage-sludge", amount = 20},
        {type = "item", name = "clogged-rake", amount = 1}, 
        {type = "item", name = "sand", amount = 25}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abaa"
}:add_unlock("growth-media-3")

RECIPE {
    type = "recipe",
    name = "clean-water-purification-from-water",
    category = "fluid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
        {type = "fluid", name = "activated-sludge", amount = 40},
        {type = "item", name = "rake", amount = 1}, 
    },
    results = {
        {type = "fluid", name = "clean-water", amount = 480}, 
        {type = "fluid", name = "sewage-sludge", amount = 60},
        {type = "item", name = "clogged-rake", amount = 1}, 
        {type = "item", name = "sand", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/2.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abab"
}:add_unlock("growth-media-4")

RECIPE {
    type = "recipe",
    name = "clean-rake",
    category = "washer",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 100},
        {type = "item", name = "clogged-rake", amount = 1}
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 100}, 
        {type = "item", name = "rake", amount = 1}, 
        {type = "item", name = "stone", amount = 5, probability = 0.05}, 
        {type = "item", name = "log", amount = 1, probability = 0.02}, 
        {type = "item", name = "plant-residues", amount = 10, probability = 0.1}, 
        {type = "item", name = "plastic-bar", amount = 1, probability = 0.05}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/clogged-rake.png"},
        {icon = "__pyveganism__/graphics/icons/washing.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abba"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "rake",
    category = "crafting",
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "iron-stick", amount = 200},
        {type = "item", name = "steel-plate", amount = 5}
    },
    results = {
        {type = "item", name = "rake", amount = 1},
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/rake.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "abb"
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
    main_product = "semipermeable-membrane",
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
        main_product = "semipermeable-membrane",
        subgroup = "py-veganism-media",
        order = "acbb"
    }:add_unlock("growth-media-3")
end

--ultra pure water recipes
local category_edi = "chemistry"
if mods["pyrawores"] then
    category_edi = "electrolyzer"
end

RECIPE {
    type = "recipe",
    name = "electrodeionisation",
    category = category_edi,
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "deionized-water", amount = 500}
    },
    results = {
        {type = "fluid", name = "ultra-pure-water", amount = 480},
        {type = "fluid", name = "water-saline", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/blitz.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "ada"
}:add_unlock("growth-media-4")

--[[
--> Growth Media
]]--
RECIPE {
    type = "recipe",
    name = "sugar-growth-medium-from-sugar",
    category = "hpf",
    enabled = true,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 50},
        {type = "item", name = "sugar", amount = 10}
    },
    results = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/sugar.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "caa"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "sugar-growth-medium-from-molasses",
    category = "hpf",
    enabled = true,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "clean-water", amount = 50},
        {type = "item", name = "molasses", amount = 20}
    },
    results = {
        {type = "fluid", name = "sugar-growth-medium", amount = 50}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/water-drop.png"},
        {icon = "__pyveganism__/graphics/icons/molasses.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "cab"
}:add_unlock("growth-media-2")

RECIPE {
    type = "recipe",
    name = "pseudodaemonas-growth-medium",
    category = "mixer",
    enabled = true,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "deionized-water", amount = 100},
        {type = "fluid", name = "plant-oil", amount = 50},
        {type = "item", name = "sugar", amount = 5}, 
        {type = "item", name = "protein", amount = 5}, 
        {type = "item", name = "iron-ore", amount = 2}
    },
    results = {
        {type = "fluid", name = "pseudodaemonas-growth-medium", amount = 150}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/growth-medium-drop.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-media",
    order = "cab"
}:add_unlock("growth-media-3"):add_unlock("rocket-fuel")
