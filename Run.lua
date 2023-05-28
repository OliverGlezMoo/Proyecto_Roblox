game.ReplicatedStorage.EventRun.OnServerEvent:Connect(function(player, activador)
	if activador == true then
		player.Character.Humanoid.WalkSpeed = 50
	else
		player.Character.Humanoid.WalkSpeed = 16
	end
	
end)