local camera = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

local firstPerson = false

local function toggleView()
	if firstPerson == false then
		firstPerson = true
		camera.CameraMinZoomDistance = 0.5
		camera.CameraMaxZoomDistance = 0.5
		game.StarterGui:SetCore("SendNotification", {
			Title = "Toggled",
			Text = "✅	You are now in First Person Mode.",
			Duration = 5
		})
	elseif firstPerson == true then
		firstPerson = false
		camera.CameraMinZoomDistance = 20
		camera.CameraMaxZoomDistance = 50
		game.StarterGui:SetCore("SendNotification", {
			Title = "Toggled",
			Text = "✅	You are now in Third Person Mode.",
			Duration = 5
		})

	end
end

game.StarterGui:SetCore("SendNotification", {
	Title = "Loaded",
	Text = "✅	Successfully loaded Imans Perspective Toggler.",
	Duration = 5
})

UserInputService.InputBegan:Connect(function(inputObject, isProcessed)
	if inputObject.KeyCode == Enum.KeyCode.V and not isProcessed then
		toggleView()
	end
end)
