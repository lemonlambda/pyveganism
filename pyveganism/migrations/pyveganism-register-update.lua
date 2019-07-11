if not global.registered_machines then
    for _, surface in pairs(game.surfaces) do
        for _, entity in pairs(surface.find_entities_filtered {name = {"pyveganism-beacon-cultivation-expertise", "pyveganism-beacon-plant-breeding"}}) do
            entity.destroy()
        end
    end

    init()
end
