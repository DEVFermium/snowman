local snowmanFolder = Instance.new("Folder", workspace) :: Folder
snowmanFolder.Name = "Snowman_Workspace"

local settings = require(script.Parent:WaitForChild("settings"))

local hitbox = Instance.new("Part", snowmanFolder)
hitbox.Size = settings.Hitbox.Size
hitbox.CFrame = settings.Hitbox.CFrame
hitbox.CanCollide = false
hitbox.Transparency = 1
hitbox.Anchored = true

local clickDetector = Instance.new("ClickDetector", hitbox) :: ClickDetector

local src = script.Parent:WaitForChild("scr")

for _, v in src:GetChildren() do
  v.Enabled = true
end
