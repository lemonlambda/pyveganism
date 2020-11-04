data:extend {
	{
        type = "bool-setting",
        name = "pyveganism-hardcore-vegan",
        order = "aaa",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "pyveganism-hardcore-vegetarian",
        order = "aab",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "int-setting",
        name = "pyveganism-checks-per-tick",
        order = "aaa",
        setting_type = "runtime-global",
        default_value = 5,
        maximum_value = 2000,
        minimum_value = 1
    },
    {
        type = "bool-setting",
        name = "pyveganism-refresh-beacons-on-finished-research",
        order = "aab",
        setting_type = "runtime-global",
        default_value = false
    }
}
