local formula = "88.5*L*(L+1)"

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
        count_formula = formula,
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
    prerequisites = {"plant-breeding-1", "logistic-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
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
    name = "plant-breeding-3",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-2", "chemical-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
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
    name = "plant-breeding-4",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-3", "production-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
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
    }
}

TECHNOLOGY {
    type = "technology",
    name = "plant-breeding-5",
    icon = "__pyveganism__/graphics/technology/plant-breeding.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"plant-breeding-4", "utility-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.plant-breeding"}
        }
    },
    unit = {
        count_formula = formula,
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
