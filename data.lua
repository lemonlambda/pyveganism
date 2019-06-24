require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes.updates.globals")
require("prototypes.item-group")

--items, fluids and techs
require("prototypes.technologies.biomass")
require("prototypes.technologies.oil-plants")
require("prototypes.technologies.growth-media")

require("prototypes.plants.tiriscefing-willow")
require("prototypes.plants.oil-palm")
require("prototypes.plants.coconut")
require("prototypes.plants.cocoa")
require("prototypes.plants.canola")

require("prototypes.microorganisms.solfaen")

require("prototypes.fungi.atztazzae")

if mods["pyhightech"] then
    require("prototypes.microorganisms.fiicorum")
    require("prototypes.microorganisms.zirrella")
end

--recipes
--they cannot be added before the corresponding items/fluids/techs are added
require("prototypes.technologies.biomass-recipes")
require("prototypes.technologies.oil-plants-recipes")
require("prototypes.technologies.growth-media-recipes")

require("prototypes.plants.tiriscefing-willow-recipes")
require("prototypes.plants.oil-palm-recipes")
require("prototypes.plants.coconut-recipes")
require("prototypes.plants.cocoa-recipes")
require("prototypes.plants.canola-recipes")

require("prototypes.microorganisms.solfaen-recipes")

require("prototypes.fungi.atztazzae-recipes")

if mods["pyhightech"] then
    require("prototypes.microorganisms.fiicorum-recipes")
    require("prototypes.microorganisms.zirrella-recipes")
end

require("prototypes.generic-growing-recipes")

local DEBUG = true

if DEBUG then 
    require("prototypes.testing")
end