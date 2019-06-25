require("__stdlib__/stdlib/data/data").Util.create_data_globals()
table = require("__stdlib__/stdlib/utils/table")

local DEBUG = true

require("prototypes.updates.globals")
require("prototypes.item-group")

local enabled_concepts = {
    --technologies
    "technologies.biomass",
    "technologies.oil-plants",
    "technologies.growth-media",
    --
    --plants
    "plants.tiriscefing-willow",
    "plants.oil-palm",
    "plants.coconut",
    "plants.cocoa",
    "plants.canola",
    --
    --microorganisms
    "microorganisms.solfaen",
    --
    --fungi
    "fungi.atztazzae"
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
    table.each(pyht_concepts, function(v) table.insert(enabled_concepts, v) end)
end

for _, concept in pairs(enabled_concepts) do
    require("prototypes." .. concept)
end

for _, concept in pairs(enabled_concepts) do
    require("prototypes." .. concept .. "-recipes")
end

require("prototypes.generic-growing-recipes")

if DEBUG then
    require("prototypes.testing")
end
