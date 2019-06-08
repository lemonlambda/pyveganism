RECIPE("plankton-farm"):
    set_enabled():
    replace_ingredient("storage-tank", "py-tank-1500"):
    replace_ingredient("niobium-plate","iron-plate")
RECIPE("bio-reactor"):
    set_enabled():
    replace_ingredient("advanced-circuit", "electronic-circuit"):
    replace_ingredient("gasturbinemk02", "gasturbinemk01"):
    remove_ingredient("super-alloy"):
    remove_ingredient("mixer")
RECIPE("chemical-plant"):set_enabled()

--RECIPE("genlab"):set_enabled()
--RECIPE("mixer"):set_enabled()
