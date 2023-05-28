local Players = game:GetService("Players")
local BagdeService = game:GetService("BadgeService")

local idEmblema = 2146354120

local creador = { "Gonza_Moo" }

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		
		--Verificación de que el creador esta dentro del juego y el servidor
		for i, creator in pairs(creador) do
			if creador[i] == player.Name then
				
				--Se declara una parte del personaje del creador
				local humanoidRootPart = character.HumanoidRootPart
				
				--Se crea el evento touched para poder dar el emblema
				humanoidRootPart.Touched:Connect(function(hit)
					if hit.Parent:FindFirstChild("Humanoid") then
						local playerGanador = Players:GetPlayerFromCharacter(hit.Parent)
						BagdeService:AwardBadge(playerGanador.UserId, idEmblema)
					end
				end)
			end
		end
	end)
end)