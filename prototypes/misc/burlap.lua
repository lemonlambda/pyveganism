TECHNOLOGY{
    type = "techonolgy",
    name = "fiber-refining",
    icon = "__pyalienlifegraphics__/graphics/icons/fiber.png",
    icon_size = 64,
    unit = {
        count = 45,
        time = 30.0,
        ingredients = {
            {"automation-science-pack", 1}
        },
    },
}:add_prereq("wood-processing"):add_prereq("fluid-pressurization")

ITEM {
    type = "item",
    name = "sack",
    icon = "__pyveganism__/graphics/icons/burlap-sack.png",
    icon_size = 64,
    enabled = false,
    stack_size = 20,
}

ITEM {
    type = "item",
    name = "string",
    icon = "__pyveganism__/graphics/icons/string.png",
    icon_size = 64,
    enabled = false,
    stack_size = 200,
}

ITEM {
    type = "item",
    name = "needle",
    icon = "__pyveganism__/graphics/icons/needle.png",
    icon_size = 64,
    enabled = false,
    stack_size = 20,
}

ITEM {
    type = "item",
    name = "burlap-cloth",
    icon = "__pyveganism__/graphics/icons/burlap-cloth.png",
    icon_size = 64,
    enabled = false,
    stack_size = 200,
}

ITEM {
    type = "item",
    name = "molten-iron-stick",
    icon = "__pyveganism__/graphics/icons/molten-iron-stick.png",
    icon_size = 64,
    enabled = false,
    stack_size = 200,
}

RECIPE{
    type = "recipe",
    name = "molten-iron-stick",
    category = "smelting",
    icon = "__pyveganism__/graphics/icons/molten-iron-stick.png",
    icon_size = 64,
    ingredients = {
        {
            type = "item",
            name = "iron-stick",
            amount = 1
        }
    },
    results = {
        {
            type = "item",
            name = "molten-iron-stick",
            amount = 1
        }
    },
    subgroup = "py-veganism-burlap",
    energy_required = 60,
}:add_unlock("fiber-refining")

RECIPE {
    type = "recipe",
    name = "needle",
    enabled = false,
    ingredients = {
        {
            type = "item",
            name = "molten-iron-stick",
            amount = 1,
        },
    },
    results = {
        {
            type = "item",
            name = "needle",
            amount = 1
        }
    },
    energy_required = 12,
    subgroup = "py-veganism-burlap",
}:add_unlock("fiber-refining")

RECIPE{
    type = "recipe",
    name = "sack",
    enabled = false,
    ingredients = {
        {
            type = "item",
            name = "burlap-cloth",
            amount = 20,
        },
        {
            type = "item",
            name = "string",
            amount = 3,
        }
    },
    results = {
        {
            type = "item",
            name = "sack",
            amount = 1
        },
    },
    subgroup = "py-veganism-burlap",
}:add_unlock("fiber-refining")

RECIPE{
    type = "recipe",
    name = "burlap-cloth",
    icon = "__pyveganism__/graphics/icons/burlap-cloth.png",
    icon_size = 64,
    enabled = false,
    ingredients = {
        {
            type = "item",
            name = "fiber",
            amount = 10
        },
        {
            type = "item",
            name = "needle",
            amount = 1,
        },
    },
    results = {
        {
            type = "item",
            name = "burlap-cloth",
            amount = 1
        },
        {
            type = "item",
            name = "needle",
            amount = 1,
            probability = 0.8,
        }
    },
    energy_required = 3.5,
    subgroup = "py-veganism-burlap",
}:add_unlock("fiber-refining")

RECIPE{
    type = "recipe",
    name = "string",
    icon = "__pyveganism__/graphics/icons/string.png",
    icon_size = 64,
    enabled = false,
    ingredients = {
        {
            type = "item",
            name = "fiber",
            amount = 50
        },
        {
            type = "item",
            name = "needle",
            amount = 1,
        },
    },
    results = {
        {
            type = "item",
            name = "string",
            amount = 1
        },
        {
            type = "item",
            name = "needle",
            amount = 1,
            probability = 0.8,
        }
    },
    energy_required = 6.2,
    subgroup = "py-veganism-burlap",
}:add_unlock("fiber-refining")

RECIPE("fiber"):remove_unlock("filtration"):add_unlock("fiber-refining")
