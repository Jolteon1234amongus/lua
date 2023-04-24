--this script will change the deepwoken menu music to the april fools deepwoken menu music even when it is not april first
--made by Zeehk334


if not game:IsLoaded() then
	game.Loaded:Wait()
end

local ids = {
	4111023553,
	6032399813,
	5735553160,
	6473861193,
	6832934465,
	6832944305,
	8668476218,
	8712356310,
	9528956055,
	9598091549,
	9854906953,
	11108929042,
	12522881268,
	12522889886,
	12522892314,
	12559711136
}

for i = 1, #ids do
	if game.PlaceId == ids[i] or game.GameId == ids[i] then
		for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("LoadingGui"):WaitForChild("LoadingGui"):WaitForChild("Music"):GetChildren()) do
			if v.SoundId == "rbxassetid://4725707912" then
				v.SoundId = "rbxassetid://12953306385"
			end
		end

		break
	end
end