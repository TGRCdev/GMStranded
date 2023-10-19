function SGS_ArcaneForgeMenu()

	local title = "Arcane Forging Menu"
	local con_command = "sgs_arcaneforge"
	local recipes = SGS_StructureRecipes("gms_arcaneforge", true)

	SGS_RecipeMenu(title, recipes, con_command)
end

