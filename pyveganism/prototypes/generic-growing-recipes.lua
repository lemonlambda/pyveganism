local CARBON_DIOXIDE = 1
local LAMP = 2
local FERTILIZER = 3
local HUMUS = 4
local ASH = 5

local carbon_dioxide_appendix = "-carbon-dioxide"
local carbon_dioxide_icon = {icon = "__pyveganism__/graphics/icons/with-carbon-dioxide.png"}
local carbon_dioxide_ingredient_function = function(recipe, details)
    recipe:add_ingredient{type = "fluid", name = "carbon-dioxide", amount = details.amount}
end
local carbon_dioxide_recipes = {
    ["grow-coconut-palm"] = {amount = 200, productivity_effect = 1.5},
    ["grow-oil-palm"] = {amount = 200, productivity_effect = 1.5},
    ["grow-cocoa"] = {amount = 200, productivity_effect = 1.5},
    ["grow-canola"] = {amount = 200, productivity_effect = 1.5},
    ["grow-soy"] = {amount = 200, productivity_effect = 1.5},
    ["grow-sugar-beet"] = {amount = 200, productivity_effect = 1.5},
    ["grow-sugar-cane"] = {amount = 200, productivity_effect = 1.5},
    ["grow-cadaver-arum"] = {amount = 300, productivity_effect = 1.2}
}

local lamp_appendix = "-lamp"
local lamp_icon = {icon = "__pyveganism__/graphics/icons/with-lamp.png"}
local lamp_ingredient_function = function(recipe, details)
    recipe:add_ingredient{type = "item", name = "small-lamp", amount = details.amount}
end
local lamp_recipes = {
    ["grow-coconut-palm"] = {amount = 1, productivity_effect = 2},
    ["grow-oil-palm"] = {amount = 1, productivity_effect = 2},
    ["grow-cocoa"] = {amount = 1, productivity_effect = 2},
    ["grow-canola"] = {amount = 1, productivity_effect = 2},
    ["grow-soy"] = {amount = 1, productivity_effect = 2},
    ["grow-sugar-beet"] = {amount = 1, productivity_effect = 2},
    ["grow-sugar-cane"] = {amount = 1, productivity_effect = 2},
    ["grow-cadaver-arum"] = {amount = 1, productivity_effect = 1.5}
}

local fertilizer_appendix = "-fertilizer"
local fertilizer_icon = {icon = "__pyveganism__/graphics/icons/with-fertilizer.png"}
local fertilizer_ingredient_function = function(recipe, details)
    recipe:add_ingredient{type = "item", name = "py-fertilizer", amount = details.amount}
end
local fertilizer_recipes = {
    ["grow-coconut-palm"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-oil-palm"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-cocoa"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-canola"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-soy"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-sugar-beet"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-sugar-cane"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-atztazzae"] = {amount = 1, energy_required_effect = 0.5},
    ["grow-tiriscefing-willow-1"] = {amount = 2, energy_required_effect = 0.5},
    ["grow-tiriscefing-willow-2"] = {amount = 2, energy_required_effect = 0.5}
}

local humus_appendix = "-humus"
local humus_icon = {icon = "__pyveganism__/graphics/icons/with-humus.png"}
local humus_ingredient_function = function(recipe, details)
    recipe:remove_ingredient("soil")
    recipe:add_ingredient{type = "item", name = "humus", amount = details.amount}
end
local humus_recipes = {
    ["grow-coconut-palm"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-oil-palm"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-cocoa"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-canola"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-soy"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-sugar-beet"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-sugar-cane"] = {amount = 10, energy_required_effect = 0.7},
    ["grow-atztazzae"] = {amount = 30, energy_required_effect = 0.5},
    ["grow-tiriscefing-willow-1"] = {amount = 30, energy_required_effect = 0.667},
    ["grow-tiriscefing-willow-2"] = {amount = 30, energy_required_effect = 0.667}
}

local ash_appendix = "-ash"
local ash_icon = {icon = "__pyveganism__/graphics/icons/with-ash.png"}
local ash_ingredient_function = function(recipe, details)
    recipe:add_ingredient{type = "item", name = "ash", amount = details.amount}
end
local ash_recipes = {
    ["grow-atztazzae"] = {amount = 20, energy_required_effect = 0.5}
}

local unlocks = {
    ["grow-coconut-palm"] = {"oil-plants"},
    ["grow-oil-palm"] = {"oil-plants"},
    ["grow-cocoa"] = {"oil-plants"},
    ["grow-canola"] = {"oil-seeds"},
    ["grow-soy"] = {"oil-plants", "protein-plants"},
    ["grow-sugar-beet"] = {"sugar-plants"},
    ["grow-sugar-cane"] = {"sugar-plants"},
    ["grow-tiriscefing-willow-1"] = {"coal-processing-1"}, 
    ["grow-tiriscefing-willow-2"] = {"coal-processing-1"},
    ["grow-atztazzae"] = {"vanadium-processing"},
    ["grow-cadaver-arum"] = {"basic-electronics"}
}

local combination_details = {
    ["grow-coconut-palm"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        },
    },
    ["grow-oil-palm"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        }
    },
    ["grow-cocoa"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        }
    },
    ["grow-canola"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        }
    },
    ["grow-soy"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        }
    },
    ["grow-sugar-beet"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        }
    },
    ["grow-sugar-cane"] = {
        groups = {
            {CARBON_DIOXIDE, LAMP}, 
            {HUMUS, FERTILIZER}
        }
    },
    ["grow-atztazzae"] = {
        groups = {
            {FERTILIZER}, {ASH}, {HUMUS}
        }, 
        max_combinations = 1
    },
    ["grow-tiriscefing-willow-1"] = {
        groups = {{HUMUS, FERTILIZER}}
    },
    ["grow-tiriscefing-willow-2"] = {
        groups = {{HUMUS, FERTILIZER}}
    },
    ["grow-cadaver-arum"] = {
        groups = {{CARBON_DIOXIDE, LAMP}}
    }
}

local function create_recipe_clone(name, new_name)
    local copy = util.table.deepcopy(data.raw.recipe[name])
    copy.name = new_name
    return RECIPE(copy)
end

local function add_unlocks(recipe, unlock_techs)
    if not unlock_techs then 
        return 
    end
    for _, tech in pairs(unlock_techs) do
        recipe:add_unlock(tech)
    end
end

local function apply_effects(recipe, details)
    if details.energy_required_effect then
        recipe.energy_required = recipe.energy_required * details.energy_required_effect
    end

    if details.productivity_effect then
        for _, result in pairs(recipe.results) do
            result.amount = math.floor(result.amount * details.productivity_effect)
        end
    end
end

local function create_recipe(name, appendix, details, unlock_techs, icon, ingredient_function)
    local new_recipe = create_recipe_clone(name, name .. appendix)
    table.insert(new_recipe.icons, icon)
    add_unlocks(new_recipe, unlock_techs)
    apply_effects(new_recipe, details)
    ingredient_function(new_recipe, details)
    return new_recipe
end

local creation_lookup = {
    [CARBON_DIOXIDE] = function(recipe_name, bottom_recipe_name) 
        return create_recipe(
            recipe_name, 
            carbon_dioxide_appendix, 
            carbon_dioxide_recipes[bottom_recipe_name],
            unlocks[bottom_recipe_name], 
            carbon_dioxide_icon, 
            carbon_dioxide_ingredient_function
        )
    end,
    [LAMP] = function(recipe_name, bottom_recipe_name)
        return create_recipe(
            recipe_name, 
            lamp_appendix, 
            lamp_recipes[bottom_recipe_name],
            unlocks[bottom_recipe_name], 
            lamp_icon, 
            lamp_ingredient_function
        )
    end,
    [FERTILIZER] = function(recipe_name, bottom_recipe_name)
        return create_recipe(
            recipe_name, 
            fertilizer_appendix, 
            fertilizer_recipes[bottom_recipe_name],
            unlocks[bottom_recipe_name], 
            fertilizer_icon, 
            fertilizer_ingredient_function
        )
    end,
    [HUMUS] = function(recipe_name, bottom_recipe_name)
        return create_recipe(
            recipe_name, 
            humus_appendix, 
            humus_recipes[bottom_recipe_name],
            unlocks[bottom_recipe_name], 
            humus_icon, 
            humus_ingredient_function
        )
    end, 
    [ASH] = function(recipe_name, bottom_recipe_name)
        return create_recipe(
            recipe_name, 
            ash_appendix,
            ash_recipes[bottom_recipe_name], 
            unlocks[bottom_recipe_name],
            ash_icon,
            ash_ingredient_function
        )
    end
}

local function create_ingredient_group_recipes(recipes, bottom_recipe_name, group,  max_combinations)
    local created_recipes = {}
    local recipes_todo = recipes

    for _, ingredient in pairs(group) do
        local next_todo = {}
        
        for _, recipe in pairs(recipes_todo) do
            if recipe.combination_count < max_combinations then
                local created_recipe = creation_lookup[ingredient](recipe.name, bottom_recipe_name)
                local cr = {name = created_recipe.name, combination_count = recipe.combination_count + 1}
                table.insert(next_todo, cr)
                table.insert(created_recipes, cr)
            end
        end

        recipes_todo = next_todo
    end

    return created_recipes
end

local function create_combinations_for(recipe_name)
    local details = combination_details[recipe_name]
    local existing_recipes = {
        {name = recipe_name, combination_count = 0}
    }
    local max_combinations = details.max_combinations and details.max_combinations or 1000

    for _, group in pairs(combination_details[recipe_name].groups) do
        local created_recipes = create_ingredient_group_recipes(existing_recipes, recipe_name, group, max_combinations)
        table.merge(existing_recipes, created_recipes, true)
    end
end

for recipe, _ in pairs(combination_details) do
    local ok, err = pcall(create_combinations_for, recipe)
    if not ok then
        error("Error while creating growing recipes for: " .. recipe .. "\n" .. err)
    end
end
