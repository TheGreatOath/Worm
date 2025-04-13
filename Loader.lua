repeat task.wait() until game:IsLoaded()

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local keyUrl1 = "https://pastebin.com/raw/DkyEE1m7"
local keyUrl2 = "https://pastebin.com/raw/9LL3vw1f"

local staticKey1 = game:HttpGet(keyUrl1)
local staticKey2 = game:HttpGet(keyUrl2)

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
    Description = "Check if the key is valid",
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

Tabs.Main:AddButton({
    Title = "Copy Key Link 1",
    Description = "Copy the first key link",
    Callback = function()
        if setclipboard then
            setclipboard("https://work.ink/1Z6i/21elkw52")
            notify("Copied", "Link 1 copied to clipboard!", 3)
        else
            notify("Error", "Clipboard function not supported.", 3)
        end
    end,
})

Tabs.Main:AddButton({
    Title = "Copy Key Link 2",
    Description = "Copy the second key link",
    Callback = function()
        if setclipboard then
            setclipboard("https://link-center.net/1338161/worm-key")
            notify("Copied", "Link 2 copied to clipboard!", 3)
        else
            notify("Error", "Clipboard function not supported.", 3)
        end
    end,
})

Window:SelectTab(1)
notify("Worm", "Loader Has Loaded Successfully")
