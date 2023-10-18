local PANEL = {}
SGS.hide_level = false
SGS.hide_resource = false

function PANEL:Init()
	self:ShowCloseButton(true)
	self:SetDraggable(false)
	self:SetSize( 320,370 )
	self:SetPos( ScrW() / 2 - 160, ScrH() / 2 - 170 )
	self:SetTitle( "Recipe Menu" )
	self:DrawFrame()
end

function PANEL:DrawFrame()
	local buttons = vgui.Create("DPanel", self)
	buttons:Dock(BOTTOM)
	buttons:SetPaintBackground(false)

	local levellock = vgui.Create("DButton", buttons)
	levellock:Dock(LEFT)
	if SGS.hide_level then
		levellock:SetText("Level Locked: Hide")
	else
		levellock:SetText("Level Locked: Show")
	end
	levellock:SetWide(120)
	levellock.DoClick = function()
		SGS.hide_level = not SGS.hide_level
		if SGS.hide_level then
			levellock:SetText("Level Locked: Hide")
		else
			levellock:SetText("Level Locked: Show")
		end
		self:RedrawRecipes()
	end

	local resourcelock = vgui.Create("DButton", buttons)
	resourcelock:Dock(RIGHT)
	if SGS.hide_resource then
		resourcelock:SetText("Resource Locked: Hide")
	else
		resourcelock:SetText("Resource Locked: Show")
	end
	resourcelock:SetWide(120)
	resourcelock.DoClick = function()
		SGS.hide_resource = not SGS.hide_resource
		if SGS.hide_resource then
			resourcelock:SetText("Resource Locked: Hide")
		else
			resourcelock:SetText("Resource Locked: Show")
		end
		self:RedrawRecipes()
	end

	self:RedrawRecipes()
end

function PANEL:RedrawRecipes()
	local recipes = SGS.recipemenu.recipes
	local con_command = SGS.recipemenu.con_command

	if self.CatList then self.CatList:Remove() end

	self.CatList = vgui.Create( "DPanelList", self)

	local CatList = self.CatList

	CatList:EnableVerticalScrollbar( true )
	CatList:EnableHorizontal( false )
	CatList:SetPadding( 3 )
	CatList:SetSpacing( 3 )
	CatList:Dock(FILL)

	local categories = {}
	for _, recipe in ipairs( recipes ) do
		
		if SGS.hide_level and not SGS_HasLevels(recipe.lvl_reqs) then continue end
		if SGS.hide_resource and (
			not SGS_HasResources(recipe.item_cost) or
			not SGS_HasTools(recipe.tool_cost)
		) then continue end

		if not categories[recipe.category] then
			local IconList = vgui.Create( "DIconLayout")
			local CollapseCat = vgui.Create( "DCollapsibleCategory" )
			CatList:AddItem(CollapseCat)

			CollapseCat:SetSize( 335, 50 )
			CollapseCat:SetExpanded( 1 )
			CollapseCat:SetLabel( Cap(recipe.category) )


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
			if not SGS_HasLevels(recipe.lvl_reqs) then
				draw.RoundedBoxEx( 2, 5, 5, 54, 20, Color(255, 80, 80, 150), false, false, false, false )
				draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 7, Color(0, 0, 0, 255), 0, 0)
				draw.SimpleText("SKILL", "proplisticons", 25, 15, Color(0, 0, 0, 255), 0, 0)
				icon.OnCursorEntered = function()
					return true
				end
			end
			if not SGS_HasResources(recipe.item_cost) or not SGS_HasTools(recipe.tool_cost) then
				draw.RoundedBoxEx( 2, 5, 39, 54, 20, Color(255, 255, 50, 150), false, false, false, false )
				draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 41, Color(0, 0, 0, 255), 0, 0)
				draw.SimpleText("RESOURCES", "proplisticons", 8, 49, Color(0, 0, 0, 255), 0, 0)
				icon.OnCursorEntered = function()
					return true
				end
			end
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