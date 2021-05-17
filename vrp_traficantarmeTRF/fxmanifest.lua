fx_version 'bodacious'
game 'gta5'

dependency "vrp"

client_scripts{ 
  "lib/Proxy.lua",
  "lib/Tunnel.lua",
  "client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}

files {
  "icons/AK-47.png",
  "icons/Glock.png",
  "icons/Sniper.png"
}
