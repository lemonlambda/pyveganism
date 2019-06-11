function getRecipeClone(name)
    local recipe = RECIPE(name)
    return table.deepcopy(recipe)
end

function applyCarbonDioxide(recipename, amount, effect)
    local recipe = RECIPE(recipename)
    recipe:add_ingredient({type = fluid, name = "carbon-dioxyde", amount = amount})
    recipe.results[0].amount = recipe.results[0].amount * effect
end

function applyAsh(recipename, amount, effect)
    local recipe = RECIPE(recipename)
    recipe:add_ingredient({type = "item", name = "ash", amount = amount})
    recipe.energy_required = recipe.energy_required * effect
end

function applyFertilizer(recipename, amount, effect)
    local recipe = RECIPE(recipename)
    recipe:add_ingredient({type = "item", name = "fertilizer", amount = amount})
    recipe.energy_required = recipe.energy_required * effect
end

function applyDirtyWater(recipename, amount, effect)
    local recipe = RECIPE(recipename)
    recipe:remove_ingredient("water")
    recipe:add_ingredient({type = "fluid", name = "dirty-water", amount = amount})
    recipe.energy_required = recipe.energy_required * effect
end

local list_carbon_dioxide = {
    {recipe = "grow-coconut", amount = 200, effect = 2}, 
    {recipe = "grow-oil-palm", amount = 200, effect = 2}, 
    {recipe = "grow-cocoa", amount = 200, effect = 2}
}

local list_ash = {
    {recipe = "grow-coconut", amount = 10, effect = 0.5}, 
    {recipe = "grow-oil-palm", amount = 10, effect = 0.5}, 
    {recipe = "grow-cocoa", amount = 10, effect = 0.5}, 
}

local list_fertilizer = {
    {recipe = "grow-coconut", amount = 1, effect = 0.5}, 
    {recipe = "grow-oil-palm", amount = 1, effect = 0.5}, 
    {recipe = "grow-cocoa", amount = 1, effect = 0.5}, 
}

local list_dirty_water = {
    {recipe = "grow-coconut", amount = 300, effect = 0.5}, 
    {recipe = "grow-oil-palm", amount = 300, effect = 0.5}, 
    {recipe = "grow-cocoa", amount = 300, effect = 0.5}, 
}

for _, item in pairs(list_carbon-dioxide) do
    local newrecipe = getRecipeClone(item.recipe)
    local newname = newrecipe.name .. "-carbon-dioxide"
    newrecipe.name = newname
    data:extend(newrecipe)
    applyCarbonDioxide(newname, item.amount, item.effect)
end



