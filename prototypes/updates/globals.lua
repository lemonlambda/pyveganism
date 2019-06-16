py_veganism_globals = {}

py_veganism_globals["plant_oil_refining_category"] = "fluid-separator"
py_veganism_globals["plant_oil_pressing_category"] = "crafting-with-fluid"

if mods["pyhightech"] then
    py_veganism_globals["plant_oil_pressing_category"] = "pulp"
end

if mods["pypetroleumhandling"] then
    py_veganism_globals["plant_oil_refining_category"] = "cracker"
end