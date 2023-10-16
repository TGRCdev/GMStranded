function SGS_BrewingMenu()
	local title = "Alchemy Brewing Menu"
	local con_command = "sgs_brew"
	local recipes = SGS_StructureRecipes("gms_alchlab", true)

	SGS_RecipeMenu(title, recipes, con_command)
end