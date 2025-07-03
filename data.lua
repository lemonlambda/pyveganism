local DEBUG = true

require("prototypes.datastage-globals")
require("prototypes.item-group")
require("prototypes.crafting-category")
require("prototypes.functions.helpers")

local enabled_concepts = {
    --technologies
    "technologies.oil-plants",
    "technologies.oil-plants-recipes",
    "technologies.protein-plants",
    "technologies.protein-plants-recipes",
    "technologies.oil-seeds",
    "technologies.oil-seeds-recipes",
    "technologies.sugar-plants",
    "technologies.sugar-plants-recipes",
    "technologies.growth-media",
    "technologies.growth-media-recipes",
    "technologies.plant-breeding",
    "technologies.cultivation-expertise",
    "technologies.biotechnology",
    --
    --
    --plants
    "plants.tiriscefing-willow",
    "plants.tiriscefing-willow-recipes",
    "plants.oil-palm",
    "plants.oil-palm-recipes",
    "plants.calknut",
    "plants.calknut-recipes",
    "plants.cocoa",
    "plants.cocoa-recipes",
    "plants.canola",
    "plants.canola-recipes",
    "plants.guar",
    "plants.guar-recipes",
    "plants.sugar-beet",
    "plants.sugar-beet-recipes",
    "plants.sugar-cane",
    "plants.sugar-cane-recipes",
    "plants.cadaver-arum",
    "plants.cadaver-arum-recipes",
    --
    --microorganisms
    "microorganisms.fiicorum",
    "microorganisms.fiicorum-recipes",
    "microorganisms.zirrella",
    "microorganisms.zirrella-recipes",
    "microorganisms.solfaen",
    "microorganisms.solfaen-recipes",
    "microorganisms.sludge",
    "microorganisms.sludge-recipes",
    "microorganisms.proxae",
    "microorganisms.proxae-recipes",
    "microorganisms.pseudodaemonas",
    "microorganisms.pseudodaemonas-recipes",
    "microorganisms.morgenroete",
    "microorganisms.morgenroete-recipes",
    "microorganisms.e-coli",
    "microorganisms.e-coli-recipes",
    "microorganisms.pemtenn",
    "microorganisms.pemtenn-recipes",

    -- organisms
    "organisms.vrauk-molting",
    
    --fungi
    "fungi.atztazzae",
    "fungi.atztazzae-recipes",

    -- yes
    "plant-residues",
    
    --miscellaneous
    "misc.samples",
    "misc.samples-recipes",
    "misc.citric-acid",
    "misc.citric-acid-recipes",
    "misc.grow-equipment-recipes",
    "misc.ammonium-sulfate",
    "misc.ammonium-sulfate-recipes",
    "misc.tofu-recipes",
    "misc.meat-alternatives",
    "misc.burlap",

    --buildings
    "buildings.bio-printer-mk00",
    "buildings.ball-mill-mk00",
}

for _, concept in pairs(enabled_concepts) do
    require("prototypes." .. concept)
end

require("prototypes.generic-growing-recipes")
require("prototypes.trash-plant-recipes")

if DEBUG then
    require("prototypes.testing")
end
