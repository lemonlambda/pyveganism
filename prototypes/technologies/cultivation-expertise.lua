local formula = "38.5*L*(L+1)"

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
        count_formula = formula,
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
        count_formula = formula,
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
    prerequisites = {"cultivation-expertise-2", "logistic-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count_formula = formula,
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
        count_formula = formula,
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
    prerequisites = {"cultivation-expertise-4", "chemical-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count_formula = formula,
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
        count_formula = formula,
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
    prerequisites = {"cultivation-expertise-6", "production-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.cultivation-expertise"}
        }
    },
    unit = {
        count_formula = formula,
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
