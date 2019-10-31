local compostable_items = require("prototypes.composting-values")
local items_with_descriptions = {
    ["fawogae"] = true,
    ["ralesia"] = true,
    ["ralesia-seeds"] = true,
    ["organics"] = true,
    ["fawogae-substrate"] = true,
    ["bonemeal"] = true,
    ["guar"] = true
}

local function append_compostable_description(item_name, humus_count)
    local prototype = data.raw.item[item_name]
    if not prototype then --Item doesn't exist within the loaded mods
        return
    end
    -- Set the item description, because factorio only checks if there is any at a later stage
    -- Otherwise the original description would disappear
    if items_with_descriptions[item_name] then
        prototype.localised_description = {"item-description." .. item_name}
    end

    local appendix = {"item-description.compostable", humus_count}

    if prototype.localised_description then
        prototype.localised_description = {"", prototype.localised_description, "\n", appendix}
    elseif prototype.description then
        local description = prototype.description
        prototype.description = nil
        prototype.localised_description = {"", {description}, "\n", appendix}
    else
        prototype.localised_description = appendix
    end
end

for item_name, humus_count in pairs(compostable_items) do
    append_compostable_description(item_name, humus_count)
end
