RECIPE {
    type = "recipe",
    name = "enrichment-culture-morgenroete",
    category = "bio-reactor",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "urea-medium", amount = 50},
        {type = "item", name = "soil", amount = 5}
    },
    results = {
        {type = "fluid", name = "morgenroete", amount = 20}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/morgenroete.png"},
        {icon = "__pyveganism__/graphics/icons/enrichment-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-morgenroete",
    order = "aaa"
}:add_unlock("cultivation-expertise-2")

RECIPE {
    type = "recipe",
    name = "pure-culture-morgenroete",
    category = "bio-reactor",
    enabled = true,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "urea-medium", amount = 50},
        {type = "fluid", name = "morgenroete", amount = 50}
    },
    results = {
        {type = "fluid", name = "morgenroete", amount = 100}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/morgenroete.png"},
        {icon = "__pyveganism__/graphics/icons/pure-culture.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-morgenroete",
    order = "aba"
}:add_unlock("cultivation-expertise-2")

RECIPE {
    type = "recipe",
    name = "hunger-stress-morgenroete",
    category = "bio-reactor",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "morgenroete", amount = 200}
    },
    results = {
        {type = "item", name = "morgenroete-endospores", amount = 5}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/morgenroete.png"},
        {icon = "__pyveganism__/graphics/icons/time.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-morgenroete",
    order = "aca"
}:add_unlock("cultivation-expertise-2")
