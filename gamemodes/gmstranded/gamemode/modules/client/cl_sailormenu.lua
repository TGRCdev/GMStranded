SGS.sailor_stockleft = SGS.sailor_stockleft or {}
SGS.sailor_stock = SGS.sailor_stock or {}
local PANEL = {}

function PANEL:Init()
    local width = 700
    local height = 450

    self:SetSize(width, height)
    self:Center()

    self:DrawFrame()
end

function SGS_SailorStockRemaining(category, item_id)
    if SGS.sailor_stockleft[category] and SGS.sailor_stockleft[category][item_id] then
        return SGS.sailor_stockleft[category][item_id]
    elseif SGS.sailor_stock[category] and SGS.sailor_stock[category][item_id] then
        return SGS.sailor_stock[category][item_id].amt
    else
        return 0
    end
end

function SGS_SailorStockPurchased(category, item_id)
    SGS.sailor_stockleft[category] = SGS.sailor_stockleft[category] or {}
    
    if not SGS.sailor_stockleft[category][item_id] then
        SGS.sailor_stockleft[category][item_id] = SGS.sailor_stock[category][item_id].amt - 1
    else
        SGS.sailor_stockleft[category][item_id] = SGS.sailor_stockleft[category][item_id] - 1
    end
end

function PANEL:DrawFrame()
    self:SetTitle("Sailors")

    local left = vgui.Create("DPanel", self)
    left:SetPaintBackground(false)
    left:SetWide(200)
    left:Dock(LEFT)

    local divider = vgui.Create("Panel", self)
    divider:SetWide(5)
    divider:Dock(LEFT)

    local sailor = vgui.Create("Panel", left)
    sailor:Dock(TOP)
    sailor:SetTall(75)

    local face = vgui.Create("DModelPanel", sailor)
    face:SetModel("models/humans/group01/male_04.mdl")
    face:Dock(LEFT)
    function face:LayoutEntity(ent) return end -- Disable camera rotation
    local headpos = face.Entity:GetBonePosition(face.Entity:LookupBone("ValveBiped.Bip01_Head1"))
    face:SetLookAt(headpos)
    face:SetCamPos(headpos - Vector(-15,7,0))
    face.Entity:SetEyeTarget(face:GetCamPos())
    --face.Entity:SetSequence(0)
    face:SetAnimated(true)

    local name = vgui.Create("DLabel", sailor)
    name:Dock(FILL)
    name:SetTextColor(Color(210,210,0,255))
    name:SetFont("DermaLarge")
    self._name = name
    function PANEL:SetName(newname)
        self._name:SetText("Sailor " .. newname)
    end

    local speechbg = vgui.Create("DPanel", left)
    speechbg:Dock(FILL)
    speechbg:DockPadding(5,5,5,5)
    local speech = vgui.Create("DLabel", speechbg)
    speech:SetFont("CloseCaption_Normal")
    speech:Dock(FILL)
    speech:SetTextColor(Color(0,0,0,255))
    speech:SetWrap(true)
    
    local tabs = vgui.Create("DPropertySheet", self)
    tabs:Dock(FILL)

    local shop = vgui.Create("DCategoryList", tabs, "Sailor Shop")
    shop.ask = "We've found plenty of loot travelling these seas. If you've got coin, feel free to browse our wares!"
    
    shop:SetBackgroundColor(Color(0,0,0,0))
    
    tabs:AddSheet("Shop", shop, "icon16/basket.png")
    for category, items in pairs(SGS.sailor_stock) do
        local cat_panel = shop:Add(Cap(category))
        local item_list = vgui.Create("DIconLayout")
        item_list:SetBorder(4)
        item_list:SetSpaceX(4)
        item_list:SetSpaceY(4)

        for item_id, item in pairs(items) do
            local item_panel = vgui.Create("DImageButton", item_list)
            item_panel:SetImage(item.material)
            item_panel:SetTooltip(SGS_ToolTipShop(item))
            item_panel:SetSize(64,64)
            function item_panel:PaintOver()
                local stock_left = SGS_SailorStockRemaining(category, item_id)
                local color = Color(255,255,255,255)
                if stock_left <= 0 then
                    color = Color(255,0,0,255)
				end
                draw.SimpleTextOutlined(tostring(stock_left) .. "/" .. tostring(item.amt), "DermaDefault", 9, 9, color, 0, 0, 2, Color(0,0,0,255))
                /*
                if stock_left > 0 then
                    draw.SimpleText(tostring(stock_left) .. "/" .. tostring(item.amt), "DermaDefault", 9, 9)
                else
                    draw.RoundedBoxEx( 2, 5, 5, 54, 20, Color(255, 80, 80, 150), false, false, false, false )
                    draw.SimpleText("OUT OF STOCK", "proplisticons", 11, 11, Color(0, 0, 0, 255), 0, 0)
                    --draw.SimpleText("STOCK", "proplisticons", 25, 15, Color(0, 0, 0, 255), 0, 0)
                    function self:OnCursorEntered()
                        return true
                    end -- function()
				end -- if then
                */
                if SGS.gtokens < item.cost then
                    draw.RoundedBoxEx( 2, 5, 39, 54, 20, Color(255, 255, 50, 150), false, false, false, false )
                    draw.SimpleText("INSUFFICIENT", "proplisticons", 7, 41, Color(0, 0, 0, 255), 0, 0)
                    draw.SimpleText("GTOKENS", "proplisticons", 8, 49, Color(0, 0, 0, 255), 0, 0)
                    function self:OnCursorEntered()
                        return true
                    end -- function()
                end -- if then
			end -- function()
            function item_panel:DoClick(icon)
                surface.PlaySound( "ui/buttonclickrelease.wav" )
				RunConsoleCommand("sgs_sailor_purchase", category, item_id)
            end -- function()
        end -- for do

        cat_panel:SetContents(item_list)
        --item_list:Layout()
        --item_list:InvalidateLayout(true)

    end -- for do

    shop:InvalidateLayout(true)

    local tradetab = vgui.Create("DListLayout", tabs, "Sailor Requisitions")
    tradetab.ask = "These seas are rough, and keeping our bucket of bolts floating is no small task. If you're lookin' for something to bump your levels, check our requisitions and see if anything catches your eye!"
    tabs:AddSheet("Requisitions", tradetab, "icon16/arrow_switch.png")

    function tabs:OnActiveTabChanged(old, new)
        speech:SetText(new:GetPanel().ask)
    end

    speech:SetText(tabs:GetActiveTab():GetPanel().ask)
end

net.Receive("sgs_sailor_purchase_complete", function()
    local category = net.ReadString()
    local item_id = net.ReadString()

    SGS_SailorStockPurchased(category, item_id)
end)


vgui.Register("sgs_sailormenu", PANEL, "DFrame")

function SGS_SailorMenu(sailor)
    SGS.sailormenu = vgui.Create("sgs_sailormenu")
    SGS.sailormenu:SetName(sailor:GetNWString("Name", "Null"))
    SGS.sailormenu:MakePopup()
    SGS.sailormenu:SetVisible(true)
end

net.Receive("sgs_sailormenu", function()
    local sailor = net.ReadEntity()

    local len = net.ReadUInt(32)
    local json = util.Decompress(net.ReadData(len))
    local stocks = util.JSONToTable(json)

    SGS.sailor_stock = stocks

    SGS_SailorMenu(sailor)
end)

net.Receive("sgs_endsailors", function()
    if IsValid(SGS.sailormenu) then
        SGS.sailormenu:Close()
    end
    SGS.sailor_stockleft = {}
end)

net.Receive("sgs_sailor_syncstockleft", function()
    local len = net.ReadUInt(32)
    SGS.sailor_stockleft = util.JSONToTable(util.Decompress(net.ReadData(len)))
end)