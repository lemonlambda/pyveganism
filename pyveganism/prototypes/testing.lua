local testicons = {
    
}

for i, icon in pairs(testicons) do
    ITEM {
        type = "item",
        name = "testitem"..i,
        enabled = true,
        fuel_value = "1MJ",
        fuel_category = "chemical",
        icon = "__pyveganism__/graphics/icons/"..icon..".png",
        icon_size = 64,
        flags = {},
        subgroup = "py-veganism-plants",
        order = "xxx",
        stack_size = 100
    }
    
    RECIPE {
        type = "recipe",
        name = "testitem"..i,
        enabled = true,
        energy_required = 1,
        ingredients = {
        },
        results = {
            {type = "item", name = "testitem"..i, amount = 1}
        },
        main_product = "testitem"..i,
        icon = "__pyveganism__/graphics/icons/"..icon..".png",
        icon_size = 64,
        subgroup = "py-veganism-plants",
        order = "xxx"
    }
end
