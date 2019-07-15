-- unlocks all the recipes that I added since last version to existing techs
-- otherwise the player would have to run a console command as the factorio engine doesn't seem to do it by itself
for _, force in pairs(game.forces) do
    force.reset_recipes()
    force.reset_technologies()
    force.reset_technology_effects()
end
