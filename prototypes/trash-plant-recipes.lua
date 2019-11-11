local biomass_items = {
    ["canola-meal"] = {input = 10, output = 1, dry = true, time = 0.05},
    ["soy-meal"] = {input = 10, output = 1, dry = true, time = 0.05},
    ["cocoa-fruit"] = {},
    ["oil-palm-fruit"] = {},
    ["canola"] = {},
    ["coconut"] = {},
    ["soy-pods"] = {},
    ["solfaen-dry"] = {input = 20, output = 3, dry = true},
    ["sugar-cane"] = {},
    ["sugar-beet"] = {}
}

local function create_biomass_recipe(item_name, details)
    local output_name = details.dry and "plant-residues-dry" or "plant-residues"
    local category = details.dry and "crafting" or "ball-mill"

    RECIPE {
        type = "recipe",
        name = "declassify-" .. item_name,
        category = category,
        enabled = false,
        energy_required = details.time or 0.5,
        ingredients = {
            {type = "item", name = item_name, amount = details.input or 1}
        },
        results = {
            {type = "item", name = output_name, amount = details.output or 1}
        },
        icons = {
            {icon = "__pyveganism__/graphics/icons/" .. item_name .. ".png"},
            {icon = "__pyveganism__/graphics/icons/arrow-down.png"}
        },
        icon_size = 64,
        subgroup = "py-veganism-trash",
        order = "a"
    }:add_unlock("biomass")
end

for item_name, details in pairs(biomass_items) do
    create_biomass_recipe(item_name, details)
end
