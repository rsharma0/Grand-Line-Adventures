RemoteEvent = script.Parent:WaitForChild("Haki")
local objColors = {}

RemoteEvent.OnServerEvent:Connect(function(Plr, Value) 

	if Value == "on" then 
		spawn(function() 
			local TweenService = game:GetService("TweenService")
			local Info = TweenInfo.new(
				.9, -- Length
				Enum.EasingStyle.Bounce, -- Easing Style
				Enum.EasingDirection.In, -- Easing Direction
				0, -- Times repeated
				true, -- Reverse
				0 -- Delay
			)
			local Goals =
				{
					Transparency = 0.3;
					Size = Vector3.new(1.252, 1.307, 1.252);
				}

		for i, v in pairs(Plr.Character:GetChildren())do
			if v:IsA("Tool") then
				poo = v.Handle.content:Clone()
				poo.Parent = v.Handle
				poo.Name = "poo"
					peee = v.Handle.content:Clone()
					peee.Parent = v.Handle
					peee.Name = "pee"
					game.Debris:AddItem(peee, 2.3) -- destroy it after 1 second
					for i, pee in
						pairs(peee:GetChildren()) do
						spawn(function()

							if pee:IsA('MeshPart') then
								pee.Transparency = 1
								pee.Material = "ForceField"
								pee.BrickColor = BrickColor.new("Magenta")
								pee.TextureID = "rbxassetid://5101923607"
								local tweene = TweenService:Create(pee,Info,Goals)

								tweene:Play()

							end
						end
						) end

				for i, pee in
						pairs(poo:GetChildren()) do
						spawn(function()

						if pee:IsA('MeshPart') then
						pee.Transparency = 1
						pee.BrickColor  = BrickColor.new("Really black")
						pee.Material = "Glass"
							for i = 1, 10 do -- we loop through the code 10x
								wait(.05) -- we wait
								pee.Transparency = pee.Transparency - 0.1
								
							end


							end
						end)
						for i, pee in
							pairs(v.Handle.content:GetChildren()) do
							pee.Transparency = 1
						end

						v.done.Value = true

					end

					end
			end
		end)
		spawn(function() -- this code is ran by itself
			local TweenService = game:GetService("TweenService")
			local Info = TweenInfo.new(
				.9, -- Length
				Enum.EasingStyle.Bounce, -- Easing Style
				Enum.EasingDirection.In, -- Easing Direction
				0, -- Times repeated
				true, -- Reverse
				0 -- Delay
			)
			local Goals =
				{
					Transparency = 0.3;
					Size = Vector3.new(1.252, 1.307, 1.252);
				}

				 toolAddedConnection = Plr.Character.ChildAdded:Connect(function(tool)
						if tool:IsA("Tool") and tool.done.Value == false then
					print("Started")
					poo = tool.Handle.content:Clone()
					poo.Parent = tool.Handle
					poo.Name = "poo"
					
					peee = tool.Handle.content:Clone()
					peee.Parent = tool.Handle
					peee.Name = "pee"
					game.Debris:AddItem(peee, 2.3) -- destroys


				for i, pee in
						pairs(peee:GetChildren()) do
						spawn(function()

							if pee:IsA('MeshPart') then
							pee.Transparency = 1
							pee.Material = "ForceField"
							pee.BrickColor = BrickColor.new("Magenta")
								pee.TextureID = "rbxassetid://5101923607"
								local tweene = TweenService:Create(pee,Info,Goals)

								tweene:Play()

							end
							end
						) end

				for i, pee in
					pairs(poo:GetChildren()) do
					spawn(function()

						if pee:IsA('MeshPart') then
							pee.Transparency = 1
							pee.BrickColor  = BrickColor.new("Really black")
							pee.Material = "Glass"
							for i = 1, 10 do -- we loop through the code 10x
								wait(.05) -- we wait
								pee.Transparency = pee.Transparency - 0.1
										end

									end

					end)
					end
					for i, pee in
						pairs(tool.Handle.content:GetChildren()) do
						pee.Transparency = 1
					end

							tool.done.Value = true


					end
			end
		)
		end)
			

	Haki = Instance.new("BoolValue",Plr.Character)
	Haki.Name = "BusoHaki"
	Haki.Value = true
	
	local folder = Instance.new("Folder", workspace)
	folder.Name = Plr.Name.." Haki"
	
	local Part = game.ReplicatedStorage.rightbuso:Clone()
	Part.Anchored = false
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new("CGA brown")
	Part.Material = "Neon"
	Part.CFrame = Plr.Character:FindFirstChild("Right Arm").CFrame
	Part.Parent = folder
	Part.Reflectance = 0
	local W = Instance.new("ManualWeld")
    W.Part0 = Part
	W.Part1 = Plr.Character:FindFirstChild("Right Arm")
	W.C0 = Part.CFrame:inverse() * Plr.Character:FindFirstChild("Right Arm").CFrame * CFrame.new(0, .45, 0)
    W.Parent = Part	

	


    

	
	local Part2 = game.ReplicatedStorage.leftbuso:Clone()
	Part2.Anchored = false
	Part2.CanCollide = false
	Part2.BrickColor = BrickColor.new("CGA brown")
	Part2.Material = "Neon"
	Part2.CFrame = Plr.Character:FindFirstChild("Left Arm").CFrame
	Part2.Parent = folder
	Part2.Reflectance = 0	
	local W = Instance.new("ManualWeld")
    W.Part0 = Part2
	W.Part1 = Plr.Character:FindFirstChild("Left Arm")
	W.C0 = Part2.CFrame:inverse() * Plr.Character:FindFirstChild("Left Arm").CFrame * CFrame.new(0, .45, 0)
    W.Parent = Part2
		
		local effectpart = game.ReplicatedStorage.rightbuso:Clone()
		effectpart.Anchored = false
		effectpart.CanCollide = false
		effectpart.CFrame = Plr.Character:FindFirstChild("Right Arm").CFrame
		effectpart.Parent = folder
		effectpart.Reflectance = 0
		effectpart.Transparency = 1
		local P = Instance.new("ManualWeld")
		P.Part0 = effectpart
		P.Part1 = Plr.Character:FindFirstChild("Right Arm")
		P.C0 = effectpart.CFrame:inverse() * Plr.Character:FindFirstChild("Right Arm").CFrame * CFrame.new(0, .45, 0)
		P.Parent = effectpart	
		
		local effectpart2 = game.ReplicatedStorage.leftbuso:Clone()
		effectpart2.Anchored = false
		effectpart2.CanCollide = false
		effectpart2.CFrame = Plr.Character:FindFirstChild("Left Arm").CFrame
		effectpart2.Parent = folder
		effectpart2.Reflectance = 0
		effectpart2.Transparency = 1
		local P2 = Instance.new("ManualWeld")
		P2.Part0 = effectpart2
		P2.Part1 = Plr.Character:FindFirstChild("Left Arm")
		P2.C0 = effectpart2.CFrame:inverse() * Plr.Character:FindFirstChild("Left Arm").CFrame * CFrame.new(0, .45, 0)
		P2.Parent = effectpart2
		spawn(function() 

		effectpart.Effect.Enabled = true
		effectpart2.Effect.Enabled = true
		effectpart.Effect1.Enabled = true
		effectpart2.Effect1.Enabled = true

		wait(0.5)
		effectpart.Effect.Enabled = false
		effectpart2.Effect.Enabled = false
		effectpart.Effect1.Enabled = false
		effectpart2.Effect1.Enabled = false
end)
		game.Debris:AddItem(effectpart, 2.3) 
		game.Debris:AddItem(effectpart2, 2.3) 
		
	spawn(function()
		effectpart.Material = "ForceField"
		effectpart.BrickColor = BrickColor.new("Magenta")
		effectpart2.Material = "ForceField"
		effectpart2.BrickColor = BrickColor.new("Magenta")
			effectpart.TextureID = "rbxassetid://5101923607"
			effectpart2.TextureID = "rbxassetid://5101923607"
		local TweenService = game:GetService("TweenService")
		local Info = TweenInfo.new(
			.9, -- Length
			Enum.EasingStyle.Bounce, -- Easing Style
			Enum.EasingDirection.In, -- Easing Direction
			0, -- Times repeated
			true, -- Reverse
			0 -- Delay
		)
		local Goals =
			{
				Transparency = 0.3;
				Size = Vector3.new(1.252, 1.307, 1.252);
			}
			local tweene = TweenService:Create(effectpart,Info,Goals)
			local tweene2 = TweenService:Create(effectpart2,Info,Goals)

			tweene:Play()
			tweene2:Play()

	end)
for i = 1,10 do
	wait(0.01)
	Part.Transparency = Part.Transparency + 0.1
	Part2.Transparency = Part2.Transparency + 0.1
	
end
Part:Destroy()
Part2:Destroy()

	
	
    HK = game.ReplicatedStorage.rightbuso:Clone()
	HK.Anchored = false
	HK.CanCollide = false
	HK.BrickColor = BrickColor.new("Really black")
	HK.Material = "Glass"
	HK.CFrame = Plr.Character:FindFirstChild("Right Arm").CFrame
	HK.Parent = folder
	HK.Reflectance = 0
	local W = Instance.new("ManualWeld")
    W.Part0 = HK
	W.Part1 = Plr.Character:FindFirstChild("Right Arm")
	W.C0 = HK.CFrame:inverse() * Plr.Character:FindFirstChild("Right Arm").CFrame * CFrame.new(0, .45, 0)
    W.Parent = HK

    HK2 = game.ReplicatedStorage.leftbuso:Clone()
	HK2.Anchored = false
	HK2.CanCollide = false
	HK2.BrickColor = BrickColor.new("Really black")
	HK2.Material = "Glass"
	HK2.CFrame = Plr.Character:FindFirstChild("Left Arm").CFrame
	HK2.Parent = folder
	HK2.Reflectance = 0
	local W2 = Instance.new("ManualWeld")
    W2.Part0 = HK2
	W2.Part1 = Plr.Character:FindFirstChild("Left Arm")
	W2.C0 = HK2.CFrame:inverse() * Plr.Character:FindFirstChild("Left Arm").CFrame * CFrame.new(0, .45, 0)
    W2.Parent = HK2


		elseif Value == "off" then 
		toolAddedConnection:Disconnect()
	Haki:Destroy()
	for i = 1,10 do
		wait(0.05)
		HK.Transparency = HK.Transparency + 0.1
		HK2.Transparency = HK2.Transparency + 0.1


		end
		spawn(function() 

		for i, v in pairs(Plr.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.done.Value = false
				for i, pee in
					pairs(v.Handle.poo:GetChildren()) do
					spawn(function()

						if pee:IsA('MeshPart') then
							for i = 1, 10 do 
								wait(.05) 
								pee.Transparency = pee.Transparency + 0.1
							end							
						end

					end)

					end
					for i, pee in
						pairs(v.Handle.content:GetChildren()) do
						pee.Transparency = 0
						end
				wait(1)
				v.Handle.poo:Destroy()

				end
				end
				end)
			spawn(function()

for i, v in pairs(script.Parent.Parent:GetChildren()) do
				if v:IsA("Tool") then
					if v.Handle:FindFirstChild("poo") then
					v.done.Value = false
					for i, pee in
						pairs(v.Handle.content:GetChildren()) do
						pee.Transparency = 0
					end

					v.Handle.poo:Destroy()

					end
				

			end
end
			end)
	game.workspace:FindFirstChild(Plr.Name.." Haki"):Destroy()
end
 end)
