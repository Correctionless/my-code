local function sendNotification(title, text)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 5
    })
end

sendNotification("Welcome", "Script executed")

game.Workspace.ChildAdded:Connect(function(child)
    if string.sub(child.Name, 1, 2) == "A-" and (child.Name == "A-60" or child.Name == "A-120") then
        sendNotification(child.Name.." Spawned", "Hide quickly!")
    end
end)

game.Workspace.ChildRemoved:Connect(function(child)
    if string.sub(child.Name, 1, 2) == "A-" and (child.Name == "A-60" or child.Name == "A-120") then
        sendNotification(child.Name.." Despawned", "You can get out of your hiding spot")
    end
end)
