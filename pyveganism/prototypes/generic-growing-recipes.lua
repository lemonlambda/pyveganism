--TODO: refactor this mess

--[[
    Lamp, CO2, Fertilizer, Humus
    2^4 Rezepte -> 16
]]--
local carbon_dioxide_appendix = "-carbon-dioxide"
local carbon_dioxide_icon = {icon = "__pyveganism__/graphics/icons/with-carbon-dioxide.png"}
local carbon_dioxide_ingredient_function = function(recipe, details)
    new_recipe:add_ingredient({type = "fluid", name = "carbon-dioxide", amount = details.amount})
end
local carbon_dioxide_recipes = {
    ["grow-coconut-palm"] = {amount = 200, productivity_effect = 1.5},
    ["grow-oil-palm"] = {amount = 200, productivity_effect = 1.5},
    ["grow-cocoa"] = {amount = 200, productivity_effect = 1.5},
    ["grow-canola"] = {amount = 200, productivity_effect = 1.5},
    ["grow-soy"] = {amount = 200, productivity_effect = 1.5}
}

local lamp_appendix = "-lamp"
local lamp_icon = {icon = "__pyveganism__/graphics/icons/with-lamp.png"}
local lamp_ingredient_function = function(recipe, details)
    new_recipe:add_ingredient({type = "lamp", name = "small-lamp", amount = details.amount})
end
local lamp_recipes = {
    ["grow-coconut-palm"] = {amount = 200, productivity_effect = 1.5},
    ["grow-oil-palm"] = {amount = 200, productivity_effect = 1.5},
    ["grow-cocoa"] = {amount = 200, productivity_effect = 1.5},
    ["grow-canola"] = {amount = 200, productivity_effect = 1.5},
    ["grow-soy"] = {amount = 200, productivity_effect = 1.5}
}

local fertilizer_appendix = "-fertilizer"
local fertilizer_icon = {icon = "__pyveganism__/graphics/icons/with-fertilizer.png"}
local fertilizer_ingredient_function = function(recipe, details)
    new_recipe:add_ingredient({type = "fluid", name = "py-fertilizer", amount = details.amount})
end
local fertilizer_recipes = {
    ["grow-coconut-palm"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-oil-palm"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-cocoa"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-canola"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-soy"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-atztazzae"] = {amount = 1, energy_required_effect = 0.5}
}

local humus_appendix = "-humus"
local humus_icon = {icon = "__pyveganism__/graphics/icons/with-humus.png"}
local humus_ingredient_function = function(recipe, details)
    recipe:remove_ingredient("soil")
    recipe:add_ingredient({type = "item", name = "humus", amount = details.amount})
end
local humus_recipes = {
    ["grow-coconut-palm"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-oil-palm"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-cocoa"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-canola"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-soy"] = {amount = 1, energy_required_effect = 0.7},
    ["grow-atztazzae"] = {amount = 1, energy_required_effect = 0.5}
}

local unlocks = {
    ["grow-coconut-palm"] = {"oil-plants"},
    ["grow-oil-palm"] = {"oil-plants"},
    ["grow-cocoa"] = {"oil-plants"},
    ["grow-canola"] = {"oil-seeds"},
    ["grow-soy"] = {"oil-plants", "protein-plants"},
    ["grow-atztazzae"] = {"vanadium-processing"}
}

function add_unlocks(recipe, unlocks)
    if not unlocks then 
        return 
    end
    for _, tech in pairs(unlocks) do
        recipe:add_unlock(tech)
    end
end

function create_recipe_clone(name, new_name)
    local copy = util.table.deepcopy(data.raw.recipe[name])
    copy.name = new_name
    return RECIPE(copy)
end

function apply_effects(recipe, details)
    if details.energy_required_effect then
        recipe.energy_required = recipe.energy_required * details.energy_required_effect
    end

    if details.productivity_effect then
        for _, result in pairs(recipe.results) do
            result.amount = math.floor(result.amount * details.productivity_effect)
        end
    end
end

function create_recipe(name, appendix, details, unlocks, icon, ingredient_function)
    local new_recipe = create_recipe_clone(name, name .. appendix)
    table.insert(new_recipe.icons, icon)
    apply_effects(new_recipe, details)
    ingredient_function(new_recipe, details)
    return new_recipe
end


function create_carbon_dioxide_recipe(recipe, details, unlocks)
    local name = recipe .. appendix_carbon_dioxide
    local new_recipe = create_recipe_clone(recipe, name, unlocks)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-carbon-dioxide.png"})
    new_recipe:add_ingredient({type = "fluid", name = "carbon-dioxide", amount = details.amount})

    for _, result in pairs(new_recipe.results) do
        result.amount = math.floor(result.amount * details.effect)
    end

    return new_recipe
end

function create_ash_recipe(recipe, details, unlocks)
    local name = recipe .. appendix_ash
    local new_recipe = create_recipe_clone(recipe, name, unlocks)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-ash.png"})
    new_recipe:add_ingredient({type = "item", name = "ash", amount = details.amount})
    new_recipe.energy_required = new_recipe.energy_required * details.effect
    
    return new_recipe
end

function create_fertilizer_recipe(recipe, details, unlocks)
    local name = recipe .. appendix_fertilizer
    local new_recipe = create_recipe_clone(recipe, name, unlocks)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-fertilizer.png"})
    new_recipe:add_ingredient({type = "item", name = "py-fertilizer", amount = details.amount})
    new_recipe.energy_required = new_recipe.energy_required * details.effect
    
    return new_recipe
end

function create_dirty_water_recipe(recipe, details, unlocks)
    local name = recipe .. appendix_dirty_water
    local new_recipe = create_recipe_clone(recipe, name, unlocks)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-dirty-water.png"})
    new_recipe:remove_ingredient("water")
    new_recipe:add_ingredient({type = "fluid", name = "dirty-water", amount = details.amount})
    new_recipe.energy_required = new_recipe.energy_required * details.effect
    
    return new_recipe
end

for recipe, details in pairs(list_carbon_dioxide) do
    local co2_recipe = create_carbon_dioxide_recipe(recipe, details, list_unlocks[recipe])

    if list_ash[recipe] then
        local co2_ash_recipe = create_ash_recipe(co2_recipe.name, list_ash[recipe], list_unlocks[recipe])

        if (list_dirty_water[recipe]) then
            create_dirty_water_recipe(co2_ash_recipe.name, list_dirty_water[recipe], list_unlocks[recipe])
        end
    end

    if mods["pyhightech"] and list_fertilizer[recipe] then
        local co2_fertilizer_recipe =
            create_fertilizer_recipe(co2_recipe.name, list_fertilizer[recipe], list_unlocks[recipe])

        if list_dirty_water[recipe] then
            create_dirty_water_recipe(co2_fertilizer_recipe.name, list_dirty_water[recipe], list_unlocks[recipe])
        end
    end

    if list_dirty_water[recipe] then
        create_dirty_water_recipe(co2_recipe.name, list_dirty_water[recipe], list_unlocks[recipe])
    end
end

for recipe, details in pairs(list_ash) do
    local ash_recipe = create_ash_recipe(recipe, details, list_unlocks[recipe])

    if list_dirty_water[recipe] then
        create_dirty_water_recipe(ash_recipe.name, list_dirty_water[recipe], list_unlocks[recipe])
    end
end

if mods["pyhightech"] then
    for recipe, details in pairs(list_fertilizer) do
        local fertilizer_recipe = create_fertilizer_recipe(recipe, details, list_unlocks[recipe])

        if list_dirty_water[recipe] then
            create_dirty_water_recipe(fertilizer_recipe.name, list_dirty_water[recipe], list_unlocks[recipe])
        end
    end
end

for recipe, details in pairs(list_dirty_water) do
    create_dirty_water_recipe(recipe, details, list_unlocks[recipe])
end
