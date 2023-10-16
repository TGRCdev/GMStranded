function SGS_SmeltingMenu()

	local title = "Smelting Menu"
	local con_command = "sgs_smelt"
	local recipes = SGS_StructureRecipes("gms_furnace", true)

	SGS_RecipeMenu(title, recipes, con_command)
end

