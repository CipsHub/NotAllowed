local function printLocalScripts(container)
    for _, descendant in pairs(container:GetDescendants()) do
        if descendant:IsA("LocalScript") then
            local fullName = descendant:GetFullName()
            print("LocalScript found:", fullName)
        end
    end
end

printLocalScripts(game.StarterGui)

local player = game.Players.LocalPlayer

player.PlayerGui.ChildAdded:Connect(function(child)
    if child:IsA("Folder") and child.Name == "PlayerGui" then
        printLocalScripts(child)
    end
end)
