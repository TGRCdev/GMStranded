function SGS_FirstAidMenu()

	SGS.aidmenu = vgui.Create( "DFrame" )
	SGS.aidmenu:ShowCloseButton(true)
	SGS.aidmenu:SetDraggable(false)
	SGS.aidmenu:SetSize( 320,340 )
	SGS.aidmenu:SetPos( ScrW() / 2 - 160, ScrH() / 2 - 170 )
	SGS.aidmenu:SetTitle( "Alchemy Menu" )

	local CatList = vgui.Create( "DPanelList", SGS.aidmenu)
	CatList:AddItem(ToolsCollapseCat)
	CatList:EnableVerticalScrollbar( true )
	CatList:EnableHorizontal( false )
	CatList:SetSize( 300, 300 )
	CatList:SetPos( 10, 30 )
	CatList:SetPadding( 4 )
	
	local IconList = vgui.Create( "DPanelList")
	local CollapseCat = vgui.Create( "DCollapsibleCategory" )
	CatList:AddItem(CollapseCat)
	
	CollapseCat:SetSize( 335, 50 )
	CollapseCat:SetExpanded( 1 )
	CollapseCat:SetLabel( "First Aid Items" )


	CollapseCat:SetContents( IconList )
	
	IconList:EnableVerticalScrollbar( true )
	IconList:EnableHorizontal( true )
	IconList:SetAutoSize( true )
	IconList:SetPadding( 4 )
	IconList:SetSpacing(5)
	
	for k2, v2 in pairs(SGS.Brewing["firstaid"]) do
		local icon = vgui.Create( "DImageButton", IconList )
		icon:SetMaterial( v2.material )
		icon:SetTooltip( SGS_ToolTip(v2) )
		icon:SetSize(64, 64)
		IconList:AddItem( icon )
		icon.PaintOver = function()
			for k3, v3 in pairs( v2.reqlvl ) do
				local plvl = SGS.levels[ k3 ] or 0
				if plvl < v3 then
					draw.RoundedBoxEx( 2, 5, 5, 54, 20, Color(255, 80, 80, 150), false, false, false, false )
					draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 7, Color(0, 0, 0, 255), 0, 0)
					draw.SimpleText("SKILL", "proplisticons", 25, 15, Color(0, 0, 0, 255), 0, 0)
					icon.OnCursorEntered = function()
						return true
					end
					break
				end
			end
			for k3, v3 in pairs( v2.cost ) do
				local pamt = SGS.resources[ k3 ] or 0
				if pamt < v3 then
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
		icon.DoClick = function ( icon ) 
			surface.PlaySound( "ui/buttonclickrelease.wav" )
			RunConsoleCommand("sgs_aidcraft", v2.mname)
			--SGS.aidmenu:SetVisible(false)
		end
	end
	SGS.aidmenu:MakePopup()
end

