function SGS_ToolGemmingMenu()
	local title = "Gemming Table"
	local con_command = "sgs_gemtool"
	local recipes = SGS_StructureRecipes("gms_gemtable")
	table.SortByMember(recipes, "sortkey", true)

	SGS_RecipeMenu(title, recipes, con_command)
end

