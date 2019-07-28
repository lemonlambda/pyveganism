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

    ITEM {
        type = "item",
        name = "py-fertilizer",
        icon = "__pyveganism__/graphics/icons/fertilizer.png",
        icon_size = 64,
        flags = {},
        subgroup = "py-veganism-fertilizer",
        order = "aaa",
        stack_size = 200
    }
end
