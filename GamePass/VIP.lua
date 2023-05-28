local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")
local MarketplaceService = game:GetService("MarketplaceService")

local idGamePass = 182121052

local tablaCreador = { "Gonza_Moo" , "Gonza_Speed"}

Players.PlayerAdded:Connect(function(player)
	local gamePass
	pcall(function()
		gamePass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, idGamePass)
	end)
	
	--Se manda a llamar el modulo
	local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService")) 
	repeat wait(1) until ChatService ~= nil
	
	if player.Name == tablaCreador[1] or player.Name == tablaCreador[2] then
		local speaker = ChatService:GetSpeaker(player.Name)
		speaker:SetExtraData("Tags",{{ TagText = "ADMIN", TagColor = Color3.fromRGB(85, 0, 0)}})
		
	elseif gamePass == true then
		local speaker = ChatService:GetSpeaker(player.Name)
		speaker:SetExtraData("Tags",{{ TagText = "VIP", TagColor = Color3.fromRGB(255, 0, 0)}})
		
	else
		local speaker = ChatService:GetSpeaker(player.Name)
		speaker:SetExtraData("Tags",{{ TagText = "FAN", TagColor = Color3.fromRGB(255, 0, 255)}})
		
	end
end)

MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(player, idCompra, compraExitosa)
	local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService")) 
	if compraExitosa == true and idCompra == idGamePass then
		local speaker = ChatService:GetSpeaker(player.Name)
		speaker:SetExtraData("Tags",{{TagText = "VIP", TagColor = Color3.fromRGB(255, 0, 0)}})
	end
end)