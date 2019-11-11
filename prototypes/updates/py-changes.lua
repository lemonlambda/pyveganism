local recipe_plankton_farm = RECIPE("plankton-farm")
recipe_plankton_farm:set_enabled()
recipe_plankton_farm:replace_ingredient("storage-tank", "py-tank-1500")
recipe_plankton_farm:replace_ingredient("niobium-plate", "iron-plate")

local recipe_bio_reactor = RECIPE("bio-reactor")
recipe_bio_reactor:set_enabled()
recipe_bio_reactor:replace_ingredient("advanced-circuit", "electronic-circuit")
recipe_bio_reactor:replace_ingredient("gasturbinemk02", "gasturbinemk01")
recipe_bio_reactor:remove_ingredient("super-alloy")
recipe_bio_reactor:remove_ingredient("mixer")

RECIPE("chemical-plant"):set_enabled()
RECIPE("mixer"):set_enabled()
--RECIPE("genlab"):set_enabled()

RECIPE("fawogae").hidden = false
data.raw["assembling-machine"]["fawogae-plantation"].fixed_recipe = nil

if mods["pyhightech"] then
    -- remove those weird effect restrictions to allow my techs to work
    data.raw["assembling-machine"]["moondrop-greenhouse-mk01"].allowed_effects = {"speed", "productivity"}
    data.raw["assembling-machine"]["moondrop-greenhouse-mk02"].allowed_effects = {"speed", "productivity"}
    data.raw["assembling-machine"]["moondrop-greenhouse-mk03"].allowed_effects = {"speed", "productivity"}
    data.raw["assembling-machine"]["moondrop-greenhouse-mk04"].allowed_effects = {"speed", "productivity"}

    data.raw["assembling-machine"]["cadaveric-arum-mk01"].allowed_effects = {"speed", "productivity"}
    data.raw["assembling-machine"]["cadaveric-arum-mk02"].allowed_effects = {"speed", "productivity"}
    data.raw["assembling-machine"]["cadaveric-arum-mk03"].allowed_effects = {"speed", "productivity"}
    data.raw["assembling-machine"]["cadaveric-arum-mk04"].allowed_effects = {"speed", "productivity"}
end

-- Add more pipe connections to the bio reactor, so that it can have recipe with up to 4 fluid in-/outputs
data.raw["assembling-machine"]["bio-reactor"]["fluid_boxes"] = {
    --North
    {
        production_type = "output",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_level = 1,
        pipe_connections = {{type = "output", position = {1.0, -4.0}}},
        priority = "extra-high"
    },
    --North2
    {
        production_type = "output",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_level = 1,
        pipe_connections = {{type = "output", position = {2.0, -4.0}}},
        priority = "extra-high"
    },
    --North3
    {
        production_type = "output",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_level = 1,
        pipe_connections = {{type = "output", position = {-1.0, -4.0}}},
        priority = "extra-high"
    },
    --North4
    {
        production_type = "output",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_level = 1,
        pipe_connections = {{type = "output", position = {-2.0, -4.0}}},
        priority = "extra-high"
    },
    --South
    {
        production_type = "input",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {1.0, 4.0}}},
        priority = "extra-high"
    },
    --South2
    {
        production_type = "input",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {2.0, 4.0}}},
        priority = "extra-high"
    },
    --South3
    {
        production_type = "input",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-1.0, 4.0}}},
        priority = "extra-high"
    },
    --South4
    {
        production_type = "input",
        pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
        pipe_covers = DATA.Pipes.covers(true, true, true, true),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{type = "input", position = {-2.0, 4.0}}},
        priority = "extra-high"
    },
    off_when_no_fluid_recipe = true
}
