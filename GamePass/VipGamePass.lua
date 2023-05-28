local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local player = Players.LocalPlayer repeat wait() until player

local idGamePass = 182121052
local buttonVip = script.Parent

buttonVip.MouseButton1Click:Connect(function()
	local gamePass
	pcall(function()
		gamePass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, idGamePass)
	end)
	
	if not gamePass then
		MarketplaceService:PromptGamePassPurchase(player, idGamePass)
	end
end)