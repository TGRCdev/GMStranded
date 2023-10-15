function SGS_SmithingMenu()

	SGS.smithingmenu = vgui.Create( "DFrame" )
	SGS.smithingmenu:ShowCloseButton(true)
	SGS.smithingmenu:SetDraggable(false)
	SGS.smithingmenu:SetSize( 320,370 )
	SGS.smithingmenu:SetPos( ScrW() / 2 - 160, ScrH() / 2 - 170 )
	SGS.smithingmenu:SetTitle( "Crafting Menu" )

	local CatList = vgui.Create( "DPanelList", SGS.smithingmenu)

	CatList:EnableVerticalScrollbar( true )
	CatList:EnableHorizontal( false )
	CatList:SetSize( 300, 330 )
	CatList:SetPos( 10, 30 )
	CatList:SetPadding( 3 )
	CatList:SetSpacing( 3 )

	local recipes = SGS_StructureRecipes("gms_workbench")
	table.SortByMember(recipes, "sortkey", true)
	local categories = {}

	for _, recipe in ipairs( recipes ) do
		if not categories[recipe.category] then
			local IconList = vgui.Create( "DIconLayout")
			local CollapseCat = vgui.Create( "DCollapsibleCategory" )
			CatList:AddItem(CollapseCat)

			CollapseCat:SetSize( 335, 50 )
			CollapseCat:SetExpanded( 1 )
			CollapseCat:SetLabel( Cap(recipe.category) .. " Tools" )


			CollapseCat:SetContents( IconList )

			IconList:SetSpaceY( 4 )
			IconList:SetSpaceX( 4 )
			categories[recipe.category] = IconList
		end

		local IconList = categories[recipe.category]

		local icon = vgui.Create( "DImageButton", IconList )
		icon:SetMaterial( recipe.icon )
		icon:SetTooltip( SGS_RecipeToolTip(recipe) )
		icon:SetSize( 64, 64 )
		IconList:Add( icon )
		icon.PaintOver = function()
			for skill, level in pairs( recipe.lvl_reqs or {} ) do
				local plvl = SGS.levels[ skill ] or 0
				if plvl < level then
					draw.RoundedBoxEx( 2, 5, 5, 54, 20, Color(255, 80, 80, 150), false, false, false, false )
					draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 7, Color(0, 0, 0, 255), 0, 0)
					draw.SimpleText("SKILL", "proplisticons", 25, 15, Color(0, 0, 0, 255), 0, 0)
					icon.OnCursorEntered = function()
						return true
					end
					break
				end
			end
			local insuf_resources = false
			for item, amount in pairs( recipe.item_cost or {} ) do
				local pamt = SGS.resources[ item ] or 0
				if pamt < amount then
					draw.RoundedBoxEx( 2, 5, 39, 54, 20, Color(255, 255, 50, 150), false, false, false, false )
					draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 41, Color(0, 0, 0, 255), 0, 0)
					draw.SimpleText("RESOURCES", "proplisticons", 8, 49, Color(0, 0, 0, 255), 0, 0)
					icon.OnCursorEntered = function()
						return true
					end
					insuf_resources = true
					break
				end
			end
			if not insuf_resources then
				for tool, amount in pairs( recipe.tool_cost) do
					local pamt = SGS.resources[ item ] or 0
					if pamt < amount then
						draw.RoundedBoxEx( 2, 5, 39, 54, 20, Color(255, 255, 50, 150), false, false, false, false )
						draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 41, Color(0, 0, 0, 255), 0, 0)
						draw.SimpleText("RESOURCES", "proplisticons", 8, 49, Color(0, 0, 0, 255), 0, 0)
						icon.OnCursorEntered = function()
							return true
						end
						break
					end
				end
			end
		end
		icon.DoClick = function () 
			surface.PlaySound( "ui/buttonclickrelease.wav" )
			RunConsoleCommand("sgs_smith", recipe.id)
			--SGS.smithingmenu:SetVisible(false)
		end
	end
	SGS.smithingmenu:MakePopup()
end

