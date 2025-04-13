repeat task.wait() until game:IsLoaded()

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local pastebinUrl = "https://pastebin.com/raw/DkyEE1m7"
local staticKey = game:HttpGet(pastebinUrl)
if game.placeId == 8075399143 then

elseif game.placeId == 9164271501 then

elseif game.placeId == 18668065416 then

elseif game.placeId == 92517437168342 then

elseif game.placeId == 115110570222234 then

elseif game.placeId == 91797414023830 then

elseif game.placeId == 140050746237057 then

elseif game.placeId == 89413197677760 then
else
    game.Players.LocalPlayer:Kick("Worm doesn't support this game | Join our discord for more information")
end


local function notify(title, content, duration)
    UI:Notify({
        Title = title,
        Content = content,
        Duration = duration or 3
    })
end

local Window = UI:CreateWindow({
    Title = "Worm",
    SubTitle = "Loader",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 320),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End,
})

local Tabs = {
    Main = Window:AddTab({ Title = "Key", Icon = "" })
}

local Input = Tabs.Main:AddInput("Key", {
    Title = "Enter Key:",
    Default = "",
    Placeholder = "Enter your key here...",
    Numeric = false,
    Finished = false,
})

Tabs.Main:AddButton({
    Title = "Check Key",
    Callback = function()
        local enteredKey = Input.Value
        if enteredKey == staticKey then
            notify("Key Valid", "Your key is valid! Loading script...", 5)
            Window:Destroy()
            task.wait(1)

            loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/MainScript.lua"))()

        else
            notify("Invalid Key", "The entered key is invalid.", 3)
        end
    end,
})

Window:SelectTab(1)
notify("Worm", "Loader Has Loaded Successfully")
