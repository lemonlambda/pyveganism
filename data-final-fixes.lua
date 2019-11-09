require("prototypes.updates.compostable-items")
require("prototypes.updates.handcrafting")

if mods["pyrawores"] then
    RECIPE("ralesia-humus"):replace_ingredient("water", "hydrogen")
end
