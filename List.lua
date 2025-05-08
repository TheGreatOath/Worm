local Games = {
  [4878988249] = "https://raw.githubusercontent.com/TheGreatOath/Script-Games/refs/heads/main/Migty%20Omega.lua", -- Mighty Omega
  [4483381587] = "https://raw.githubusercontent.com/TheGreatOath/Script-Games/refs/heads/main/Migty%20Omega.lua",
}

if not Games[game.placeId] then
    Players.LocalPlayer:Kick("Worm doesn't support this game | Join our discord for more information")
    return
end
