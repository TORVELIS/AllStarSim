local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "TORV Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Torv Hub Anime Star"})

--Functions--

local function Characters(Ch)

local A_1 = "Avatar"
local A_2 = Ch
local Event = game:GetService("ReplicatedStorage").RemoteEvent
Event:FireServer(A_1, A_2)

end

local function AutoHatch(G)
local A_1 = "Gacha"
local A_2 = G
local A_3 = G
local A_4 = G
local A_5 = G
local A_6 = G
local A_7 = G
local A_8 = G
local A_9 = G
local A_10 = G
local A_11 = G
local A_12 = G
local A_13 = G
local A_14 = G
local A_14 = G
local A_15 = G
local A_16 = G
local A_17 = G
local A_18 = G
local A_19 = G
local A_20 = G
local A_21 = G
local A_22 = G
local Event = game:GetService("ReplicatedStorage").RemoteFunction
Event:InvokeServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7, A_8, A_9, A_10, A_11, A_12, A_13, A_14, A_15, A_16, A_17, A_18, A_19, A_20, A_21, A_22)
end

local function DiscordInvite()
    syn.request({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Origin"] = "https://discord.com"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            cmd = "INVITE_BROWSER",
            args = {
                code = "FjatqqHT4e"
            },
            nonce = game:GetService("HttpService"):GenerateGUID(false)
        }),
     })
end

DiscordInvite()


--Tabs--

local Tab1 = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



local Section = Tab1:AddSection({
	Name = "Welcome to ASS Hub"
})

Tab1:AddButton({
	Name = "Copy Discord Server link",
	Callback = function()
      		setclipboard("https://discord.gg/FjatqqHT4e")

Tab1:AddLabel("Credits: Naed#0001")
    		
OrionLib:MakeNotification({
Name = "Copied Disord server link to clipboard",
Content = "https://discord.gg/FjatqqHT4e",
Image = "rbxassetid://4483345998",
Time = 5
})
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

    Tab2:AddToggle({
        Name = "Auto Click",
        Default = false,
        Callback = function(AutoClick)


        getgenv().AutoClicker = AutoClick
        spawn(function()

    while getgenv().AutoClicker do task.wait()
        local A_1 = "click"
            local Event = game:GetService("ReplicatedStorage").RemoteEvent
        Event:FireServer(A_1)
            end
        end)
    end   
})

Tab2:AddLabel("-----------------------------------------------------------------------")
Tab2:AddDropdown({
	Name = "Choose Egg",
	Default = "Huoying Egg",
	Options = {"Huoying Egg", "Treasure Egg", "Soul Egg", "Daohui Egg", "Blade of Extinction egg"},
	Callback = function(Value)
    getgenv().AutoEgg = Value
		
end 
})

Tab2:AddToggle({
	Name = "Auto Egg",
	Default = false,
	Callback = function(Value2)
    getgenv().AutoOpen = Value2


    if AutoEgg == "Huoying Egg" then
        task.spawn(function()
            while AutoOpen do task.wait()
        AutoHatch(1)
    end
end)

    elseif AutoEgg == "Treasure Egg" then
        task.spawn(function()
            while AutoOpen do task.wait()
        AutoHatch(2)
    end
end)


    elseif  AutoEgg == "Soul Egg" then
        task.spawn(function()
            while AutoOpen do task.wait()
        AutoHatch(3)
    end
end)


    elseif AutoEgg == "Daohui Egg" then
        task.spawn(function()
            while AutoOpen do task.wait()
        AutoHatch(4)
    end
end)

elseif AutoEgg == "Blade of Extinction egg" then
    task.spawn(function()
        while AutoOpen do task.wait()
    AutoHatch(5)
    end
end)


    end
end    
})

Tab2:AddButton({
	Name = "Inf Money",
	Callback = function()
        local A_1 = "UnLockDoor"
        local A_2 = "12"
        local A_3 = -math.huge
        local Event = game:GetService("ReplicatedStorage").RemoteFunction
        Event:InvokeServer(A_1, A_2, A_3)
        
  	end    
})



local Tab3 = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab3:AddDropdown({
	Name = "Character",
	Default = "1",
	Options = {"Mifune", "Choji", "Rock Lee", "Sakura", "Kakashi", "Sasuke", "Naruto", "Sanji", "Zoro", "Luffy", "Kuzan", "Eagle Eye", "Ace", "Shanks", "Ichimaru Gin", "Kuchiki Rukia", "Kurosaki Ichigo", "Kuchiki Byakuya", "Yamamoto", "Urahara Kisuke", "Kurosaki Ichigo V2", "Bulma", "Piccolo", "Kame Sennin", "Lapis", "Buu", "Bejita", "Son Goku", "Zenitsu", "Inosuke", "Tanjirou", "Nezuko", "Kochou Shinobu", "Rengoku", "Yoriichi", "Five Saints", "Dior", "All Saint" },
	Callback = function(CharacterPick)
		getgenv().CharacterPicker = CharacterPick
	end    
})

Tab3:AddButton({
	Name = "Equip",
	Callback = function()
    if CharacterPicker == "Mifune" then
        Characters(1)
    elseif CharacterPicker == "Choji" then
        Characters(2)
    elseif CharacterPicker == "Rock Lee" then
        Characters(3)
    elseif CharacterPicker == "Sakura" then
        Characters(4)
    elseif CharacterPicker == "Kakashi" then
        Characters(5)
    elseif CharacterPicker == "Sasuke" then
        Characters(6)
    elseif CharacterPicker == "Naruto" then
        Characters(7)
    elseif CharacterPicker == "Sanji" then
        Characters(8)
    elseif CharacterPicker == "Zoro" then
        Characters(9)
    elseif CharacterPicker == "Luffy" then
        Characters(10)
    elseif CharacterPicker == "Kuzan" then
        Characters(11)
    elseif CharacterPicker == "Eagle Eye" then
        Characters(12)
    elseif CharacterPicker == "Ace" then
        Characters(13)
    elseif CharacterPicker == "Shanks" then
        Characters(14)
    elseif CharacterPicker == "Ichimaru Gin" then
        Characters(15)
    elseif CharacterPicker == "Kuchiki Rukia" then
        Characters(16)
    elseif CharacterPicker == "Kurosaki Ichigo" then
        Characters(17)
    elseif CharacterPicker == "Kuchiki Byakuya" then
        Characters(18)
    elseif CharacterPicker == "Yamamoto" then
        Characters(19)
    elseif CharacterPicker == "Urahara Kisuke" then
        Characters(20)
    elseif CharacterPicker == "Kurosaki Ichigo V2" then
        Characters(21)
    elseif CharacterPicker == "Bulma" then
        Characters(22)
    elseif CharacterPicker == "Piccolo" then
        Characters(23)
    elseif CharacterPicker == "Kame Sennin" then
        Characters(24)
    elseif CharacterPicker == "Lapis" then
        Characters(25)
    elseif CharacterPicker == "Buu" then
        Characters(26)
    elseif CharacterPicker == "Bejita" then
        Characters(27)
    elseif CharacterPicker == "Son Goku" then
        Characters(28)
    elseif CharacterPicker == "Zenitsu" then
        Characters(29)
    elseif CharacterPicker == "Inosuke" then
        Characters(30)
    elseif CharacterPicker == "Tanjirou" then
        Characters(31)
    elseif CharacterPicker == "Nezuko" then
        Characters(32)
    elseif CharacterPicker == "Kochou Shinobu" then
        Characters(33)
    elseif CharacterPicker == "Rengoku" then
        Characters(34)
    elseif CharacterPicker == "Yoriichi" then
        Characters(35)
    elseif CharacterPicker == "Five Saints" then
        characters(36)
    elseif CharacterPicker == "Dior" then
        Characters(37)
    elseif CharacterPicker == "All Saint" then
        Characters(38)
        end
    end    
})

local Tab3 = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:Init()
