local BagdeService = game:GetService("BadgeService")
local Players = game:GetService("Players")

local idEmblema = 2146353671

Players.PlayerAdded:Connect(function(player)
	wait(10)
	pcall(function()
		if not BagdeService:UserHasBadgeAsync(player.UserId, idEmblema) then
			BagdeService:AwardBadge(player.UserId, idEmblema)
		else
			--El usuario ya cuenta con el emblema en su inventario
		end
	end)
end)
