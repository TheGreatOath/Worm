repeat task.wait() until game:IsLoaded()

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local pastebinUrl = "https://pastebin.com/raw/DkyEE1m7"
local pastebinUrl = "https://pastebin.com/raw/9LL3vw1f"
local staticKey = game:HttpGet(pastebinUrl)
if game.placeId == 72368345999613 then

elseif game.placeId == 4483381587 then
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

Tabs.Main:AddButton({
	Title = "Get Key (Workink)",
	Callback = function()
		setclipboard("https://work.ink/1Z6i/21elkw52")
		notify("Copied To Clipboard", "Ad Reward Link has been copied to your clipboard", 16)
	end,
})

            loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/MainScript.lua"))()

        else
            notify("Invalid Key", "The entered key is invalid.", 3)
        end
    end,
})

Window:SelectTab(1)
notify("Worm", "Loader Has Loaded Successfully")
