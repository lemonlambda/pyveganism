ITEM {
    type = "item",
    name = "stool-sample",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/stool-sample.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-samples",
    order = "bae",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "blood-bag",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/blood-bag.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-samples",
    order = "aaa",
    stack_size = 200
}

ITEM {
    type = "item",
    name = "toe-nail-sample",
    enabled = false,
    icon = "__pyveganism__/graphics/icons/toe-nail-sample.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-samples",
    order = "aab",
    stack_size = 200
}

--[[
    Blood Donation Penalty Sticker
]]--
data:extend{
    {
        type = "sticker",
        name = "blood-donation-1",
        duration_in_ticks = 60 * 20, -- 20 seconds at 60 ticks per second
        target_movement_modifier_from = 0.8,
        target_movement_modifier_to = 1,
    },
    {
        type = "sticker",
        name = "blood-donation-2",
        duration_in_ticks = 60 * 90,
        target_movement_modifier_from = 0.5,
        target_movement_modifier_to = 1,
    },
    {
        type = "sticker",
        name = "blood-donation-3",
        duration_in_ticks = 60 * 7,
        target_movement_modifier = 0
    },
    {
        type = "sticker",
        name = "blood-donation-4",
        duration_in_ticks = 60 * 80,
        target_movement_modifier = -1
    },
    {
        type = "sticker",
        name = "blood-donation-5",
        duration_in_ticks = 60 * 45,
        target_movement_modifier = 0
    },
}
