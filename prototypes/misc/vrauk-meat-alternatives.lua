for i=0,3 do
    local ingredients = py_veganism_globals.remove_improper_ingredients({
        {
            type = "item",
            name = "native-flora",
            amount = 10,
        },
        {
            type = "item",
            name = "petri-dish",
            amount = 10,
        },
        {
            type = "item",
            name = "moss-gen",
            amount = i % 2,
        },
        {
            type = "item",
            name = "saps",
            amount = 3 - i,
        },
        {
            type = "item",
            name = "vrauks-codex",
            amount = 1
        }
    })

    local sap_count = 1
    local moss_count = 0

    for k,v in pairs(ingredients) do
        if ingredients[k].name == "moss-gen" then
            moss_count = ingredients[k].amount
        end
        if ingredients[k].name == "saps" then
            sap_count = ingredients[k].amount
        end
    end
    
    RECIPE {
        type = "recipe",
        name = "synthetic-vrauk-meat-" .. (i + 1),
        category = "bio-printer",
        enabled = false,
        energy_required = 30 - 5 * math.log(sap_count),
        ingredients = ingredients,
        results = {
            {
                type = "item",
                name = "meat",
                amount = 2 + 2 * moss_count
            },
            {
                type = "item",
                name = "guts",
                amount = 2 + 2 * moss_count
            },
            {
                type = "item",
                name = "vrauks-codex",
                amount = 1,
                probability = 0.99,
            },
        },
        icons = {
            {icon = "__pyalienlifegraphics__/graphics/icons/vrauks.png", icon_size = 64},
            {icon = "__pyveganism__/graphics/icons/vegan.png", icon_size = 64},
            {icon = "__pyalienlifegraphics__/graphics/icons/" .. (i + 1) .. ".png", icon_size = 64, scale = .25, shift = {-8, 8}},
        },
        subgroup = "py-veganism-vrauk",
        allow_speed = true,
        allow_productivity = true,
        allow_efficiency = true,
        allowed_module_categories = {"vrauks"},
        order = "aaa",
    }:add_unlock("vrauks")
end

py_veganism_globals.non_viable_vrauk_mass_icon = {
      {icon = "__pyveganism__/graphics/icons/burlap-sack.png", icon_size = 64},
      {icon = "__pyveganism__/graphics/icons/vrauks-gray.png", icon_size = 64, scale = 0.25, shift = {0, 3}},
  }

ITEM {
    type = "item",
    name = "non-viable-vrauk-mass",
    icons = py_veganism_globals.non_viable_vrauk_mass_icon,
    subgroup = "py-veganism-vrauk",
    enabled = false,
    stack_size = 200,
}

for i=0,5 do
    local ingredients = py_veganism_globals.remove_improper_ingredients({
        {
            type = "item",
            name = "native-flora",
            amount = 10,
        },
        {
            type = "item",
            name = "petri-dish",
            amount = 10,
        },
        {
            type = "item",
            name = "moss-gen",
            amount = i % 3,
        },
        {
            type = "item",
            name = "saps",
            amount = 5 - i,
        },
        {
            type = "item",
            name = "earth-generic-sample",
            amount = 2,
        },
        {
            type = "item",
            name = "vrauks-codex",
            amount = 1
        },
        {
            type = "item",
            name = "sack",
            amount = 1
        }
    })

    local sap_count = 1
    local moss_count = 0

    for k,v in pairs(ingredients) do
        if ingredients[k].name == "moss-gen" then
            moss_count = ingredients[k].amount
        end
        if ingredients[k].name == "saps" then
            sap_count = ingredients[k].amount
        end
    end
    
    local icons = table.deepcopy(py_veganism_globals.non_viable_vrauk_mass_icon)
    table.insert(icons,
        {icon = "__pyalienlifegraphics__/graphics/icons/" .. (i + 1) .. ".png", icon_size = 64, scale = .25, shift = {-8, 8}}
    )
    
    RECIPE {
        type = "recipe",
        name = "synthetic-non-viable-vrauk-mass-" .. (i + 1),
        category = "bio-printer",
        enabled = false,
        energy_required = 200 - 50 * math.log(sap_count),
        ingredients = ingredients,
        results = {
            {
                type = "item",
                name = "non-viable-vrauk-mass",
                amount = 1 + 1 * moss_count,
            },
            {
                type = "item",
                name = "earth-generic-sample",
                amount = 2,
                probability = 0.85,
            },
            {
                type = "item",
                name = "vrauks-codex",
                amount = 1,
                probability = 0.99,
            },
        },
        icons = icons,
        subgroup = "py-veganism-vrauk",
        enabled = false,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        allowed_module_categories = {"vrauks"},
    }:add_unlock("vrauks")
end

for i=0,3 do
    local ingredients = py_veganism_globals.remove_improper_ingredients({
        {
            type = "item",
            name = "native-flora",
            amount = 10,
        },
        {
            type = "item",
            name = "petri-dish",
            amount = 10,
        },
        {
            type = "item",
            name = "vrauk-molt",
            amount = 1 + (i % 4)
        },
        {
            type = "item",
            name = "saps",
            amount = 5 - i,
        },
        {
            type = "item",
            name = "earth-generic-sample",
            amount = 2,
        },
        {
            type = "item",
            name = "vrauks-codex",
            amount = 1
        },
        {
            type = "item",
            name = "sack",
            amount = 1
        }
    })

    local sap_count = 1
    local molt_count = 0

    for k,v in pairs(ingredients) do
        if ingredients[k].name == "vrauk-molt" then
            molt_count = ingredients[k].amount
        end
        if ingredients[k].name == "saps" then
            sap_count = ingredients[k].amount
        end
    end
    
    local icons = table.deepcopy(py_veganism_globals.non_viable_vrauk_mass_icon)
    table.insert(icons,
        {icon = "__pyalienlifegraphics__/graphics/icons/" .. (i + 1) .. ".png", icon_size = 64, scale = .25, shift = {-8, 8}}
    )
    table.insert(icons,
        {icon = "__pyveganism__/graphics/icons/vrauk-molt.png", icon_size = 64, scale = .25, shift = {-8, -8}}
    )
    
    RECIPE {
        type = "recipe",
        name = "synthetic-non-viable-vrauk-mass-molt-" .. (i + 1),
        category = "bio-printer",
        enabled = false,
        energy_required = 120 - 20 * math.log(sap_count),
        ingredients = ingredients,
        results = {
            {
                type = "item",
                name = "non-viable-vrauk-mass",
                amount = 1 + 2 * molt_count,
            },
            {
                type = "item",
                name = "earth-generic-sample",
                amount = 2,
                probability = 0.85,
            },
            {
                type = "item",
                name = "vrauks-codex",
                amount = 1,
                probability = 0.99,
            },
        },
        icons = icons,
        subgroup = "py-veganism-vrauk",
        enabled = false,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        allowed_module_categories = {"vrauks"},
    }:add_unlock("vrauks")
end


local new_icon = table.deepcopy(py_veganism_globals.non_viable_vrauk_mass_icon)
table.insert(new_icon, {
    icon = "__pyveganism__/graphics/icons/rendering.png",
    icon_size = 64,
})
RECIPE {
    type = "recipe",
    name = "render-non-viable-vrauk-mass",
    category = "slaughterhouse",
    energy_required = 10,
    ingredients = {
        {
            type = "item",
            name = "non-viable-vrauk-mass",
            amount = 1
        }
    },
    results = {
        {
            type = "item",
            name = "meat",
            amount = 2
        },
        {
            type = "item",
            name = "guts",
            amount = 2
        },
        {
            type = "item",
            name = "brain",
            amount = 1
        },
        {
            type = "fluid",
            name = "formic-acid",
            amount = 25
        },
        {
            type = "item",
            name = "sack",
            amount = 1
        }
    },
    icons = new_icon,
    subgroup = "py-veganism-vrauk",
}
