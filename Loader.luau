local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/List.luau"))()

for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
    end
end
