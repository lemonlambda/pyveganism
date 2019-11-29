local vegan_mode = settings.startup["pyveganism-hardcore-vegan"].value
local vegetarian_mode = settings.startup["pyveganism-hardcore-vegetarian"].value

if not vegan_mode and not vegetarian_mode then
    return
end

table = require("__stdlib__/stdlib/utils/table")

local nonvegan_recipes = {
    --pyht
    "auog-paddock"
}

local nonvegetarian_recipes = {
    --pycp
    "mukmoux-pasture",
    "ulric-coral",
    --pyfe
    "xyhiphoe-pool",
    "kmauts-enclosure",
    --pyht
    "zipir"
}

local function disable_recipe(name)
    --seems like I don't need to check if the recipe exists
    --so the optional pymods are no problem
    local recipe = RECIPE(name)

    --setting them to hidden makes the player unable to craft them
    --disabling them would be harder to do because you would need to find all the technologies that unlock them
    --deleting them would break all mods who try to change the recipe in later stages
    if recipe.normal then
        recipe.normal.hidden = true
        recipe.difficult.hidden = true
    else
        recipe.hidden = true
    end
end

if vegan_mode then
    table.each(nonvegan_recipes, disable_recipe)
end

table.each(nonvegetarian_recipes, disable_recipe)
