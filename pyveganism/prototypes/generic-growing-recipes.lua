--TODO: refactor this mess

local appendix_carbon_dioxide = "-carbon-dioxide"
local list_carbon_dioxide = {
    ["grow-coconut-palm"] = {amount = 200, effect = 1.5},
    ["grow-oil-palm"] = {amount = 200, effect = 1.5},
    ["grow-cocoa"] = {amount = 200, effect = 1.5},
    ["grow-canola"] = {amount = 200, effect = 1.5}
}

local appendix_ash = "-ash"
local list_ash = {
    ["grow-coconut-palm"] = {amount = 10, effect = 0.7},
    ["grow-oil-palm"] = {amount = 10, effect = 0.7},
    ["grow-cocoa"] = {amount = 10, effect = 0.7},
    ["grow-canola"] = {amount = 10, effect = 0.7},
    ["grow-atztazzae"] = {amount = 20, effect = 0.5}
}

local appendix_fertilizer = "-fertilizer"
local list_fertilizer = {
    ["grow-coconut-palm"] = {amount = 1, effect = 0.7},
    ["grow-oil-palm"] = {amount = 1, effect = 0.7},
    ["grow-cocoa"] = {amount = 1, effect = 0.7},
    ["grow-canola"] = {amount = 1, effect = 0.7},
    ["grow-atztazzae"] = {amount = 1, effect = 0.5}
}

local appendix_dirty_water = "-dirty-water"
local list_dirty_water = {
    ["grow-coconut-palm"] = {amount = 300, effect = 0.7},
    ["grow-oil-palm"] = {amount = 300, effect = 0.7},
    ["grow-cocoa"] = {amount = 300, effect = 0.7},
    ["grow-canola"] = {amount = 300, effect = 0.7}
}

local list_unlocks = {
    ["grow-coconut-palm"] = "oil-plants",
    ["grow-oil-palm"] = "oil-plants",
    ["grow-cocoa"] = "oil-plants",
    ["grow-canola"] = "oil-plants",
    ["grow-atztazzae"] = "vanadium-processing"
}

function create_recipe_clone(name, new_name)
    local copy = util.table.deepcopy(data.raw.recipe[name])
    copy.name = new_name
    data:extend({copy})
    return copy
end

function create_carbon_dioxide_recipe(recipe, details, unlock)
    local name = recipe .. appendix_carbon_dioxide
    create_recipe_clone(recipe, name)
    local new_recipe = RECIPE(name)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-carbon-dioxide.png"})
    new_recipe:add_ingredient({type = "fluid", name = "carbon-dioxide", amount = details.amount})

    for _, result in pairs(new_recipe.results) do
        result.amount = math.floor(result.amount * details.effect)
    end

    if unlock then
        new_recipe:add_unlock(unlock)
    end
    return new_recipe
end

function create_ash_recipe(recipe, details, unlock)
    local name = recipe .. appendix_ash
    create_recipe_clone(recipe, name)
    local new_recipe = RECIPE(name)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-ash.png"})
    new_recipe:add_ingredient({type = "item", name = "ash", amount = details.amount})
    new_recipe.energy_required = new_recipe.energy_required * details.effect
    if unlock then
        new_recipe:add_unlock(unlock)
    end
    return new_recipe
end

function create_fertilizer_recipe(recipe, details, unlock)
    local name = recipe .. appendix_fertilizer
    create_recipe_clone(recipe, name)
    local new_recipe = RECIPE(name)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-fertilizer.png"})
    new_recipe:add_ingredient({type = "item", name = "py-fertilizer", amount = details.amount})
    new_recipe.energy_required = new_recipe.energy_required * details.effect
    if unlock then
        new_recipe:add_unlock(unlock)
    end
    return new_recipe
end

function create_dirty_water_recipe(recipe, details, unlock)
    local name = recipe .. appendix_dirty_water
    create_recipe_clone(recipe, name)
    local new_recipe = RECIPE(name)

    table.insert(new_recipe.icons, {icon = "__pyveganism__/graphics/icons/with-dirty-water.png"})
    new_recipe:remove_ingredient("water")
    new_recipe:add_ingredient({type = "fluid", name = "dirty-water", amount = details.amount})
    new_recipe.energy_required = new_recipe.energy_required * details.effect
    if unlock then
        new_recipe:add_unlock(unlock)
    end
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
