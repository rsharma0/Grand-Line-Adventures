local Players = game:GetService("Players")
local function OnPlayerAdded(Client)
	local Part = script.pe:Clone()
	local Weld = Instance.new("WeldConstraint")
	if Client.Character then
		wait(0.5)
		Part.Position = Client.Character:FindFirstChild("Left Arm").Position
		Part.Orientation = Client.Character:FindFirstChild("Left Arm").Orientation
		Weld.Parent = Client.Character
		Part.Parent = game.Workspace
		Weld.Part0 = Client.Character:FindFirstChild("Left Arm")
		Weld.Part1 = Part
	else
		Client.CharacterAdded:Connect(function()
			wait(0.5)
			Part.Position = Client.Character:FindFirstChild("Left Arm").Position
			Part.Orientation = Client.Character:FindFirstChild("Left Arm").Orientation
			Weld.Parent = Client.Character
			Part.Parent = game.Workspace
			Weld.Part0 = Client.Character:FindFirstChild("Left Arm")
			Weld.Part1 = Part
		end)
	end
end

Players.PlayerAdded:Connect(OnPlayerAdded)
