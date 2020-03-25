--feather-armor.lua
--author: WalleyMods

--A couple of different ways to copy objects, but if you want
--copy everything, use a deepcopy as such
local featherArmor = table.deepcopy(data.raw.armor["light-armor"])

--What the new prototype is referred to as
featherArmor.name = "feather-armor"

--Icon while in the player's inventory
featherArmor.icons = {
	{
		icon=featherArmor.icon,
		tint={r=0.5,g=0.5,b=0.5,a=0.3}
	}
}
--Specific to the armor prototype
featherArmor.resistances = { --pretty bad armor...¯\_(ツ)_/¯
	{
		type = "physical",
		decrease = 8,
		percent = 3
	}
}

--Copying recipe similarly to how we copied above
local recipe = table.deepcopy(data.raw.recipe["light-armor"])
recipe.enabled = true
recipe.name = "feather-armor"
recipe.ingredients = {{"iron-plate", 20}}
recipe.result = "feather-armor" -- Links recipe to object created above 

data:extend{featherArmor, recipe}