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
    minable = {mining_time = 1, result = "composting-silo"},
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
        priority = "extra-high",
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