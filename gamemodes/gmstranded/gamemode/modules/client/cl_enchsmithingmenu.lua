function SGS_EnchantedSmithingMenu()

	local title = "Enchanted Workbench"
	local con_command = "sgs_smith"
	local recipes = SGS_StructureRecipes("gms_workbench2")
	table.SortByMember(recipes, "sortkey", true)

	SGS_RecipeMenu(title, recipes, con_command)
end