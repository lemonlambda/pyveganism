py_veganism_globals = {}

py_veganism_globals["plant_oil_refining_category"] = "fluid-separator"
py_veganism_globals["plant_oil_pressing_category"] = "crafting-with-fluid"
py_veganism_globals["algae_growing_category"] = "bio-reactor"

if mods["pyhightech"] then
    py_veganism_globals["plant_oil_pressing_category"] = "pulp"
    py_veganism_globals["algae_growing_category"] = "moon"    
end

if mods["pypetroleumhandling"] then
    py_veganism_globals["plant_oil_refining_category"] = "cracker"
end