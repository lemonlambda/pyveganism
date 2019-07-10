local string = require('__stdlib__/stdlib/utils/string')

function lvl_name(technology, level)
    return technology.name .. "-" .. level
end

--Returns the level for standard upgrade-based techs
function get_tech_level(technology, force)
    local level = 0
    while force.technologies[lvl_name(technology, level + 1)].researched do
        level = level + 1
    end

    --for some reason the level of the infinite technology always returns level + 1
    --and .researched returns always false
    if level == technology.max_finite_level then
        level = force.technologies[lvl_name(technology, (level + 1))].level - 1
    end

    return level
end

--All the technologies that need to create beacons at runtime
local technologies = {
    ["cultivation-expertise"] = {
        name = "cultivation-expertise",
        machines = {
            ["fawogae-plantation"] = true,
            ["fawogae-plantation-mk2"] = true,
            ["fawogae-plantation-mk3"] = true,
            ["fawogae-plantation-mk4"] = true,
            ["ralesia-plantation"] = true,
            ["botanical-nursery"] = true,
            ["botanical-nursery-mk2"] = true,
            ["botanical-nursery-mk3"] = true,
            ["botanical-nursery-mk4"] = true,
            ["cadaveric-arum"] = true,
            ["kicalk-plantation"] = true,
            ["guar-gum-plantation"] = true
        }, 
        module = "pyveganism-module-cultivation-expertise",
        beacon = "pyveganism-beacon-cultivation-expertise",
        max_finite_level = 6,
        get_module_count = get_tech_level
    }, 
    ["plant-breeding"] = {
        name = "plant-breeding",
        machines = {
            ["fawogae-plantation"] = true,
            ["fawogae-plantation-mk2"] = true,
            ["fawogae-plantation-mk3"] = true,
            ["fawogae-plantation-mk4"] = true,
            ["ralesia-plantation"] = true,
            ["botanical-nursery"] = true,
            ["botanical-nursery-mk2"] = true,
            ["botanical-nursery-mk3"] = true,
            ["botanical-nursery-mk4"] = true,
            ["cadaveric-arum"] = true,
            ["kicalk-plantation"] = true,
            ["guar-gum-plantation"] = true
        }, 
        recipe_blacklist = {
            ["grow-atztazzae"] = true,
            ["grow-atztazzae-ash"] = true,
            ["grow-atztazzae-fertilizer"] = true
        },
        module = "pyveganism-module-plant-breeding",
        beacon = "pyveganism-beacon-plant-breeding",
        max_finite_level = 4,
        get_module_count = get_tech_level
    }
}

local all_beacons = {}
for _, tech in pairs(technologies) do
    table.insert(all_beacons, tech.beacon)
end

-- The current number of researched technologies
function current_module_count(force, technology)
    return technology:get_module_count(force)
end

function create_beacon_for(entity, technology, module_count)
    local beacon = entity.surface.create_entity{
        name = technology.beacon,
        position = entity.position,
        force = entity.force,
    }

    if module_count == 0 then
        return
    end

    beacon.get_module_inventory().insert{
        name = technology.module,
        count = module_count
    }
end

function create_all_beacons_for(entity)
    for _, tech in pairs(technologies) do
        if tech.machines[entity.name] then
            create_beacon_for(entity, tech, current_module_count(entity.force, tech))
        end
    end
end

function remove_beacons_for(entity)
    local x = entity.position.x
    local y = entity.position.y
    for _, beacon in pairs(entity.surface.find_entities_filtered{name = all_beacons, area = {{x, y}, {x+1, y+1}}}) do
        beacon.destroy()
    end
end

function refresh_beacons(force, technology)
    local goal_count = current_module_count(force, technology)
    for _, surface in pairs(game.surfaces) do
        for _, beacon in pairs(surface.find_entities_filtered{name = technology.beacon, force = force}) do
            local current_count = beacon.get_module_inventory().get_item_count(technology.module)

            if current_count < goal_count then
                beacon.get_module_inventory().insert({name = technology.module, count = goal_count - current_count})
            elseif current_count > goal_count then
                -- It shouldn't be possible to have more modules than you're supposed to, but it happened
                -- a few times when I used cheats and it doesn't hurt to handle it.
                beacon.get_module_inventory().remove({name = technology.module, count = current_count - goal_count})
            end
        end
    end
end

function on_entity_built(event)
    local entity = event.created_entity

    for _, tech in pairs(technologies) do
        if tech.machines[entity.name] then
            local module_count = current_module_count(entity.force, tech)
            create_beacon_for(entity, tech, module_count)
        end
    end
end

function on_entity_removed(event)
    remove_beacons_for(event.entity)
end

function on_research_finished(event)
    for _, tech in pairs(technologies) do
        if string.starts_with(event.research.name, tech.name) then
            refresh_beacons(event.research.force, tech)
        end
    end
end

script.on_init(function()
    for _, surface in pairs(game.surfaces) do
        for _, tech in pairs(technologies) do
            local machines = {}
            for machine, _ in pairs(tech.machines) do
                table.insert(machines, machine)
            end

            for _, entity in pairs(surface.find_entities_filtered{name = machines}) do
                local count = current_module_count(entity.force, tech)
                create_beacon_for(entity, tech, count)
            end
        end
    end
end)

-- placement
script.on_event(defines.events.on_built_entity, on_entity_built)
script.on_event(defines.events.on_robot_built_entity, on_entity_built)

-- removing
script.on_event(defines.events.on_player_mined_entity, on_entity_removed)
script.on_event(defines.events.on_robot_mined_entity, on_entity_removed)
script.on_event(defines.events.on_entity_died, on_entity_removed)

-- research finishes
script.on_event(defines.events.on_research_finished, on_research_finished)

-- maintenance routine
script.on_nth_tick()
