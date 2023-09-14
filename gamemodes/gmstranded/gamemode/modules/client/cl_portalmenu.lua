function SGS_PortalMenu( portal )
    SGS.portalmenu = vgui.Create("sgs_portalmenu")
    SGS.portalmenu:MakePopup()
    SGS.portalmenu:SetVisible(true)
end

local PANEL = {}

function PANEL:Init()
    local width = 250
    local height = 300

    self:SetSize(width, height)
    self:Center()

    self:DrawFrame()
end

function PANEL:DrawFrame()
    self:SetTitle("Portal Menu")
    local listview = vgui.Create("DListView", self)
    listview:Dock(FILL)
    listview:SetMultiSelect(false)
    listview:AddColumn("Gate Name")
    for id, gate in pairs(SGS.Gates) do
        local line = listview:AddLine(gate.Name)
        line.sgs_gate_id = id
    end

    local frame = self

    function listview:DoDoubleClick(line_id, line)
        frame:Close()
        RunConsoleCommand("sgs_portalto", line.sgs_gate_id)
    end
end

vgui.Register("sgs_portalmenu", PANEL, "DFrame")