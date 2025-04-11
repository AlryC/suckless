local sh = require("sh")
sh.install()

local list_networks = wpa_cli("list_networks"):awk("NR>2 {print $2}")--:grep("-v \'^$\'")

print(list_networks)
