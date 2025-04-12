repeat
	task.wait()
until game:IsLoaded()

local UI = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local pastebinUrl = "https://pastebin.com/raw/DkyEE1m7"

local staticKey = game:HttpGet(pastebinUrl)

local function notify(title, content, duration)
	UI:Notify({ Title = title, Content = content, Duration = duration or 8 })
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
		local enteredKey = Input.Value
		print("Entered Key: '" .. enteredKey .. "'")
		print("Static Key: '" .. staticKey .. "'")

		if enteredKey == staticKey then
			notify("Key Valid", "Your key is valid! Closing menu...", 5)
			Window:Destroy() -- Закрываем окно
		else
			notify("Invalid Key", "The entered key is invalid.", 5)
		end
	end,
})

Window:SelectTab(1)
notify("Worm", "Loader Has Loaded Successfully")

repeat
	task.wait()
until getgenv().WormKey
UI:Destroy()
