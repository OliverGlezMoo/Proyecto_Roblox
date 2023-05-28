local tool = script.Parent
if not game.ServerStorage:FindFirstChild("ROBLOX_HumanoidList") then
	tool.ROBLOX_HumanoidList:Clone().Parent = game.ServerStorage
end
local HumanoidList = require(game.ServerStorage.ROBLOX_HumanoidList)
local lastHealed = os.time()

local configTable = tool.Configurations
local configs = {}
local function loadConfig(configName, defaultValue)
	if configTable:FindFirstChild(configName) then
		configs[configName] = configTable:FindFirstChild(configName).Value
	else
		configs[configName] = defaultValue
	end
end

loadConfig("HealAmount", 10)
loadConfig("HealDistance", 10)
loadConfig("HealCooldown", 5)

tool.Activated:Connect(function()
	local now = os.time()
	if now - lastHealed >= configs["HealCooldown"] then
		lastHealed = now
		local humanoids = HumanoidList:GetCurrent()
		for _, humanoid in pairs(humanoids) do
			local character = humanoid.Parent
			if character:FindFirstChild("HumanoidRootPart") then
				local distance = (tool.Handle.Position - character:FindFirstChild("HumanoidRootPart").Position).magnitude
				if distance < configs["HealDistance"] then
					humanoid.Health = humanoid.Health + configs["HealAmount"]
					local healSmokeThread = coroutine.create(function()
						local smoke = Instance.new("Smoke", character:FindFirstChild("HumanoidRootPart"))
						smoke.Color = Color3.new(0,1,0)
						smoke.Opacity = 0.3
						wait(2)
						smoke:Destroy()
					end)
					coroutine.resume(healSmokeThread)
				end
			end
		end
	end
end)

