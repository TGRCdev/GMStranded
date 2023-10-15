local PANEL = {}

function PANEL:Init()
	self:ShowCloseButton(true)
	self:SetDraggable(false)
	self:SetSize( 320,370 )
	self:SetPos( ScrW() / 2 - 160, ScrH() / 2 - 170 )
	self:SetTitle( "Recipe Menu" )

	self:DrawFrame()
end

function PANEL:DrawFrame()
	local recipes = SGS.recipemenu.recipes
	local con_command = SGS.recipemenu.con_command
	print("RECIPES:")
	PrintTable(recipes)

	local CatList = vgui.Create( "DPanelList", self)

	CatList:EnableVerticalScrollbar( true )
	CatList:EnableHorizontal( false )
	CatList:SetSize( 300, 330 )
	CatList:SetPos( 10, 30 )
	CatList:SetPadding( 3 )
	CatList:SetSpacing( 3 )

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
			for item, amount in pairs( recipe.item_cost or {} ) do
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
			-- TODO: Fix tool inventory and then add tool_cost to the insufficient resource check
		end
		icon.DoClick = function () 
			surface.PlaySound( "ui/buttonclickrelease.wav" )
			RunConsoleCommand(con_command, recipe.id)
		end
	end
end

vgui.Register("sgs_recipemenu", PANEL, "DFrame")

function SGS_RecipeMenu(title, recipes, con_command)
	SGS.recipemenu = {}
	SGS.recipemenu.recipes = recipes
	SGS.recipemenu.con_command = con_command
	SGS.recipemenu.panel = vgui.Create("sgs_recipemenu")
	SGS.recipemenu.panel:SetTitle(title)
	SGS.recipemenu.panel:MakePopup()
end