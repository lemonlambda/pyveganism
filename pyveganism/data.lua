require("__stdlib__/stdlib/data/data").Util.create_data_globals()
table = require("__stdlib__/stdlib/utils/table")

local DEBUG = true

require("prototypes.datastage-globals")
require("prototypes.item-group")

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
    --
    --microorganisms
    "microorganisms.solfaen",
    "microorganisms.sludge",
    "microorganisms.proxae",
    "microorganisms.pseudodaemonas",
    --
    --fungi
    "fungi.atztazzae",
    --
    --miscellaneous
    "misc.samples",
    "misc.citric-acid",
    "misc.fertilizer"
}

if mods["pyhightech"] then
    local pyht_concepts = {
        --microorganisms
        "microorganisms.fiicorum",
        "microorganisms.zirrella"
    }

    for _, concept in pairs(pyht_concepts) do
        table.insert(enabled_concepts, concept)
    end
end

function prequire(file)
    local ok, err = pcall(require, file)
    if ok then
        return err
    elseif not err:find('^module .* not found') then
        error(err)
    end
end

for _, concept in pairs(enabled_concepts) do
    prequire("prototypes." .. concept)
end

for _, concept in pairs(enabled_concepts) do
    prequire("prototypes." .. concept .. "-recipes")
end

require("prototypes.generic-growing-recipes")

if DEBUG then
    require("prototypes.testing")
end
