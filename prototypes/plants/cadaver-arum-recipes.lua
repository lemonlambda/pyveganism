RECIPE {
    type = "recipe",
    name = "grow-cadaver-arum",
    category = "arum",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "pure-sand", amount = 10},
        {type = "item", name = "py-fertilizer", amount = 4},
        {type = "item", name = "humus", amount = 20},
        {type = "fluid", name = "clean-water", amount = 300},
        {type = "fluid", name = "acidgas", amount = 100}
    },
    results = {
        {type = "item", name = "cadaver-arum-fruit", amount = 10},
        {type = "item", name = "plant-residues", amount = 5}
    },
    main_product = "cadaver-arum-fruit",
    icons = {
        {icon = "__pyveganism__/graphics/icons/grow-cadaver-arum.png"},
        {icon = "__pyveganism__/graphics/icons/grow.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-cadaver-arum",
    order = "aba"
}:add_unlock("basic-electronics")

RECIPE {
    type = "recipe",
    name = "render-cadaver-arum-fruit",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "cadaver-arum-fruit", amount = 12}
    },
    results = {
        {type = "item", name = "skin", amount = 14},
        {type = "item", name = "meat", amount = 5},
        {type = "fluid", name = "blood", amount = 22}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/cadaver-arum-fruit.png"},
        {icon = "__pyveganism__/graphics/icons/crack-open.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-cadaver-arum",
    order = "aaa"
}:add_unlock("basic-electronics")

RECIPE {
    type = "recipe",
    name = "extract-protein-cadaver-arum-fruit",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "cadaver-arum-fruit", amount = 10},
        {type = "fluid", name = "ethanol-solution", amount = 40}
    },
    results = {
        {type = "item", name = "protein", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/cadaver-arum-fruit.png"},
        {icon = "__pyveganism__/graphics/icons/refine.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-cadaver-arum",
    order = "aab"
}:add_unlock("basic-electronics")
