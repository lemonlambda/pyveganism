-- << Entity recipes >>
RECIPE {
    type = "recipe",
    name = "composting-silo",
    category = "crafting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "iron-plate", amount = 25},
        {type = "item", name = "soil", amount = 50},
        {type = "item", name = "stone-brick", amount = 50}
    },
    results = {
        {type = "item", name = "composting-silo", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/composting-silo.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aaa"
}

RECIPE {
    type = "recipe",
    name = "pyv-composter",
    category = "crafting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 8},
        {type = "item", name = "iron-plate", amount = 20},
        {type = "item", name = "soil", amount = 40},
        {type = "item", name = "stone-brick", amount = 40}
    },
    results = {
        {type = "item", name = "pyv-composter", amount = 1}
    },
    icons = {
        {icon = "__pyveganism__/graphics/icons/pyv-composter.png"}
    },
    icon_size = 64,
    subgroup = "py-veganism-biomass",
    order = "aab"
}

-- << Composting recipes >>
local compostable_items = require("prototypes.composting-values")

local function split_number(number)
    return math.floor(number), number - math.floor(number)
end

local item_types = {
    "item",
    "tool",
    "ammo",
    "armor",
    "blueprint-book",
    "blueprint",
    "capsule",
    "deconstruction-item",
    "gun",
    "item-with-entity-data",
    "item-with-inventory",
    "item-with-label",
    "item-with-tags",
    "mining-tool",
    "module",
    "rail-planner",
    "repair-tool",
    "selection-tool"
}

local function item_exists(item)
    for _, item_type in pairs(item_types) do
        if data.raw[item_type][item] then
            return true
        end
    end
    return false
end

local function create_composting_recipe(item, value)
    if not item_exists(item) then
        return
    end

    local before_comma, after_comma = split_number(value)

    local results_table = {}

    if before_comma > 0 then
        table.insert(results_table, {type = "item", name = "humus", amount = before_comma})
    end
    if after_comma > 0 then
        table.insert(results_table, {type = "item", name = "humus", amount = 1, probability = after_comma})
    end

    RECIPE {
        type = "recipe",
        name = "pyv-composter-" .. item,
        category = "pyv-composter",
        enabled = true,
        energy_required = 1,
        ingredients = {
            {type = "item", name = item, amount = 1}
        },
        results = results_table,
        main_product = "humus",
        subgroup = "py-veganism-composter",
        order = "aab",
        hidden = true
    }
end

for item, value in pairs(compostable_items) do
    create_composting_recipe(item, value)
end
