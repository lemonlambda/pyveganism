require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes.item-group")
require("prototypes.biomass")
require("prototypes.tiriscefing-willow")

require("prototypes.oil-palm")
require("prototypes.coconut")
require("prototypes.cocoa")
require("prototypes.lard")

if mods["pyhightech"] then
    require("prototypes.solfaen")
    require("prototypes.fiicorum")
    require("prototypes.zirrella")
end

require("prototypes.generic-growing-recipes")

local DEBUG = true

if DEBUG then 
    require("prototypes.testing")
end