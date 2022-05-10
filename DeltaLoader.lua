local D = "%CE%94"
local server = "https://raw.githubusercontent.com/Xoverse/DELTA/main/"
local script = D .. "ELTA.lua"

_G.DeltaGetFilePath = function(reqFile)
	local test = string.lower(reqFile)

	if test == "." or test == "this" or test == "/" or test == "./" or test == "server" then
		return server
	else
		return server .. reqFile
	end
end

local gf = _G.DeltaGetFilePath

local ran = false

notification.AddProgress("DLoad", "Loading ΔELTA...")

http.Fetch(gf(script), function(b)
	notification.Kill("DLoad")
	notification.AddLegacy("Welcome to ΔELTA !", NOTIFY_GENERIC, 2)
	surface.PlaySound("hl1/fvox/bell.wav")

	RunString(b)

	ran = true
end, function()
	notification.Kill("DLoad")
	notification.AddLegacy("ΔELTA failed to load", NOTIFY_ERROR, 2)
	surface.PlaySound("buttons/button11.wav")
end)

timer.Simple(30, function()
	if ran != true then
		notification.Kill("DLoad")
		notification.AddLegacy("ΔELTA failed to load", NOTIFY_ERROR, 2)
		surface.PlaySound("buttons/button11.wav")

		ran = true
		return
	end
end)