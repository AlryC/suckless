local sh = require("sh")
sh.install()

local BATT_PATH = "/sys/class/power_supply/BAT0"
local chargeStatus = cat(BATT_PATH .. "/status").__stdout
local batteryLevel = cat(BATT_PATH .. "/capacity").__stdout
batteryLevel = tonumber(batteryLevel)

local BATTERY_ICONS = { " ", " ", " ", " ", " " } -- 0-20%, 21-40%, 41-60%, 61-80%, 81-100%
local icon = ""

if chargeStatus ~= "Charging\n" and chargeStatus ~= "Full\n" then
	icon = BATTERY_ICONS[math.min(math.floor(batteryLevel / 20) + 1, 5)]
end

print(string.format("%s %d%% ", icon, batteryLevel))
