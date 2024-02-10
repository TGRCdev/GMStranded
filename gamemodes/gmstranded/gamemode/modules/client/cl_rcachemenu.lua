function SGS_RCacheMenu()

	local cache = LocalPlayer():GetEyeTrace().Entity
	if not IsValid(cache) or not SGS.cache_entities[cache:GetClass()] then return end
	SGS.curcache = cache
	SGS.rcachemenu = vgui.Create( "sgs_rcachemenu" )
	SGS.rcachemenu:MakePopup()
	SGS.rcachemenu:SetVisible(true)

end

function SendCacheTakeRequest(items)
	local data = util.Compress( util.TableToJSON( items ) )
	net.Start( "cl_fromcache" )
		net.WriteUInt(#data, 32)
		net.WriteData(data)
	net.SendToServer()
end

function SendCacheStoreRequest(items)
	local data = util.Compress( util.TableToJSON( items ) )
	net.Start( "cl_tocache" )
		net.WriteUInt(#data, 32)
		net.WriteData(data)
	net.SendToServer()
end

--[[
Resource Cache Menu
]]--

local PANEL = {}

function PANEL:Init()

	local width = 650
	local height = 600
	
	self:SetSize( width, height )
	self:SetPos( ( ScrW() / 2 ) - ( width / 2 ), ( ( ScrH() / 2 ) - ( height / 2 ) ))
	self:SetVisible( false )
	
	self:DrawFrame()

end

function PANEL:Paint( w, h )

	draw.RoundedBoxEx( 8, 0, 0, 300, 600, Color( 80, 80, 80, 150 ), true, true, true, true )
	draw.RoundedBoxEx( 8, 350, 0, 300, 600, Color( 80, 80, 80, 150 ), true, true, true, true )
	draw.RoundedBoxEx( 8, 300, 260, 50, 80, Color( 80, 80, 80, 150 ), false, false, false, false )
	
	draw.RoundedBoxEx( 8, 4, 4, 292, 592 , Color( 0, 0, 0, 200 ), true, true, true, true )
	draw.RoundedBoxEx( 8, 354, 4, 292, 592 , Color( 0, 0, 0, 200 ), true, true, true, true )
	draw.RoundedBoxEx( 8, 296, 264, 58, 72 , Color( 0, 0, 0, 200 ), false, false, false, false )
	
end

function PANEL:DrawFrame()

	local RCacheTitle = vgui.Create("DLabel", self)
	RCacheTitle:SetPos(45,8) // Position
	RCacheTitle:SetColor(Color(255,255,50,255)) // Color
	RCacheTitle:SetFont("SGS_RCacheTitles")
	RCacheTitle:SetText("Resource Cache Inventory")
	RCacheTitle:SizeToContents()
	
	local RCacheLimitLabel = vgui.Create("DLabel", self)
	RCacheLimitLabel:SetPos( 12, 575 ) // Position
	RCacheLimitLabel:SetColor(Color(255,50,50,255)) // Color
	RCacheLimitLabel:SetFont("SGS_RCacheMenuText")
	
	local YourInventoryTitle = vgui.Create("DLabel", self)
	YourInventoryTitle:SetPos(445,8) // Position
	YourInventoryTitle:SetColor(Color(255,255,50,255)) // Color
	YourInventoryTitle:SetFont("SGS_RCacheTitles")
	YourInventoryTitle:SetText("Your Inventory")
	YourInventoryTitle:SizeToContents()
	
	local YourInventoryLimitLabel = vgui.Create("DLabel", self)
	YourInventoryLimitLabel:SetPos( 362, 575 ) // Position
	YourInventoryLimitLabel:SetColor(Color(255,50,50,255)) // Color
	YourInventoryLimitLabel:SetFont("SGS_RCacheMenuText")

	local CloseButton = vgui.Create( "DButton", self )
	CloseButton:SetSize( 16, 16 )
	CloseButton:SetPos( 620, 8 )
	CloseButton:SetText( "X" )
	CloseButton.DoClick = function( CloseButton )
		self:Remove()
	end
	
	local CacheInventory = vgui.Create( "DListView" )
	CacheInventory:SetParent( self )
	CacheInventory:SetPos( 8, 28 )
	CacheInventory:SetSize( 284, 550 )
	CacheInventory:SetMultiSelect( true )
	CacheInventory:AddColumn( "Resource Type" )
	CacheInventory:AddColumn( "Amount" )
	CacheInventory.DoDoubleClick = function( CacheInventory )
		local line = CacheInventory:GetLine(CacheInventory:GetSelectedLine())
		DClickTransfer(line:GetValue(1), line:GetValue(2))
	end
	
	local PlayerInventory = vgui.Create( "DListView" )
	PlayerInventory:SetParent( self )
	PlayerInventory:SetPos( 358, 28 )
	PlayerInventory:SetSize( 284, 550 )
	PlayerInventory:SetMultiSelect( true )
	PlayerInventory:AddColumn( "Resource Type" )
	PlayerInventory:AddColumn( "Amount" )
	PlayerInventory.DoDoubleClick = function( PlayerInventory )
		DClickTransfer2(PlayerInventory:GetLine(PlayerInventory:GetSelectedLine()):GetValue(1), PlayerInventory:GetLine(PlayerInventory:GetSelectedLine()):GetValue(2))
	end
	
	
	concommand.Add( "sgs_refreshrcachelist", function()
		if not IsValid( CacheInventory ) then return end
		CacheInventory:Clear()
		local rcachelimit = 0
		for k, v in SortedPairs( SGS.rcache ) do
			if v <= 0 then continue end
			CacheInventory:AddLine( k, v )
			rcachelimit = rcachelimit + v
		end

		local cache_type = SGS.cache_entities[SGS.curcache:GetClass()]

		RCacheLimitLabel:SetText(rcachelimit .. " / " .. cache_type.capacity)
		YourInventoryLimitLabel:SetText(tostring( SGS.curinv ) .. " / " .. tostring( SGS.maxinv ) ) // Text
		
		PlayerInventory:Clear()
		for k, v in SortedPairs( SGS.resources ) do
			if v <= 0 then continue end
			PlayerInventory:AddLine( k, v )
		end
	end )
	RunConsoleCommand( "sgs_refreshrcachelist" )
	
	local CachetoPlayerButton = vgui.Create( "DButton", self )
	CachetoPlayerButton:SetSize( 42, 28 )
	CachetoPlayerButton:SetPos( 304, 268 )
	CachetoPlayerButton:SetText( "-->>" )
	CachetoPlayerButton.DoClick = function( CachetoPlayerButton )
		local selected = CacheInventory:GetSelected()
		if #selected == 0 then return
		elseif #selected == 1 then
			SGS.temprType = CacheInventory:GetLine(CacheInventory:GetSelectedLine()):GetValue(1)
			SGS.temprAmt = CacheInventory:GetLine(CacheInventory:GetSelectedLine()):GetValue(2)
			SGS.cache_request = {}
			SGS.cache_request[SGS.temprType] = SGS.temprAmt
			SGS_RCacheMenuSmall2()
		else
			local request = {}
			for _, line in pairs(selected) do
				request[line:GetValue(1)] = tonumber(line:GetValue(2))
			end
			SendCacheTakeRequest(request)
		end
	end
	
	local PlayertoCacheButton = vgui.Create( "DButton", self )
	PlayertoCacheButton:SetSize( 42, 28 )
	PlayertoCacheButton:SetPos( 304, 304 )
	PlayertoCacheButton:SetText( "<<--" )
	PlayertoCacheButton.DoClick = function( PlayertoCacheButton )
		local selected = PlayerInventory:GetSelected()
		if #selected == 0 then return
		elseif #selected == 1 then
			SGS.temprType = PlayerInventory:GetLine(PlayerInventory:GetSelectedLine()):GetValue(1)
			SGS.temprAmt = PlayerInventory:GetLine(PlayerInventory:GetSelectedLine()):GetValue(2)
			SGS.cache_request = {}
			SGS.cache_request[SGS.temprType] = SGS.temprAmt
			SGS_RCacheMenuSmall()
		else
			local request = {}
			for _, line in pairs(selected) do
				request[line:GetValue(1)] = tonumber(line:GetValue(2))
			end
			SendCacheStoreRequest(request)
		end
	end
	
	
	

end
vgui.Register("sgs_rcachemenu", PANEL, "Panel")


function SGS_RCacheMenuSmall()

	SGS.rcachemenusmall = vgui.Create( "sgs_rcachemenusmall" )
	SGS.rcachemenusmall:MakePopup()
	SGS.rcachemenusmall:SetVisible(true)

end

local PANEL = {}
function PANEL:Init()

	local width = 140
	local height = 124
	
	self:SetSize( width, height )
	self:SetPos( ( ScrW() / 2 ) - ( width / 2 ), ( ( ScrH() / 2 ) - ( height / 2 ) ) )
	self:SetVisible( false )
	
	self:DrawFrame()

end

function PANEL:Paint()
	
	draw.RoundedBoxEx( 8, 0, 0, 140, 124, Color( 80, 80, 80, 255 ), true, true, true, true )
	draw.RoundedBoxEx( 8, 4, 4, 132, 116, Color( 0, 0, 0, 255 ), true, true, true, true )
	
end

function PANEL:Think()
	self:RequestFocus()
end

function PANEL:DrawFrame()

	local CloseButton = vgui.Create( "DButton", self )
	CloseButton:SetSize( 12, 12 )
	CloseButton:SetPos( 118, 8 )
	CloseButton:SetText( "X" )
	CloseButton.DoClick = function( CloseButton )
		self:Remove()
	end
	
	local PopupTitle = vgui.Create("DLabel", self)
	PopupTitle:SetPos(8,8) // Position
	PopupTitle:SetColor(Color(255,255,50,255)) // Color
	PopupTitle:SetFont("SGS_RCacheMenuText")
	PopupTitle:SetText("Amount to Transfer")
	PopupTitle:SizeToContents()
	
	local PopupTitleRes = vgui.Create("DLabel", self)
	PopupTitleRes:SetPos(8,24) // Position
	PopupTitleRes:SetColor(Color(255,80,80,255)) // Color
	PopupTitleRes:SetFont("SGS_RCacheMenuText")
	PopupTitleRes:SetText(CapAll((string.gsub(SGS.temprType, "_", " "))))
	PopupTitleRes:SizeToContents()
	
	local TextEntry = vgui.Create( "DTextEntry", self )
	TextEntry:SetWide( 120 )
	TextEntry:SetPos( 10, 44 )
	TextEntry:SetText( SGS.temprAmt )
	TextEntry:SetEditable( true )
	
	local TransferButton = vgui.Create( "DButton", self )
	TransferButton:SetSize( 120, 18 )
	TransferButton:SetPos( 10, 68 )
	TransferButton:SetText( "Transfer" )
	TransferButton.DoClick = function( TransferButton )
		local amt = TextEntry:GetInt()
		if amt then
			SGS.cache_request[SGS.temprType] = amt
			SendCacheStoreRequest( SGS.cache_request )
		end
		self:Remove()
	end
	
	local SetAllButton = vgui.Create( "DButton", self )
	SetAllButton:SetSize( 58, 18 )
	SetAllButton:SetPos( 10, 90 )
	SetAllButton:SetText( "Set All" )
	SetAllButton.DoClick = function( SetAllButton )
		TextEntry:SetText( SGS.temprAmt )
	end
	
	local SetOneButton = vgui.Create( "DButton", self )
	SetOneButton:SetSize( 58, 18 )
	SetOneButton:SetPos( 72, 90 )
	SetOneButton:SetText( "Set One" )
	SetOneButton.DoClick = function( SetOneButton )
		TextEntry:SetText( "1" )
	end
	

end
vgui.Register("sgs_rcachemenusmall", PANEL, "EditablePanel")



function DClickTransfer( rType, rAmt )
	local request = {}
	request[rType] = rAmt
	SendCacheTakeRequest( request )
end

function DClickTransfer2( rType, rAmt )
	local request = {}
	request[rType] = rAmt
	SendCacheStoreRequest( request )
end


function SGS_RCacheMenuSmall2()

	SGS.rcachemenusmall2 = vgui.Create( "sgs_rcachemenusmall2" )
	SGS.rcachemenusmall2:MakePopup()
	SGS.rcachemenusmall2:SetVisible(true)

end

local PANEL = {}
function PANEL:Init()

	local width = 140
	local height = 124
	
	self:SetSize( width, height )
	self:SetPos( ( ScrW() / 2 ) - ( width / 2 ), ( ( ScrH() / 2 ) - ( height / 2 ) ) )
	self:SetVisible( false )
	
	self:DrawFrame()

end

function PANEL:Paint()
	
	draw.RoundedBoxEx( 8, 0, 0, 140, 124, Color( 80, 80, 80, 255 ), true, true, true, true )
	draw.RoundedBoxEx( 8, 4, 4, 132, 116, Color( 0, 0, 0, 255 ), true, true, true, true )
	
end

function PANEL:Think()
	self:RequestFocus()
end

function PANEL:DrawFrame()

	local CloseButton = vgui.Create( "DButton", self )
	CloseButton:SetSize( 12, 12 )
	CloseButton:SetPos( 118, 8 )
	CloseButton:SetText( "X" )
	CloseButton.DoClick = function( CloseButton )
		self:Remove()
	end
	
	local PopupTitle = vgui.Create("DLabel", self)
	PopupTitle:SetPos(8,8) // Position
	PopupTitle:SetColor(Color(255,255,50,255)) // Color
	PopupTitle:SetFont("SGS_RCacheMenuText")
	PopupTitle:SetText("Amount to Transfer")
	PopupTitle:SizeToContents()
	
	local PopupTitleRes = vgui.Create("DLabel", self)
	PopupTitleRes:SetPos(8,24) // Position
	PopupTitleRes:SetColor(Color(255,80,80,255)) // Color
	PopupTitleRes:SetFont("SGS_RCacheMenuText")
	PopupTitleRes:SetText(CapAll((string.gsub(SGS.temprType, "_", " "))))
	PopupTitleRes:SizeToContents()
	
	local TextEntry = vgui.Create( "DTextEntry", self )
	TextEntry:SetNumeric(true)
	TextEntry:SetWide( 120 )
	TextEntry:SetPos( 10, 44 )
	TextEntry:SetText( SGS.temprAmt )
	TextEntry:SetEditable( true )
	
	local TransferButton = vgui.Create( "DButton", self )
	TransferButton:SetSize( 120, 18 )
	TransferButton:SetPos( 10, 68 )
	TransferButton:SetText( "Transfer" )
	TransferButton.DoClick = function( TransferButton )
		local amt = TextEntry:GetInt()
		if amt then
			SGS.cache_request[SGS.temprType] = amt
			SendCacheTakeRequest( SGS.cache_request )
		end
		self:Remove()
	end
	
	local SetAllButton = vgui.Create( "DButton", self )
	SetAllButton:SetSize( 58, 18 )
	SetAllButton:SetPos( 10, 90 )
	SetAllButton:SetText( "Set All" )
	SetAllButton.DoClick = function( SetAllButton )
		TextEntry:SetText( SGS.temprAmt )
	end
	
	local SetOneButton = vgui.Create( "DButton", self )
	SetOneButton:SetSize( 58, 18 )
	SetOneButton:SetPos( 72, 90 )
	SetOneButton:SetText( "Set One" )
	SetOneButton.DoClick = function( SetOneButton )
		TextEntry:SetText( "1" )
	end
	

end
vgui.Register("sgs_rcachemenusmall2", PANEL, "EditablePanel")