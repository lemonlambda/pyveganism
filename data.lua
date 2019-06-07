require("__stdlib__/stdlib/data/data").Util.create_data_globals()

require("prototypes.item-group")
require("prototypes.tiriscefing-willow")

if mods["pyhightech"] then
    require("prototypes.agar")
end


local DEBUG = true

if DEBUG then 
    require("prototypes.testing")
end