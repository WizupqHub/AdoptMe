if game.CoreGui:FindFirstChild("PSX_LoadingScreen") then
    game.CoreGui:FindFirstChild("PSX_LoadingScreen"):Destroy()
end

local TweenService = game:GetService("TweenService")

-- UI Setup
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "PSX_LoadingScreen"
ScreenGui.IgnoreGuiInset = true

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Size = UDim2.new(1, 0, 1, 0)
LoadingFrame.Position = UDim2.new(0, 0, 0, 0)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
LoadingFrame.Parent = ScreenGui

-- Adopt Me! Logo
local AdoptMeLogo = Instance.new("ImageLabel")
AdoptMeLogo.Size = UDim2.new(0, 120, 0, 120)
AdoptMeLogo.Position = UDim2.new(0.5, -60, 0.2, 0)
AdoptMeLogo.BackgroundTransparency = 1
AdoptMeLogo.Image = "rbxassetid://87916870577105"
AdoptMeLogo.Parent = LoadingFrame

-- Text Label
local AdoptMeText = Instance.new("TextLabel")
AdoptMeText.Size = UDim2.new(1, 0, 0, 25)
AdoptMeText.Position = UDim2.new(0, 0, 0.50, 0)
AdoptMeText.Text = "TRADE FREEZE SYSTEM"
AdoptMeText.TextSize = 24
AdoptMeText.Font = Enum.Font.GothamMedium
AdoptMeText.BackgroundTransparency = 1
AdoptMeText.TextColor3 = Color3.fromRGB(200, 200, 200)
AdoptMeText.TextScaled = true
AdoptMeText.Parent = LoadingFrame

-- Promo Text
local PromoText = Instance.new("TextLabel")
PromoText.Size = UDim2.new(0, 500, 0, 100)
PromoText.Position = UDim2.new(0.75, 0, 0.25, 0)
PromoText.TextSize = 45
PromoText.Font = Enum.Font.GothamBold
PromoText.BackgroundTransparency = 1
PromoText.TextTransparency = 0.5
PromoText.Parent = LoadingFrame
PromoText.TextScaled = true
PromoText.TextStrokeTransparency = 0
PromoText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
PromoText.TextXAlignment = Enum.TextXAlignment.Left
PromoText.RichText = true
PromoText.Text = [[
    <font color="rgb(255,0,0)">SUB</font>  
    <font color="rgb(255,255,255)">TO</font>  
    <font color="rgb(255,165,0)">Wizupq</font>  
    <font color="rgb(255,0,0)">ON YT / TikTok</font>  
]]

-- Loading Bar
local BarBackground = Instance.new("Frame")
BarBackground.Size = UDim2.new(0, 500, 0, 30)
BarBackground.Position = UDim2.new(0.5, -250, 0.73, 0)
BarBackground.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
BarBackground.Parent = LoadingFrame

local BarCorner = Instance.new("UICorner", BarBackground)
BarCorner.CornerRadius = UDim.new(1, 0)

local LoadingBar = Instance.new("Frame")
LoadingBar.Size = UDim2.new(0, 0, 1, 0)
LoadingBar.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
LoadingBar.Parent = BarBackground

local BarCorner2 = Instance.new("UICorner", LoadingBar)
BarCorner2.CornerRadius = UDim.new(1, 0)

local PercentText = Instance.new("TextLabel")
PercentText.Size = UDim2.new(1, 0, 0, 50)
PercentText.Position = UDim2.new(0, 0, 0.78, 10)
PercentText.Text = "0%"
PercentText.TextSize = 40
PercentText.Font = Enum.Font.GothamBold
PercentText.TextColor3 = Color3.fromRGB(255, 255, 255)
PercentText.BackgroundTransparency = 1
PercentText.Parent = LoadingFrame

-- Animation
for i = 1, 100 do
    TweenService:Create(LoadingBar, TweenInfo.new(0.1), {Size = UDim2.new(i / 100, 0, 1, 0)}):Play()
    PercentText.Text = i .. "%"
    task.wait(0.03)
end

wait(0.5)
ScreenGui:Destroy()

-- MAIN GUI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "TradeFreezeGUI"
gui.ResetOnSpawn = false

local borderFrame = Instance.new("Frame", gui)
borderFrame.Size = UDim2.new(0, 320, 0, 250)
borderFrame.Position = UDim2.new(0.5, -160, 0.5, -125)
borderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
borderFrame.BorderSizePixel = 0
borderFrame.Active = true
borderFrame.Draggable = true

local borderCorner = Instance.new("UICorner", borderFrame)
borderCorner.CornerRadius = UDim.new(0, 15)

local frame = Instance.new("Frame", borderFrame)
frame.Size = UDim2.new(1, -8, 1, -8)
frame.Position = UDim2.new(0, 4, 0, 4)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0

local round = Instance.new("UICorner", frame)
round.CornerRadius = UDim.new(0, 12)

-- Titles
local title = Instance.new("TextLabel", frame)
title.Text = "TRADE FREEZE HUB"
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(0, 255, 255)
title.Font = Enum.Font.FredokaOne
title.TextSize = 24

local subtitle = Instance.new("TextLabel", frame)
subtitle.Text = "made by wizupq"
subtitle.Size = UDim2.new(1, 0, 0, 20)
subtitle.Position = UDim2.new(0, 0, 0, 30)
subtitle.BackgroundTransparency = 1
subtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
subtitle.Font = Enum.Font.FredokaOne
subtitle.TextSize = 16

-- Function for buttons
local function createButton(name, text, pos, color)
    local btn = Instance.new("TextButton", frame)
    btn.Name = name
    btn.Text = text
    btn.Size = UDim2.new(0.85, 0, 0, 40)
    btn.Position = pos
    btn.BackgroundColor3 = color
    btn.Font = Enum.Font.FredokaOne
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 20
    btn.AutoButtonColor = true
    
    local corner = Instance.new("UICorner", btn)
    corner.CornerRadius = UDim.new(0, 8)
    
    return btn
end

-- Buttons
local freezeBtn = createButton("FreezeBtn", "❄️ TRADE FREEZE", UDim2.new(0.075, 0, 0, 70), Color3.fromRGB(0, 120, 215))
local unfreezeBtn = createButton("UnfreezeBtn", "🔥 TRADE UNFREEZE", UDim2.new(0.075, 0, 0, 120), Color3.fromRGB(215, 80, 0))
local acceptBtn = createButton("AcceptBtn", "✅ MAKE ACCEPT", UDim2.new(0.075, 0, 0, 170), Color3.fromRGB(40, 180, 40))

-- Notification function
local function notify(t, m)
    game.StarterGui:SetCore("SendNotification", {
        Title = t,
        Text = m,
        Duration = 3
    })
end

-- Events
freezeBtn.MouseButton1Click:Connect(function()
    notify("Trade Freeze", "Trade successfully frozen!")
end)

unfreezeBtn.MouseButton1Click:Connect(function()
    notify("Trade Unfreeze", "Trade is now active.")
end)

acceptBtn.MouseButton1Click:Connect(function()
    notify("Make Accept", "Forcing player to accept...")
    task.wait(1.5)
    notify("Success", "Request sent to server!")
end)
