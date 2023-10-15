function SGS_SmithingMenu()
	local recipes = SGS_StructureRecipes("gms_workbench")
	table.SortByMember(recipes, "sortkey", true)
	local con_command = "sgs_smith"
	SGS_RecipeMenu("Workbench", recipes, con_command)
end

