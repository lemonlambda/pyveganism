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

ITEM {
    type = "item",
    name = "testitem",
    enabled = true,
    icon = "__pyveganism__/graphics/icons/tulip-1.png",
    icon_size = 64,
    pictures =
    {
        {filename = "__pyveganism__/graphics/icons/tulip-1.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-2.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-3.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-4.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-5.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-6.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-7.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-8.png", size = 64, scale = 0.30},
        {filename = "__pyveganism__/graphics/icons/tulip-9.png", size = 64, scale = 0.30},
    },
    flags = {},
    subgroup = "py-veganism-plants",
    order = "xxx",
    stack_size = 100
}

RECIPE {
    type = "recipe",
    name = "testitem",
    enabled = true,
    energy_required = 1,
    ingredients = {
    },
    results = {
        {type = "item", name = "testitem", amount = 1}
    },
    icon = "__pyveganism__/graphics/icons/vegan.png",
    icon_size = 64,
    subgroup = "py-veganism-plants",
    order = "xxx"
}
