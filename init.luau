local snowmanFolder = Instance.new("Folder", workspace) :: Folder
snowmanFolder.Name = "Snowman_Workspace"

local src = script.Parent:WaitForChild("scr")

for _, v in src:GetChildren() do
  v.Enabled = true
end
