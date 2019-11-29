require("__stdlib__/stdlib/data/data").Util.create_data_globals()

local DEBUG = false

require("prototypes.datastage-globals")
require("prototypes.item-group")
require("prototypes.crafting-category")

--add required features if some of the pymods are missing
require("prototypes.updates.missing-pymods")

local enabled_concepts = {
    --technologies
    "technologies.biomass",
    "technologies.oil-plants",
    "technologies.protein-plants",
    "technologies.oil-seeds",
    "technologies.sugar-plants",
    "technologies.growth-media",
    "technologies.plant-breeding",
    "technologies.cultivation-expertise",
    "technologies.biotechnology",
    --
    --buildings
    "buildings.composting-silo",
    --
    --plants
    "plants.tiriscefing-willow",
    "plants.oil-palm",
    "plants.coconut",
    "plants.cocoa",
    "plants.canola",
    "plants.soy",
    "plants.sugar-beet",
    "plants.sugar-cane",
    --
    --microorganisms
    "microorganisms.fiicorum",
    "microorganisms.zirrella",
    "microorganisms.solfaen",
    "microorganisms.sludge",
    "microorganisms.proxae",
    "microorganisms.pseudodaemonas",
    "microorganisms.morgenroete",
    "microorganisms.e-coli",
    "microorganisms.pemtenn",
    --
    --fungi
    "fungi.atztazzae",
    --
    --miscellaneous
    "misc.samples",
    "misc.citric-acid",
    "misc.grow-equipment"
}

if mods["pyhightech"] then
    local pyht_concepts = {
        --plants
        "plants.cadaver-arum",
        --
        --miscellaneous
        "misc.ammonium-sulfate"
    }

    for _, concept in pairs(pyht_concepts) do
        table.insert(enabled_concepts, concept)
    end
end

local function try_load(file)
    local ok, err = pcall(require, file)
    if not ok and not err:find("^module .* not found") then
        error(err)
    end
end

for _, concept in pairs(enabled_concepts) do
    try_load("prototypes." .. concept)
end

for _, concept in pairs(enabled_concepts) do
    try_load("prototypes." .. concept .. "-recipes")
end

require("prototypes.generic-growing-recipes")
require("prototypes.trash-plant-recipes")

if DEBUG then
    require("prototypes.testing")
end
