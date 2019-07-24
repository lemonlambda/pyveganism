local string = require("__stdlib__/stdlib/utils/string")
local table = require("__stdlib__/stdlib/utils/table")

--[[
-- Registered Entities
]]--

--[[
    data structures for my pseudo object oriented approach

    global.registered_machines: table
        [lua_entity]: registered_entity

    global.tick_last_finished_research: uint

    registered_entity: table
        ["type"]: int/enum
        ["entity"]: lua_entity (of the machine)
        ["beacons"]: beacons_table
        ["recipe"]: recipe_name
        ["tick_last_refresh"]: tick of the last refresh

    beacons_table: table
        [tech_name]: lua_entity (of the beacon)

    relevant_machines: table
        [machine_name]: machine_details

    machine_details: table
        ["is_recipe_dependant"]: bool -- if the modules of this machine depend on the active recipe
        ["affecting_technologies"]: table -- with tech names as strings

]]--
local TYPE_BEACONED_MACHINE = 1
local TYPE_COMPOSTING_SILO = 2

--[[
-- Beaconed machine variables
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
    --and .researched always returns false
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
function register_beaconed_machine(entity)
    local beacons = create_all_beacons_for(entity)
    local recipe = get_active_recipe(entity)

    global.registered_machines[entity] = {
        type = TYPE_BEACONED_MACHINE,
        entity = entity,
        beacons = beacons,
        recipe = recipe,
        tick_last_refresh = game.tick
    }
end

function register_composting_silo(entity)
    global.registered_machines[entity] = {
        type = TYPE_COMPOSTING_SILO,
        entity = entity,
        tick_last_refresh = game.tick
    }
end

-- Removes the machine from the register and removes all it's beacons
function unregister_machine(registered_entity)
    if registered_entity.type == TYPE_BEACONED_MACHINE then
        remove_all_beacons_for(registered_entity)
    end
    global.registered_machines[registered_entity.entity] = nil
end

-- Eventhandler machine built
function on_entity_built(event)
    --https://forums.factorio.com/viewtopic.php?f=34&t=73331#p442695
    if event.created_entity then
        entity = event.created_entity
    elseif event.entity then
        entity = event.entity
    elseif event.destination then
        entity = event.destination
    else 
        return
    end

    if relevant_machines[entity.name] then
        register_beaconed_machine(entity)
    end
    if entity.name == "composting-silo" then
        register_composting_silo(entity)
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

function check_registered_beaconed_entity(registered_entity)
    local entity = registered_entity.entity
    local current_recipe = get_active_recipe(entity)
    local last_recipe = registered_entity.recipe

    if not (current_recipe == last_recipe) then
        registered_entity.recipe = current_recipe
        on_recipe_change(registered_entity)
    end

    if global.tick_last_finished_research > registered_entity.tick_last_refresh then
        refresh(registered_entity)
    end
end

function check_registered_composting_silo(registered_entity)

end

function check_registered_entity(registered_entity)
    local entity = registered_entity.entity

    if not entity.valid then
        unregister_machine(registered_entity)
        return
    end

    if registered_entity.type == TYPE_BEACONED_MACHINE then
        check_registered_beaconed_entity(registered_entity)
    end
    if registered_entity.type == TYPE_COMPOSTING_SILO then
        check_registered_composting_silo(registered_entity)
    end
end

global.max_checks = settings.global["pyveganism-checks-per-tick"].value * 10
-- Checks some entries for validity and custom events
function tick()
    local next = next
    local count = 0
    local register = global.registered_machines
    local index = global.last_index
    local current_entity

    if index and register[index] then
        current_entity = register[index]
    else
        index, current_entity = next(register, index)
    end

    while index and count < global.max_checks do
        check_registered_entity(current_entity)
        index, current_entity = next(register, index)
        count = count + 1
    end

    global.last_index = index
end

function on_suspected_recipe_change(event)
    local entity = event.entity
    if not entity then
        return
    end

    local registered_entity = global.registered_machines[entity]
    if global.registered_machines[entity] then
        check_registered_entity(registered_entity)
    end
end

function init()
    global.registered_machines = {}
    global.tick_last_finished_research = 0

    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered{name = table.keys(relevant_machines)}) do
            register_beaconed_machine(entity)
        end
    end
end

function settings_update(event)
    global.max_checks = settings.global["pyveganism-checks-per-tick"].value * 10
end

-- Set Eventhandlers
-- initialisation
script.on_init(init)

-- placement
script.on_event(defines.events.on_built_entity, on_entity_built)
script.on_event(defines.events.on_robot_built_entity, on_entity_built)
script.on_event(defines.events.on_entity_cloned, on_entity_built)
script.on_event(defines.events.script_raised_built, on_entity_built)
script.on_event(defines.events.script_raised_revive, on_entity_built)

-- removing
script.on_event(defines.events.on_player_mined_entity, on_entity_removed)
script.on_event(defines.events.on_robot_mined_entity, on_entity_removed)
script.on_event(defines.events.on_entity_died, on_entity_removed)

-- research finishes
script.on_event(defines.events.on_research_finished, on_research_finished)

-- maintenance routines
script.on_nth_tick(10, tick)
script.on_event(defines.events.on_runtime_mod_setting_changed, settings_update)

-- events that could mean a recipe change
script.on_event(defines.events.on_gui_closed, on_suspected_recipe_change)
script.on_event(defines.events.on_entity_settings_pasted, on_suspected_recipe_change)

--[[
-- Sample crafting effects
]]--

--[[
    global.blood_donations: table
        [player_name]: table (ticks as uint when the last donations occured)
]]--
function log_blood_donation(player_name)
    if not global.blood_donations then
        global.blood_donations = {}
    end
    if not global.blood_donations[player_name] then
        global.blood_donations[player_name] = {}
    end

    table.insert(global.blood_donations[player_name], game.tick)
end

function get_count_of_recent_blood_donations(player_name)
    local count = 0
    local current_tick = game.tick
    for index, tick in pairs(global.blood_donations[player_name]) do
        local time_past = current_tick - tick
        if time_past < 216000 then --216000 is 60 minutes (3600 seconds) at 60 ticks per second
            count = count + 1
        else
            global.blood_donations[player_name] = nil
        end
    end

    return count
end

function give_sticker_to(player, sticker_name)
    player.surface.create_entity{
        name = sticker_name, 
        position = player.position, 
        force = player.force, 
        target = player.character
    }
end

function execute_blood_donation_effects(player, donation_count)
    local player_entity = player.character
    if not player_entity or not player_entity.health then 
        return 
    end

    local damage = donation_count * 0.19 * player_entity.prototype.max_health
    player_entity.damage(damage, player_entity.force)

    for i = 1, math.min(donation_count, 5) do
        give_sticker_to(player, "blood-donation-" .. i)
    end
end

function on_blood_donation(player_index)
    local player = game.get_player(player_index)
    log_blood_donation(player.name)
    local count = get_count_of_recent_blood_donations(player.name)
    execute_blood_donation_effects(player, count)
end

function on_crafted_item(event)
    local recipe = event.recipe.name

    if recipe == "generate-engineer-blood" then
        on_blood_donation(event.player_index)
    end
end

script.on_event(defines.events.on_player_crafted_item, on_crafted_item)
