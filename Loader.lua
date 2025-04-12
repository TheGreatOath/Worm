repeat
    task.wait()
until game:IsLoaded()


makefolder("WormKey")
local key_path = "WormKey/Key.txt"
local staticKey = "2552043fc0fe38bf78accbb9a64c4cf9"

local Cloneref = cloneref or clonereference or function(instance)
    return instance
end
local Players, HttpService = Cloneref(game:GetService("Players")), Cloneref(game:GetService("HttpService"))
local Request = http_request or request or syn.request or http

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local function notify(title, content, duration)
    UI:Notify({ Title = title, Content = content, Duration = duration or 8 })
end

local function checkKey(input_key)
    if input_key == staticKey then
        notify("Key Valid", "The key is valid.", 8)

        repeat
            task.wait()
        until UI:Destroy()
    else
        notify("Key Invalid", "The key is invalid.", 8)

    end
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

local Tabs = { Main = Window:AddTab({ Title = "Key", Icon = "" }) }

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
        checkKey(Input.Value)
        if Input.Value == staticKey then

            repeat
                task.wait()
            until UI:Destroy()
        end
    end
})

Window:SelectTab(1)
notify("Worm", "Loader Has Loaded Successfully")

repeat
    task.wait()
until getgenv().WormKey
UI:Destroy()
