repeat task.wait() until game:IsLoaded()

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local API = loadstring(game:HttpGet("https://sdkAPI-public.luarmor.net/library.lua"))()
local pastebinUrl = "https://pastebin.com/raw/DkyEE1m7"
local staticKey = game:HttpGet(pastebinUrl)
if game.placeId == 8075399143 then
    API.script_id = "38bc18fab08ad4249ddfb77f69dbff8d"
elseif game.placeId == 9164271501 then
    API.script_id = "ef9455c5229388090b6d981daf114ff8"
elseif game.placeId == 18668065416 then
    API.script_id = "ff5cdf86ffe96e84228656716cf17fb2"
	elseif game.placeId == 92517437168342 then
    API.script_id = "ff5cdf86ffe96e84228656716cf17fb2"
	elseif game.placeId == 115110570222234 then
    API.script_id = "ff5cdf86ffe96e84228656716cf17fb2"
elseif game.placeId == 91797414023830 then
	API.script_id = "710ce19e67b940f222204ab442ec469f"
elseif game.placeId == 140050746237057 then
	API.script_id = "710ce19e67b940f222204ab442ec469f"
elseif game.placeId == 89413197677760 then
	API.script_id = "9c30ffc7ec5776d9e1149c6e4ff80b12"
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
