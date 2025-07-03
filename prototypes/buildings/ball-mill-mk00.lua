RECIPE {
    type = "recipe",
    name = "ball-mill-mk00",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine",         amount = 1},
        {type = "item", name = "copper-plate",         amount = 10},
        {type = "item", name = "steel-plate",          amount = 20},
        {type = "item", name = "iron-plate",           amount = 30},
    },
    results = {
        {type = "item", name = "ball-mill-mk00", amount = 1}
    }
}:add_unlock("fiber-refining")

data:extend{
    {
        type = "item-subgroup",
        name = "py-cp-buildings-mk00",
        group = "coal-processing",
        order = "a"
    },
}


local i = 0
local name = "ball-mill-mk0" .. i
local icon = "__pyveganism__/graphics/icons/" .. name .. ".png"
local icon_size = 64
local tint = {r = 0.5, g = 0.5, b = 0.5, a = 1.0}

ITEM {
    type = "item",
    name = name,
    icon = icon,
    icon_size = icon_size,
    flags = {},
    subgroup = "py-cp-buildings-mk0" .. i,
    order = "d",
    place_result = name,
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = name,
    icon = icon,
    icon_size = icon_size,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = name},
    fast_replaceable_group = "ball-mill",
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"ball-mill"},
    crafting_speed = 0.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 1
        },
    },
    energy_usage = "500kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/ball-mill/ball-mill.png",
                    width = 215,
                    height = 198,
                    frame_count = 80,
                    line_length = 8,
                    animation_speed = 0.8,
                    shift = {0.318, -0.12}
                },
                {
                    filename = "__pycoalprocessinggraphics__/graphics/entity/ball-mill/ball-mill-mask.png",
                    width = 215,
                    height = 198,
                    frame_count = 80,
                    line_length = 8,
                    animation_speed = 0.8,
                    shift = {0.318, -0.12},
                    tint = tint,
                },
            }
        },
    },
    impact_category = "metal",
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/niobium-mine.ogg"},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/niobium-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}

