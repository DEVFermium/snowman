local snowmanWorkspace = workspace:WaitForChild("Snowman_Workspace")
local hitbox = snowmanWorkspace:WaitForChild("Hitbox")
local clickDetector = hitbox:WaitForChild("ClickDetector") :: ClickDetector

local debouncedPlayer = {} :: {Player?}

local function onClicked(player : Player)
	if not player.Character or not player.Backpack:FindFirstChild("Snowball") or not player.Character:FindFirstChild("Snowball") or table.find(debouncedPlayer , player) then return end

	table.insert(debouncedPlayer , player)
	task.delay(1, function()
		table.remove(debouncedPlayer, table.find(debouncedPlayer, player))
	end)
	local snowballTool = script:WaitForChild("Snowball"):Clone()
	snowballTool.Parent = player.Backpack
end

clickDetector.MouseClick:Connect(onClicked)