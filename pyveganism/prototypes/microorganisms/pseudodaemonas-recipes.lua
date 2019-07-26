RECIPE {
    type = "recipe",
    name = "blood-rocket-fuel",
    category = "crafting",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "blood-bag", amount = 1}, 
        {type = "item", name = "iron-plate", amount = 3}
    },
    results = {
        {type = "item", name = "rocket-fuel", amount = 30}
    },
    icons = {
        {icon = "__base__/graphics/icons/rocket-fuel.png"}
    },
    icon_size = 32,
    subgroup = "py-veganism-pseudodaemonas",
    order = "aaa"
}:add_unlock("rocket-fuel")
