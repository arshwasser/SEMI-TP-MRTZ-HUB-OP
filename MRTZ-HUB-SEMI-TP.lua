local Players = game:GetService("Players")
local player = Players.LocalPlayer

local KEY = "2370-1740-9402"

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "KeySystem"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 170)
frame.Position = UDim2.new(0.5, -150, 0.5, -85)
frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
frame.Active = true
frame.Draggable = true

Instance.new("UICorner", frame)

-- TITLE
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1,0,0,30)
title.BackgroundTransparency = 1
title.Text = "ENTER KEY"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18

-- INPUT
local box = Instance.new("TextBox", frame)
box.Size = UDim2.new(0.8,0,0,30)
box.Position = UDim2.new(0.1,0,0,50)
box.PlaceholderText = "Key hier eingeben..."
box.Text = ""
box.TextColor3 = Color3.new(1,1,1)
box.BackgroundColor3 = Color3.fromRGB(30,30,30)
box.Font = Enum.Font.Gotham
Instance.new("UICorner", box)

-- VERIFY BUTTON
local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(0.6,0,0,30)
button.Position = UDim2.new(0.2,0,0,100)
button.Text = "VERIFY"
button.BackgroundColor3 = Color3.fromRGB(50,50,50)
button.TextColor3 = Color3.new(1,1,1)
button.Font = Enum.Font.GothamBold
Instance.new("UICorner", button)

-- STATUS
local status = Instance.new("TextLabel", frame)
status.Size = UDim2.new(1,0,0,20)
status.Position = UDim2.new(0,0,1,-50)
status.BackgroundTransparency = 1
status.Text = ""
status.TextColor3 = Color3.fromRGB(255,50,50)
status.Font = Enum.Font.Gotham
status.TextSize = 12

-- DISCORD BUTTON
local discordBtn = Instance.new("TextButton", frame)
discordBtn.Size = UDim2.new(0.8,0,0,20)
discordBtn.Position = UDim2.new(0.1,0,1,-25)
discordBtn.BackgroundColor3 = Color3.fromRGB(35,35,35)
discordBtn.Text = "JOIN DISCORD"
discordBtn.TextColor3 = Color3.fromRGB(120,180,255)
discordBtn.Font = Enum.Font.GothamBold
discordBtn.TextSize = 12
Instance.new("UICorner", discordBtn)

local stroke = Instance.new("UIStroke", discordBtn)
stroke.Color = Color3.fromRGB(120,180,255)
stroke.Thickness = 1
stroke.Transparency = 0.5

-- FUNCTION: STATUS AUTO CLEAR (2s)
local function showStatus(text, color)
	status.Text = text
	status.TextColor3 = color or Color3.fromRGB(255,50,50)

	task.spawn(function()
		task.wait(2)
		if status.Text == text then
			status.Text = ""
		end
	end)
end

-- DISCORD CLICK
discordBtn.MouseButton1Click:Connect(function()
	if typeof(setclipboard) == "function" then
		setclipboard("https://discord.gg/vV4TBnjxds")
		showStatus("Discord Link Copied 📋", Color3.fromRGB(120,180,255))
	else
		showStatus("Copy nicht möglich ❌")
	end
end)

-- HOVER
discordBtn.MouseEnter:Connect(function()
	discordBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
	stroke.Transparency = 0
end)

discordBtn.MouseLeave:Connect(function()
	discordBtn.BackgroundColor3 = Color3.fromRGB(35,35,35)
	stroke.Transparency = 0.5
end)

-- VERIFY
button.MouseButton1Click:Connect(function()
	if box.Text == KEY then
		showStatus("Correct Key ✅", Color3.fromRGB(0,255,100))
		
		task.wait(0.5)
		gui:Destroy()

		task.spawn(function()
			pcall(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/qxk0Mu8F"))()
			end)
		end)

		task.wait(0.3)

		task.spawn(function()
			pcall(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/6FNegjkK"))()
			end)
		end)

		task.wait(0.3)

		task.spawn(function()
			pcall(function()
				loadstring(game:HttpGet("https://pastebin.com/raw/bmwdMAvj"))()
			end)
		end)

	else
		showStatus("Wrong Key ❌")
	end
end)
