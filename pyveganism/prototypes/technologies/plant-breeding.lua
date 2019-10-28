TECHNOLOGY {
    type = "technology",
    name = "plant-breeding-1",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"coal-processing-1"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
        }
    },
    unit = {
        count = 177,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "plant-breeding-2",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-1"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
        }
    },
    unit = {
        count = 531,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "plant-breeding-3",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-2"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
        }
    },
    unit = {
        count = 1062,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "plant-breeding-4",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-3"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
        }
    },
    unit = {
        count = 1770,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "plant-breeding-5",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-4"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
        }
    },
    unit = {
        count_formula = "88.5*L*(L+1)",
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 30
    },
    max_level = "infinite"
}

ENTITY {
    type = "beacon",
    name = "pyveganism-beacon-plant-breeding",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    energy_usage = "10W",
    flags = {
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
        module_slots = 65535
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

ITEM {
    type = "module",
    name = "pyveganism-module-plant-breeding",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    flags = {"hidden", "hide-from-bonus-gui"},
    subgroup = "module",
    category = "productivity",
    tier = 0,
    stack_size = 1,
    effect = {productivity = {bonus = 0.05}}
}
