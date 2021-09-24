repstorage = game:GetService("ReplicatedStorage")
RemoteEvent = script:WaitForChild("Haki")
Player = game.Players.LocalPlayer

game.Workspace:WaitForChild(Player.Name)
Debounce = 1
Sound = game.Lighting.HakiSound
Anim =  game.Lighting.HakiAnim
game:GetService("UserInputService").InputBegan:Connect(function(input, GPE)
	    	if not GPE then
	if input.KeyCode == Enum.KeyCode.B and Debounce == 1 then             
        Debounce = 3
		Sound:Play()
		local Track = Player.Character.Humanoid:LoadAnimation(Anim)
		Track:Play()
        RemoteEvent:FireServer("on") 
        wait(3) 
        Debounce = 2
		    end
		end
end)
 
 
game:GetService("UserInputService").InputBegan:Connect(function(input, GPE)  
		    if not GPE then 
    if input.KeyCode == Enum.KeyCode.B and Debounce == 2  then
        Debounce = 3 
        RemoteEvent:FireServer("off")
        wait(3) 
        Debounce = 1
		    end
		end
end)
