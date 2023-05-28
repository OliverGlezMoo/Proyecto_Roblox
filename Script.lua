--Verificar si el usuario ya posse el arma o la herramienta
local spawner = script.Parent
local tool = nil
local region = Region3.new(Vector3.new(spawner.Position.X - spawner.Size.X/2, spawner.Position.Y + spawner.Size.Y/2, spawner.Position.Z - spawner.Size.Z/2),
   Vector3.new(spawner.Position.X + spawner.Size.X/2, spawner.Position.Y + 4, spawner.Position.Z + spawner.Size.Z/2))
local parts = game.Workspace:FindPartsInRegion3(region)
for _, part in pairs(parts) do
	if part and part.Parent and part.Parent:IsA("Tool") then
		tool = part.Parent
		break
	end
end

--Cargar la configuración de la herramienta ubicada encima del generador, para generarla con las mismas caracteristicas
local configTable = spawner.Configurations
local configs = {}
local function loadConfig(configName, defaultValue)
	if configTable:FindFirstChild(configName) then
		configs[configName] = configTable:FindFirstChild(configName).Value
	else
		configs[configName] = defaultValue
	end
end

--Tiempo a esperar para que el arma o herramienta vuelva a aparecer
loadConfig("SpawnCooldown", 5)

if tool then
	tool.Parent = game.ServerStorage
	
	while true do
		--Agregar la arma o herramienda para generarla
		local toolCopy = tool:Clone()
		local handle = toolCopy:FindFirstChild("Handle")
		toolCopy.Parent = game.Workspace
		local toolOnPad = true
		local parentConnection
		parentConnection = toolCopy.AncestryChanged:connect(function()
			if handle then handle.Anchored = false end
			toolOnPad = false
			parentConnection:disconnect()
		end)
		if handle then
			handle.CFrame = (spawner.CFrame + Vector3.new(0,handle.Size.Z/2 + 1,0)) * CFrame.Angles(-math.pi/2,0,0)
			handle.Anchored = true
		end
		--Esperar hasta que un jugador tome el arma o herramienta.
		while toolOnPad do 
			if handle then
				handle.CFrame = handle.CFrame * CFrame.Angles(0,0,math.pi/60)
			end
			wait() 
		end
		
		-- wait for cooldown
		wait(configs["SpawnCooldown"])		
	end
	
end



--if tool then
--	local handle = tool:FindFirstChild("Handle")
--	local toolCopy = tool:Clone()
--	toolCopy.Parent = game.ServerStorage
--	local toolOnPad = true	
--	
--	local parentConnection
--	parentConnection = tool.AncestryChanged:connect(function()
--		if handle then handle.Anchored = false end
--		toolOnPad = false
--		parentConnection:disconnect()
--	end)
--	
--	if handle then
--		handle.CFrame = (spawner.CFrame + Vector3.new(0,handle.Size.Z/2 + 1,0)) * CFrame.Angles(-math.pi/2,0,0)
--		handle.Anchored = true
--	end
--	
--	while true do
--		while toolOnPad do
--			if handle then
--				handle.CFrame = handle.CFrame * CFrame.Angles(0,0,math.pi/60)
--			end
--			wait()
--		end
--		wait(configs["SpawnCooldown"])
--		local newTool = toolCopy:Clone()
--		newTool.Parent = game.Workspace
--		handle = newTool:FindFirstChild("Handle")
--		toolOnPad = true
--	end
--end