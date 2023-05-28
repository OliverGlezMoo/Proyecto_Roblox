--Usado para la detecccion de las entradas del usuario (mouse, teclado, etc)
local UserInputService = game:GetService("UserInputService")

local player = game.Players.LocalPlayer

--Con esta función el juego va a detectar cualquier movimiento
UserInputService.InputBegan:Connect(function(key, gameProcessed )
	if key.KeyCode == Enum.KeyCode.LeftShift then
		game.ReplicatedStorage.EventRun:FireServer(true)
	end
end)

--Este evento se activada cuando el usuario deje de presionar una tecla
UserInputService.InputEnded:Connect(function()
	game.ReplicatedStorage.EventRun:FireServer()
end)