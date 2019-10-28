TECHNOLOGY {
    type = "technology",
    name = "cultivation-expertise-1",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"coal-processing-1"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count = 77,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cultivation-expertise-2",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"cultivation-expertise-1"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count = 231,
        ingredients = {
            {"automation-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cultivation-expertise-3",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"cultivation-expertise-2"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count = 462,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cultivation-expertise-4",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"cultivation-expertise-3"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count = 770,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
    }
}

TECHNOLOGY {
    type = "technology",
    name = "cultivation-expertise-5",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"cultivation-expertise-4"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count = 1155,
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
    name = "cultivation-expertise-6",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"cultivation-expertise-5"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count = 1617,
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
    name = "cultivation-expertise-7",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"cultivation-expertise-6"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count_formula = "38.5*L*(L+1)",
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 30
    },
    max_level = "infinite"
}

ENTITY {
    type = "beacon",
    name = "pyveganism-beacon-cultivation-expertise",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
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
    name = "pyveganism-module-cultivation-expertise",
    icon = "__pyveganism__/graphics/technology/cultivation-expertise.png",
    icon_size = 128,
    flags = {"hidden", "hide-from-bonus-gui"},
    subgroup = "module",
    category = "speed",
    tier = 0,
    stack_size = 1,
    effect = {speed = {bonus = 0.1}}
}
