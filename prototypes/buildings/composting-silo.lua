-- << Composting silo >>
ITEM {
    type = "item",
    name = "composting-silo",
    icon = "__pyveganism__/graphics/icons/composting-silo.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aaa",
    place_result = "composting-silo",
    stack_size = 10
}

ENTITY {
    type = "container",
    name = "composting-silo",
    icon = "__pyveganism__/graphics/icons/composting-silo.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "composting-silo"},
    max_health = 300,
    corpse = "small-remnants",
    open_sound = {filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65},
    close_sound = {filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7},
    resistances = {
        {
            type = "fire",
            percent = 90
        }
    },
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3, -3}, {3, 3}},
    inventory_size = 64,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    picture = {
        filename = "__pyveganism__/graphics/entity/composting-silo-hr.png",
        priority = "high",
        width = 448,
        height = 448,
        scale = 0.5,
        shift = {0.5, -0.5}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = 9,
    enable_inventory_bar = false
}

-- << Composter >>
ITEM {
    type = "item",
    name = "pyv-composter",
    icon = "__pyveganism__/graphics/icons/pyv-composter.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "aab",
    place_result = "pyv-composter",
    stack_size = 10
}

ENTITY {
    type = "furnace",
    name = "pyv-composter",
    icon = "__pyveganism__/graphics/icons/pyv-composter.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "pyv-composter"},
    max_health = 250,
    corpse = "small-remnants",
    open_sound = {filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65},
    close_sound = {filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7},
    resistances = {
        {
            type = "fire",
            percent = 90
        }
    },
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    allowed_effects = {"speed"},
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    animation = {
        filename = "__pyveganism__/graphics/entity/composting-silo-hr.png",
        frame_count = 1,
        priority = "high",
        width = 448,
        height = 448,
        scale = 0.333,
        shift = {0.333, -0.333}
    },
    result_inventory_size = 2,
    source_inventory_size = 1,
    always_draw_idle_animation = true,
    crafting_speed = 1,
    crafting_categories = {"pyv-composter"},
    energy_usage = "10W",
    energy_source = {
        type = "void"
    }
}

-- << Humus >>
ITEM {
    type = "item",
    name = "humus",
    icon = "__pyveganism__/graphics/icons/humus.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-veganism-biomass",
    order = "caa",
    stack_size = 1000
}