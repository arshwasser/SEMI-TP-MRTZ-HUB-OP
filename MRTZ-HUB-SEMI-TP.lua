local Players = game:GetService("Players")
local player = Players.LocalPlayer

local KEY = "2370-1740-9402"

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "KeySystem"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 160)
frame.Position = UDim2.new(0.5, -150, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
frame.Active = true
frame.Draggable = true

Instance.new("UICorner", frame)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,30)
title.BackgroundTransparency = 1
title.Text = "ENTER KEY"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18

local box = Instance.new("TextBox", frame)
box.Size = UDim2.new(0.8,0,0,30)
box.Position = UDim2.new(0.1,0,0,50)
box.PlaceholderText = "Key hier eingeben..."
box.Text = ""
box.TextColor3 = Color3.new(1,1,1)
box.BackgroundColor3 = Color3.fromRGB(30,30,30)
box.Font = Enum.Font.Gotham

Instance.new("UICorner", box)

local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(0.6,0,0,30)
button.Position = UDim2.new(0.2,0,0,100)
button.Text = "VERIFY"
button.BackgroundColor3 = Color3.fromRGB(50,50,50)
button.TextColor3 = Color3.new(1,1,1)
button.Font = Enum.Font.GothamBold

Instance.new("UICorner", button)

local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1,0,0,20)
status.Position = UDim2.new(0,0,1,-20)
status.BackgroundTransparency = 1
status.Text = ""
status.TextColor3 = Color3.fromRGB(255,50,50)
status.Font = Enum.Font.Gotham
status.TextSize = 12

-- VERIFY
button.MouseButton1Click:Connect(function()
	if box.Text == KEY then
		status.Text = "Correct Key ✅"
		
		task.wait(0.5)
		gui:Destroy()

task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/qxk0Mu8F"))()
    end)
end)

task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/6FNegjkK"))()
    end)
end)

task.spawn(function()
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/bmwdMAvj"))()
    end)
end)

	else
		status.Text = "Wrong Key ❌"
	end
end)
