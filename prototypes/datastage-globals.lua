py_veganism_globals = {
    plant_oil_refining_category = "fluid-separator",
    plant_oil_pressing_category = "crafting-with-fluid",
    algae_growing_category = "bio-reactor",
    sugar_refine_category = "rectisol",
    electrodeionisation_category = "chemistry",
    urea_icon = {icon = "__pyveganism__/graphics/icons/urea.png", size = 64},
    fertilizer_icon = {icon = "__pyveganism__/graphics/icons/fertilizer.png", size = 64},
    vegan_icon_small = "__pyveganism__/graphics/icons/vegan-small.png",
    vegan_icon = "__pyveganism__/graphics/icons/vegan.png",
}

function py_veganism_globals:get_vegan_icon(size)
    if size == 32 then
        return self.vegan_icon_small
    elseif size == 64 then
        return self.vegan_icon
    else
        error("Error in pY Veganism: wrong size for the vegan icon")
    end
end

if mods["pyhightech"] then
    py_veganism_globals.urea_icon = {icon = "__pyhightech__/graphics/icons/urea.png", size = 32}
    py_veganism_globals.fertilizer_icon = {icon = "__pyhightech__/graphics/icons/fertilizer.png", size = 32}
    py_veganism_globals.plant_oil_pressing_category = "pulp"
    py_veganism_globals.algae_growing_category = "moon"    
end

if mods["pypetroleumhandling"] then
    py_veganism_globals.plant_oil_refining_category = "cracker"
    py_veganism_globals.sugar_refine_category = "reformer"
end

if mods["pyrawores"] then
    py_veganism_globals.electrodeionisation_category = "electrolyzer"
end