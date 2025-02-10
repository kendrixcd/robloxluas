-- LocalScript under ScreenGui

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Function to create the GUI
local function createGUI()
	-- Check if GUI already exists and remove it before creating new one
	local existingGui = playerGui:FindFirstChild("CheatGUI")
	if existingGui then
		existingGui:Destroy()
	end

	-- Create the GUI container
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "CheatGUI"
	screenGui.Parent = playerGui
	screenGui.IgnoreGuiInset = true  -- To prevent GUI from being hidden by screen edges

	-- Background frame
	local background = Instance.new("Frame")
	background.Parent = screenGui
	background.Size = UDim2.new(0, 400, 0, 400)
	background.Position = UDim2.new(0.5, -200, 0.5, -200)
	background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	background.BackgroundTransparency = 0.5
	background.BorderSizePixel = 4
	background.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Title bar for dragging the GUI
	local titleBar = Instance.new("Frame")
	titleBar.Parent = background
	titleBar.Size = UDim2.new(1, 0, 0, 30)
	titleBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	titleBar.BorderSizePixel = 0

	-- Close Button (Q)
	local closeButton = Instance.new("TextButton")
	closeButton.Parent = background
	closeButton.Size = UDim2.new(0, 100, 0, 30)
	closeButton.Position = UDim2.new(1, -110, 0, 10)
	closeButton.Text = "CLOSE (Q)"
	closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)
	closeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	closeButton.Font = Enum.Font.GothamBold
	closeButton.TextSize = 18
	closeButton.BorderSizePixel = 2
	closeButton.BorderColor3 = Color3.fromRGB(255, 0, 0)

	-- Walk Speed Button
	local walkSpeedButton = Instance.new("TextButton")
	walkSpeedButton.Parent = background
	walkSpeedButton.Size = UDim2.new(0, 380, 0, 40)
	walkSpeedButton.Position = UDim2.new(0, 10, 0, 50)
	walkSpeedButton.Text = "Walk Speed: 16"
	walkSpeedButton.TextColor3 = Color3.fromRGB(0, 255, 0)
	walkSpeedButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	walkSpeedButton.Font = Enum.Font.GothamBold
	walkSpeedButton.TextSize = 18
	walkSpeedButton.BorderSizePixel = 2
	walkSpeedButton.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Input Field for WalkSpeed
	local walkSpeedInput = Instance.new("TextBox")
	walkSpeedInput.Parent = background
	walkSpeedInput.Size = UDim2.new(0, 380, 0, 40)
	walkSpeedInput.Position = UDim2.new(0, 10, 0, 100)
	walkSpeedInput.Text = "Enter WalkSpeed"
	walkSpeedInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	walkSpeedInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	walkSpeedInput.Font = Enum.Font.GothamBold
	walkSpeedInput.TextSize = 18
	walkSpeedInput.BorderSizePixel = 2
	walkSpeedInput.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Fly Button
	local flyButton = Instance.new("TextButton")
	flyButton.Parent = background
	flyButton.Size = UDim2.new(0, 380, 0, 40)
	flyButton.Position = UDim2.new(0, 10, 0, 150)
	flyButton.Text = "Fly Mode: NOT WORKING"
	flyButton.TextColor3 = Color3.fromRGB(0, 255, 0)
	flyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	flyButton.Font = Enum.Font.GothamBold
	flyButton.TextSize = 18
	flyButton.BorderSizePixel = 2
	flyButton.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Jump Power Button
	local jumpPowerButton = Instance.new("TextButton")
	jumpPowerButton.Parent = background
	jumpPowerButton.Size = UDim2.new(0, 380, 0, 40)
	jumpPowerButton.Position = UDim2.new(0, 10, 0, 200)
	jumpPowerButton.Text = "Jump Power: 50"
	jumpPowerButton.TextColor3 = Color3.fromRGB(0, 255, 0)
	jumpPowerButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	jumpPowerButton.Font = Enum.Font.GothamBold
	jumpPowerButton.TextSize = 18
	jumpPowerButton.BorderSizePixel = 2
	jumpPowerButton.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Input Field for JumpPower
	local jumpPowerInput = Instance.new("TextBox")
	jumpPowerInput.Parent = background
	jumpPowerInput.Size = UDim2.new(0, 380, 0, 40)
	jumpPowerInput.Position = UDim2.new(0, 10, 0, 250)
	jumpPowerInput.Text = "Enter JumpPower"
	jumpPowerInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	jumpPowerInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	jumpPowerInput.Font = Enum.Font.GothamBold
	jumpPowerInput.TextSize = 18
	jumpPowerInput.BorderSizePixel = 2
	jumpPowerInput.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Gravity Button
	local gravityButton = Instance.new("TextButton")
	gravityButton.Parent = background
	gravityButton.Size = UDim2.new(0, 380, 0, 40)
	gravityButton.Position = UDim2.new(0, 10, 0, 300)
	gravityButton.Text = "Gravity: 196.2"
	gravityButton.TextColor3 = Color3.fromRGB(0, 255, 0)
	gravityButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	gravityButton.Font = Enum.Font.GothamBold
	gravityButton.TextSize = 18
	gravityButton.BorderSizePixel = 2
	gravityButton.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Input Field for Gravity
	local gravityInput = Instance.new("TextBox")
	gravityInput.Parent = background
	gravityInput.Size = UDim2.new(0, 380, 0, 40)
	gravityInput.Position = UDim2.new(0, 10, 0, 350)
	gravityInput.Text = "Enter Gravity"
	gravityInput.TextColor3 = Color3.fromRGB(255, 255, 255)
	gravityInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	gravityInput.Font = Enum.Font.GothamBold
	gravityInput.TextSize = 18
	gravityInput.BorderSizePixel = 2
	gravityInput.BorderColor3 = Color3.fromRGB(0, 255, 0)

	-- Variables for functionality
	local flyMode = false
	local defaultWalkSpeed = 16
	local defaultJumpPower = 50
	local defaultGravity = 196.2

	local walkSpeedValue = defaultWalkSpeed
	local jumpPowerValue = defaultJumpPower
	local gravityValue = defaultGravity

	-- Toggle Walk Speed Button
	walkSpeedButton.MouseButton1Click:Connect(function()
		walkSpeedValue = tonumber(walkSpeedInput.Text) or walkSpeedValue
		player.Character.Humanoid.WalkSpeed = walkSpeedValue
		walkSpeedButton.Text = "Walk Speed: " .. walkSpeedValue
	end)

	-- Fly Button Toggle (currently non-functional)
	flyButton.MouseButton1Click:Connect(function()
		flyButton.Text = "Fly Mode: NOT WORKING" -- Display that it's not working for now
	end)

	-- Toggle Jump Power Button
	jumpPowerButton.MouseButton1Click:Connect(function()
		jumpPowerValue = tonumber(jumpPowerInput.Text) or jumpPowerValue
		player.Character.Humanoid.JumpPower = jumpPowerValue
		jumpPowerButton.Text = "Jump Power: " .. jumpPowerValue
	end)

	-- Toggle Gravity Button
	gravityButton.MouseButton1Click:Connect(function()
		gravityValue = tonumber(gravityInput.Text) or gravityValue
		workspace.Gravity = gravityValue
		gravityButton.Text = "Gravity: " .. gravityValue
	end)

	-- Close GUI (Q key)
	local guiOpen = true

	-- Close Button Logic
	closeButton.MouseButton1Click:Connect(function()
		screenGui.Enabled = false
		guiOpen = false
	end)

	-- Open/Close GUI with Q key
	game:GetService("UserInputService").InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.Q then
			if guiOpen then
				screenGui.Enabled = false
			else
				screenGui.Enabled = true
			end
			guiOpen = not guiOpen
		end
	end)

	-- Make GUI draggable
	local dragging = false
	local dragInput, dragStart, dragPos

	local function updateDrag(input)
		local delta = input.Position - dragStart
		background.Position = UDim2.new(background.Position.X.Scale, delta.X, background.Position.Y.Scale, delta.Y)
	end

	-- Dragging functionality
	titleBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			dragInput = input
		end
	end)

	titleBar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging then
			updateDrag(input)
		end
	end)
end

-- Create the GUI when the player joins
createGUI()
