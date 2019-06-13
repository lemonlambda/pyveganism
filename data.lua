require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes.item-group")

require("prototypes.plants.tiriscefing-willow")
require("prototypes.plants.oil-palm")
require("prototypes.plants.coconut")
require("prototypes.plants.cocoa")

require("prototypes.technologies.oil-plants")
require("prototypes.technologies.biomass")

if mods["pyhightech"] then
    require("prototypes.microorganisms.solfaen")
    require("prototypes.microorganisms.fiicorum")
    require("prototypes.microorganisms.zirrella")
end

require("prototypes.generic-growing-recipes")

local DEBUG = true

if DEBUG then 
    require("prototypes.testing")
end