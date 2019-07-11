local string = require("__stdlib__/stdlib/utils/string")
local table = require("__stdlib__/stdlib/utils/table")

--[[
    data structures for my pseudo object oriented approach

    global.registered_machines
        [lua_entity]: registered_entity

    global.registered_machines_count is int

    global.tick_last_finished_research

    registered_entity
        ["entity"]: lua_entity (of the machine)
        ["beacons"]: beacons_table
        ["recipe"]: recipe_name
        ["last_refresh"]: tick of the last refresh

    beacons_table
        [tech_name]: lua_entity (of the beacon)

    relevant_machines
        [machine_name]: machine_details

    machine_details
        ["is_recipe_dependant"]: bool -- if the modules of this machine depend on the active recipe
        ["affecting_technologies"]: table -- with tech names as strings

]]--

function lvl_name(technology, level)
    return technology.name .. "-" .. level
end

-- Returns the level for standard upgrade-based techs
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

-- All the technologies that need to create beacons at runtime
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

function is_recipe_dependant(technology)
    return technology.recipe_blacklist or technology.recipe_whitelist
end

function allowes_recipe(technology, recipe)
    if technology.recipe_blacklist then
        return not technology.recipe_blacklist[recipe]
    end

    if technology.recipe_whitelist then
        return technology.recipe_whitelist[recipe]
    end

    return true
end

function get_active_recipe(entity)
    if entity.get_recipe() then
        return entity.get_recipe().name
    else
        return ""
    end
end

-- Built relevant machines lookup table
-- it's supposed to have the machine name as key and a table with the required data as value
local relevant_machines = {}
for _, tech in pairs(technologies) do
    for machine, _ in pairs(tech.machines) do
        if not relevant_machines[machine] then
            relevant_machines[machine] = {
                is_recipe_dependant = false, 
                affecting_technologies = {}
            }
        end

        if is_recipe_dependant(tech) then
            relevant_machines[machine].is_recipe_dependant = true
        end
        table.insert(relevant_machines[machine].affecting_technologies, tech.name)
    end
end

-- The current number of modules for this entity for this technology
function current_module_count(entity, technology)
    if not (allowes_recipe(technology, get_active_recipe(entity))) then
        return 0
    end

    return technology:get_module_count(entity.force)
end

-- Creates and returns a beacon for the given entity and technology
function create_beacon_for(entity, technology)
    local beacon = entity.surface.create_entity{
        name = technology.beacon,
        position = entity.position,
        force = entity.force,
    }

    local module_count = current_module_count(entity, technology)

    if module_count > 0 then
        beacon.get_module_inventory().insert{
            name = technology.module,
            count = module_count
        }
    end

    return beacon
end

-- Creates all beacons for the given entity and returns a beacons_table of them
function create_all_beacons_for(entity)
    local created_beacons = {}

    for _, tech_name in pairs(relevant_machines[entity.name].affecting_technologies) do
        local technology = technologies[tech_name]
        local new_beacon = create_beacon_for(entity, technology)
        created_beacons[tech_name] = new_beacon
    end

    return created_beacons
end

function remove_all_beacons_for(registered_entity)
    for _, beacon in pairs(registered_entity.beacons) do
        beacon.destroy()
    end
    registered_entity.beacons = {}
end

function refresh(registered_entity)
    game.print("a refresh was called")
    for tech_name, beacon in pairs(registered_entity.beacons) do
        local technology = technologies[tech_name]
        local module_count = current_module_count(registered_entity.entity, technology)

        beacon.get_module_inventory().clear()
        if module_count > 0 then
            beacon.get_module_inventory().insert{
                name = technology.module, 
                count = module_count
            }
        end
    end
    registered_entity.tick_last_refresh = game.tick
end

-- Refreshes all beacons, calling it will likely cause a lag spike
function refresh_all_entries()
    for _, registered_entity in pairs(global.registered_machines) do
        refresh(registered_entity)
    end
end

-- Adds the machine to the register and creates all the needed beacons
function register_machine(entity)
    local beacons = create_all_beacons_for(entity)
    local recipe = get_active_recipe(entity)

    global.registered_machines[entity] = {
        entity = entity,
        beacons = beacons,
        recipe = recipe,
        tick_last_refresh = game.tick
    }
    global.registered_machines_count = global.registered_machines_count + 1
end

-- Removes the machine from the register and removes all it's beacons
function unregister_machine(registered_entity)
    remove_all_beacons_for(registered_entity)
    global.registered_machines[registered_entity.entity] = nil
    global.registered_machines_count = global.registered_machines_count - 1
end

-- Eventhandler machine built
function on_entity_built(event)
    local entity = event.created_entity

    if relevant_machines[entity.name] then
        register_machine(event.created_entity)
    end
end

-- Eventhandler machine removed
function on_entity_removed(event)
    if global.registered_machines[event.entity] then
        unregister_machine(global.registered_machines[event.entity])
    end
end

-- Eventhandler research
function on_research_finished(event)
    global.tick_last_finished_research = game.tick

    if settings.global["pyveganism-refresh-beacons-on-finished-research"].value then
        for _, tech in pairs(technologies) do
            if string.starts_with(event.research.name, tech.name) then
                refresh_all_entries()
                return
            end
        end
    end
end

-- Eventhandler recipe change (custom)
function on_recipe_change(registered_entity)
    if relevant_machines[registered_entity.entity.name].is_recipe_dependant then
        refresh(registered_entity)
    end
end

function check_registered_entity(registered_entity)
    local entity = registered_entity.entity

    if not entity.valid then
        unregister_machine(registered_entity)
        return
    end

    local current_recipe = get_active_recipe(entity)
    local last_recipe = registered_entity.recipe
    if not (current_recipe == last_recipe) then
        game.print("recipe change detected from " .. last_recipe .. " to " .. current_recipe)
        registered_entity.recipe = current_recipe
        on_recipe_change(registered_entity)
    end

    if global.tick_last_finished_research > registered_entity.tick_last_refresh then
        refresh(registered_entity)
    end
end

local max_checks = settings.global["pyveganism-checks-per-tick"].value
-- Checks some entries for validity and custom events
function tick(event)
    local next = next
    local count = 0
    local register = global.registered_machines
    local index = global.last_index
    local current_registry

    if index and register[index] then
        current_registry = register[index]
    else
        index, current_registry = next(register, index)
    end

    while index and count < max_checks do
        check_registered_entity(current_registry)
        index, current_registry = next(register, index)
        count = count + 1
    end

    global.last_index = index
end

function init()
    global.registered_machines = {}
    global.registered_machines_count = 0
    global.tick_last_finished_research = 0

    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered{name = table.keys(relevant_machines)}) do
            register_machine(entity)
        end
    end
end

function settings_update(event)
    max_checks = settings.global["pyveganism-checks-per-tick"].value
end

-- Set Eventhandlers
-- initialisation
script.on_init(init)

-- placement
script.on_event(defines.events.on_built_entity, on_entity_built)
script.on_event(defines.events.on_robot_built_entity, on_entity_built)

-- removing
script.on_event(defines.events.on_player_mined_entity, on_entity_removed)
script.on_event(defines.events.on_robot_mined_entity, on_entity_removed)
script.on_event(defines.events.on_entity_died, on_entity_removed)

-- research finishes
script.on_event(defines.events.on_research_finished, on_research_finished)

-- maintenance routines
script.on_event(defines.events.on_tick, tick)
script.on_event(defines.events.on_runtime_mod_setting_changed, settings_update)
