ENTITY {
    type = "beacon",
    name = "pyveganism-hidden-beacon",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    localised_name = {"item-description.pyv-hidden"},
    localised_description = {"item-description.pyv-hidden"},
    energy_usage = "10W",
    flags = {
        "hidden",
        "hide-alt-info",
        "not-blueprintable",
        "not-deconstructable",
        "not-on-map",
        "not-flammable",
        "not-repairable",
        "no-automated-item-removal",
        "no-automated-item-insertion"
    },
    animation = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1,
        line_length = 8,
        frame_count = 1
    },
    animation_shadow = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1,
        line_length = 8,
        frame_count = 1
    },
    energy_source = {
        type = "void"
    },
    base_picture = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1
    },
    supply_area_distance = 0,
    radius_visualisation_picture = {
        filename = "__pyveganism__/graphics/icons/empty.png",
        width = 1,
        height = 1
    },
    distribution_effectivity = 1,
    module_specification = {
        module_slots = 40
    },
    allowed_effects = {
        "consumption",
        "speed",
        "productivity",
        "pollution"
    },
    selection_box = nil,
    collision_box = nil
}

for i = 0, 15 do
    local strength = 2 ^ i
    if i == 15 then
        strength = strength - 1
    end

    ITEM {
        type = "module",
        name = "pyveganism-productivity-" .. i,
        localised_name = {"item-description.pyv-hidden"},
        localised_description = {"item-description.pyv-hidden"},
        icon = "__pyveganism__/graphics/technology/plant-breeding.png",
        icon_size = 128,
        flags = {"hidden", "hide-from-bonus-gui"},
        subgroup = "module",
        category = "productivity",
        tier = 0,
        stack_size = 1,
        effect = {productivity = {bonus = 0.01 * strength}},
        order = "a" .. string.format("%09d", strength)
    }

    ITEM {
        type = "module",
        name = "pyveganism-speed-" .. i,
        localised_name = {"item-description.pyv-hidden"},
        localised_description = {"item-description.pyv-hidden"},
        icon = "__pyveganism__/graphics/technology/plant-breeding.png",
        icon_size = 128,
        flags = {"hidden", "hide-from-bonus-gui"},
        subgroup = "module",
        category = "speed",
        tier = 0,
        stack_size = 1,
        effect = {speed = {bonus = 0.01 * strength}},
        order = "b" .. string.format("%09d", strength)
    }
end
