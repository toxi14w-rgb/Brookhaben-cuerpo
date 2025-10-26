if game.PlaceId ~= 4924922222 then
    warn("⚠️ Este script solo funciona en Brookhaven 🏡RP")
    return
end

local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "CuerpoID_Brookhaven"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 350, 0, 420)
frame.Position = UDim2.new(0.5, -175, 0.5, -210)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Visible = true

local uiCorner = Instance.new("UICorner", frame)
uiCorner.CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "💀 Cuerpo ID Brookhaven"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
title.BorderSizePixel = 0

local closeBtn = Instance.new("TextButton", frame)
closeBtn.Text = "X"
closeBtn.Size = UDim2.new(0, 35, 0, 35)
closeBtn.Position = UDim2.new(1, -40, 0, 5)
closeBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
closeBtn.BackgroundTransparency = 1

local minimizeBtn = Instance.new("TextButton", frame)
minimizeBtn.Text = "-"
minimizeBtn.Size = UDim2.new(0, 35, 0, 35)
minimizeBtn.Position = UDim2.new(1, -80, 0, 5)
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.BackgroundTransparency = 1

local parts = {
    {name = "Cabeza", property = "Head"},
    {name = "Torso", property = "Torso"},
    {name = "Brazo Derecho", property = "RightArm"},
    {name = "Brazo Izquierdo", property = "LeftArm"},
    {name = "Pierna Derecha", property = "RightLeg"},
    {name = "Pierna Izquierda", property = "LeftLeg"},
}

local textBoxes = {}
for i, part in ipairs(parts) do
    local label = Instance.new("TextLabel", frame)
    label.Text = "ID " .. part.name .. ":"
    label.Size = UDim2.new(1, -20, 0, 25)
    label.Position = UDim2.new(0, 10, 0, 50 + (i - 1) * 60)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1
    label.TextXAlignment = Enum.TextXAlignment.Left

    local box = Instance.new("TextBox", frame)
    box.PlaceholderText = "Ej: 1234567890"
    box.Size = UDim2.new(1, -20, 0, 30)
    box.Position = UDim2.new(0, 10, 0, 75 + (i - 1) * 60)
    box.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.Font = Enum.Font.Gotham
    box.TextSize = 14
    local uiCorner2 = Instance.new("UICorner", box)
    uiCorner2.CornerRadius = UDim.new(0, 5)
    textBoxes[part.property] = box
end

local applyBtn = Instance.new("TextButton", frame)
applyBtn.Text = "✅ Aplicar cambios"
applyBtn.Size = UDim2.new(1, -
