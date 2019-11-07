local formula = "(51.667)*L*(L+2)"

TECHNOLOGY {
    type = "technology",
    name = "pyveganism-biotechnology-1",
    icon = "__pyveganism__/graphics/technology/biotechnology.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"coal-processing-1"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.biotechnology"}
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
    name = "pyveganism-biotechnology-2",
    icon = "__pyveganism__/graphics/technology/biotechnology.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"pyveganism-biotechnology-1", "logistic-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.biotechnology"}
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
    name = "pyveganism-biotechnology-3",
    icon = "__pyveganism__/graphics/technology/biotechnology.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"pyveganism-biotechnology-2", "chemical-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.biotechnology"}
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
    name = "pyveganism-biotechnology-4",
    icon = "__pyveganism__/graphics/technology/biotechnology.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"pyveganism-biotechnology-3", "production-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.biotechnology"}
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
    name = "pyveganism-biotechnology-5",
    icon = "__pyveganism__/graphics/technology/biotechnology.png",
    icon_size = 128,
    order = "c-a",
    upgrade = true,
    prerequisites = {"pyveganism-biotechnology-4", "utility-science-pack"},
    effects = {
        {
            type = "nothing",
            effect_description = {"description.biotechnology"}
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
