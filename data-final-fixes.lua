require("prototypes.updates.compostable-items")
require("prototypes.updates.handcrafting")

-- we add the hidden stuff late to avoid problems with other mods that change
-- beacon or module prototypes
require("prototypes.buildings.hidden-beacon")

if mods["pyrawores"] then
    RECIPE("ralesia-humus"):replace_ingredient("water", "hydrogen")
end
