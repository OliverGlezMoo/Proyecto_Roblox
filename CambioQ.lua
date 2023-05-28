local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer repeat wait() until player
local character = player.Character repeat wait() until character

local armaGuardada = nil

UserInputService.InputBegan:Connect(function(key , otraEntrada)
	--Si el chat esta activo no ejecutamos el script
	if otraEntrada == true then return end
	
	--Si caso no esta activo el chat
	if key.KeyCode == Enum.KeyCode.Q then
		
		if character:FindFirstChildOfClass("Tool") then
			local armaActual = character:FindFirstChildOfClass("Tool")
			
			if armaActual.Name == "Handgun" then
				--Si el usuario tiene el armada llamada Handgun
				if armaGuardada ~= nil then
					character.Handgun.Parent = player.Backpack
					armaGuardada.Parent = character
					armaGuardada = nil	
				end				
			else
				--Si no tiene la daga no sucede nada al presionar la tecla
				local gun = player.Backpack.Handgun
				
				armaActual.Parent = player.Backpack				
				gun.Parent = character
				
				armaGuardada = armaActual				
			end
		end		
	end
end)
