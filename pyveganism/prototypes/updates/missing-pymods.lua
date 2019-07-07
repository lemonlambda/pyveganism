if not mods["pyhightech"] then
    --add handcrafting category
    data:extend {
        {
            type = "recipe-category",
            name = "handcrafting"
        }
    }

    for _, player in DATA:pairs("character") do
        player.crafting_categories = player:get_field("crafting_categories", default) + "handcrafting"
    end
    for _, controller in DATA:pairs("god-controller") do
        controller.crafting_categories = controller:get_field("crafting_categories", default) + "handcrafting"
    end
end
