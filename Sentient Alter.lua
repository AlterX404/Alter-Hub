
--load the lib
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/astraln/SentinelUILIB/main/UI.lua', true))()
local AlterHub = Library:Window("Alter-Hub")
--Credits
local CreditsSection = AlterHub:Tab("Credits")
CreditsSection:Label("Main Dev And Owner")
CreditsSection:Button("Alter-X (click to visit my YouTube)", function()
    setclipboard("https://www.youtube.com/Tab/UCBTkrkGEibTUayqVvs8G5fg")
    Library:Notification("Copied", "The link has been copied. Go and paste it in your browser.", "Okay!")
end)

CreditsSection:Label("Helper")

CreditsSection:Button("Chat GPT(still click to visit my YouTube)", function()
    setclipboard("https://www.youtube.com/Tab/UCBTkrkGEibTUayqVvs8G5fg")
    Library:Notification("Copied", "The link has been copied. Go and paste it in your browser.", "Okay!")
end)


-- Universal Scripts 
local UniversalSection = AlterHub:Tab("Universal Scripts")
UniversalSection:Label("Offical Alter Troll Hub And Scripts")

--Alter Troll Hub
    UniversalSection:Button("Alter Troll Hub", function()

        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
        local Window = Library.CreateLib("Alter Hub troll script (Beta)", "BloodTheme")

        --credits
        local Tab = Window:NewTab("Credits")
        local CreditsSection = Tab:NewSection("Credits")
        CreditsSection:NewButton("Alter-X (click to visit my YouTube)", "click to copy it and paste it in your browser", function()
            setclipboard("https://www.youtube.com/Tab/UCBTkrkGEibTUayqVvs8G5fg")
        end)
        CreditsSection:NewLabel("Helper")

        CreditsSection:NewButton("Chat GPT(still click to visit my YouTube)", "click to copy it and paste it in your browser", function()
            setclipboard("https://www.youtube.com/Tab/UCBTkrkGEibTUayqVvs8G5fg")
        end)
        --main
        local Tab = Window:NewTab("Main Scripts")
        local Section = Tab:NewSection("Functions")
        --ALTER FE
        Section:NewButton("Alter-FE", "FE SCRIPT", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/fe-script-for-roblox/main/Alter%20Hub%20Fe"))()
        end)
        Section:NewButton("Hair eater", "eat your hairs/hats", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/hair%20eater"))()
        end)

        Section:NewButton("Alter Hub Invisible (For PC)(Key B)", "Toggle press key B to invis/vis", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/pc%20invis"))()
        end)

        Section:NewButton("Alter Hub Invisible (For Mobile)", "makes u invis", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/mobile%20invis"))()
        end)
        Section:NewButton("Blink (Key z)", "Invisible blink", function()
            loadstring(game:HttpGet('https://pastebin.com/raw/4pc5Wx9E'))([[ Blink Script ]])
        end)

        Section:NewButton("Sound annoyer", "This will make some sound ppl hear it", function()
            --// Doesn't work if RespectFilteringEnabled is enabled
            print(game:GetService("SoundService").RespectFilteringEnabled)

            --// Get's every sound instance in workspace and play's it (Earrape btw)
            for _, sound in next, workspace:GetDescendants() do
            if sound:IsA("Sound") then
                sound:Play()
            end
            end
            end)
            Section:NewButton("Admin (infinite yield)", "EE", function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)
        -- script
        local Tab = Window:NewTab("Other Scripts")
        local Section = Tab:NewSection("Functions")
        Section:NewButton("Kill script (need to be close/near the players)", "need to be close/near the players", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/v8PX741z"))()
        end)
        Section:NewButton("Kill v2", "verosion 2", function()
        local ScreenGui = Instance.new("ScreenGui")
        local ui = Instance.new("Frame")
        local title = Instance.new("TextLabel")
        local Frame = Instance.new("Frame")
        local Username = Instance.new("TextBox")
        local Kill = Instance.new("TextButton")
        local cred = Instance.new("TextLabel")
        --Properties:
        ScreenGui.Parent = game:GetService("CoreGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ui.Name = "ui"
        ui.Parent = ScreenGui
        ui.Active = true
        ui.BackgroundColor3 = Color3.new(1, 1, 1)
        ui.BackgroundTransparency = 0.20000000298023
        ui.BorderSizePixel = 3
        ui.Position = UDim2.new(0.254972845, 0, 0.419703096, 0)
        ui.Size = UDim2.new(0, 535, 0, 283)
        title.Name = "title"
        title.Parent = ui
        title.BackgroundColor3 = Color3.new(1, 1, 1)
        title.BackgroundTransparency = 1
        title.BorderSizePixel = 2
        title.Position = UDim2.new(0, 0, 0.0199999996, 0)
        title.Size = UDim2.new(1, 0, 0, 50)
        title.Font = Enum.Font.SourceSans
        title.Text = "FE KILL"
        title.TextColor3 = Color3.new(0, 0, 0)
        title.TextScaled = true
        title.TextSize = 14
        title.TextWrapped = true
        Frame.Parent = title
        Frame.BackgroundColor3 = Color3.new(0, 0, 0)
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.25, 0, 0.860000014, 0)
        Frame.Size = UDim2.new(0.5, 0, 0, 3)
        Username.Name = "Username"
        Username.Parent = ui
        Username.BackgroundColor3 = Color3.new(1, 1, 1)
        Username.BorderSizePixel = 0
        Username.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
        Username.Size = UDim2.new(0.800000012, 0, 0, 50)
        Username.Font = Enum.Font.SourceSans
        Username.PlaceholderText = "Name"
        Username.Text = ""
        Username.TextColor3 = Color3.new(0, 0, 0)
        Username.TextScaled = true
        Username.TextSize = 14
        Username.TextWrapped = true
        Kill.Name = "Kill"
        Kill.Parent = ui
        Kill.BackgroundColor3 = Color3.new(1, 1, 1)
        Kill.BackgroundTransparency = 0.20000000298023
        Kill.BorderSizePixel = 2
        Kill.Position = UDim2.new(0.25, 0, 0.529999971, 0)
        Kill.Size = UDim2.new(0.5, 0, 0, 50)
        Kill.Font = Enum.Font.Gotham
        Kill.Text = "KILL"
        Kill.TextColor3 = Color3.new(0, 0, 0)
        Kill.TextScaled = true
        Kill.TextSize = 14
        Kill.TextWrapped = true
        cred.Name = "cred"
        cred.Parent = ui
        cred.BackgroundColor3 = Color3.new(1, 1, 1)
        cred.BackgroundTransparency = 1
        cred.BorderSizePixel = 2
        cred.Position = UDim2.new(0.0500000007, 0, 0.769999981, 0)
        cred.Size = UDim2.new(0.899999976, 0, 0, 50)
        cred.Font = Enum.Font.SourceSans
        cred.Text = "Credits to Cyclically, Thunder Mods"
        cred.TextColor3 = Color3.new(0, 0, 0)
        cred.TextScaled = true
        cred.TextSize = 14
        cred.TextWrapped = true
        ui.Draggable = true
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local function RemoveSpaces(String)
            return String:gsub("%s+", "") or String
        end
        local function FindPlayer(String)
            String = RemoveSpaces(String)
            for _, _Player in pairs(Players:GetPlayers()) do
                if _Player.Name:lower():match('^'.. String:lower()) then
                    return _Player
                end
            end
            return nil
        end
        Kill.MouseButton1Click:Connect(function()
            local Target = FindPlayer(Username.Text)
            if Target and Target.Character then
                local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
                local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
                Torso.Anchored = true
                local tool = Instance.new("Tool", LocalPlayer.Backpack)
                local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
                local hathandle = hat.Handle
                hathandle.Parent = tool
                hathandle.Massless = true
                tool.GripPos = Vector3.new(0, 9e99, 0)
                tool.Parent = LocalPlayer.Character
                repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
                tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
                Torso.Anchored = false
                repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
                until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
                LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
                hathandle.Parent = hat
                hathandle.Massless = false
                tool:Destroy()
                LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
            else
                warn'no player found named like that or he has no char'
            end
        end)
        end)
        Section:NewButton("Tiny ||UNDER DEVELOPMENT||", "Body Type - 0% Height - 90% Width - 70% Head - 100% Proportions - 100%", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/tiny"))()
        end)
        Section:NewButton("Tall (Titan)||UNDER DEVELOPMENT||", "BodyHeightScale: 105% BodyWidthScale: 100% HeadScale: 100% BodyProportionScale: 0% AvatarPartScaleType: 100%", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/titan"))()
        end)
        local Tab = Window:NewTab("Tools")
        local Section = Tab:NewSection("Functions")
        Section:NewButton("Punch tool(fling players)", "fling players", function()
        loadstring(game:HttpGet(('https://pastefy.ga/GvnHVjT5/raw'),true))()
        end)
        local Tab = Window:NewTab("RTX")
        local Section = Tab:NewSection("Choose Rtx")
        Section:NewButton("Alter Hub Offical RTX", "Offical RTX", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/Alter%20Hub%20RTX"))()
        end)
        local Tab = Window:NewTab("Settings")
        local Section = Tab:NewSection("Keybinds")
        Section:NewKeybind("Toggle gui", "on/off gui", Enum.KeyCode.F, function()
            Library:ToggleUI()
        end)
        Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
            print(color)
            -- Second argument is the default color
        end)

    end)
        
    
--other in uni scripts
UniversalSection:Button("Alter Hub Invisible (For PC)(Key B)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/pc%20invis"))()
end)
UniversalSection:Button("Alter Hub Invisible (For Mobile)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/mobile%20invis"))()
end)

Univer
UniversalSection:Label("Alter Hub RTX")  
UniversalSection:Button("Alter Hub Offical RTX", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/Alter%20Hub%20RTX"))()
end)

-- local player
    local walkspeedSlider
    local jumpHeightSlider
    local infiniteJumpEnabled = false
    local jumpRequestConnection
    local function setWalkSpeed(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
    local function setJumpHeight(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = value
    end
    walkspeedSlider = UniversalSection:Slider("Walkspeed (may not work for some games)", 16, 500, 16, function(value)
        setWalkSpeed(value)
    end)
    UniversalSection:Button("Reset WalkSpeed", function()
        local defaultValue = 16
        walkspeedSlider:Change(defaultValue)
        setWalkSpeed(defaultValue)
    end)
    jumpHeightSlider = UniversalSection:Slider("JumpHeight (may not work for some games)", 16, 350, 16, function(value)
        setJumpHeight(value)
    end)
    UniversalSection:Button("Reset JumpHeight", function()
        local defaultValue = 16
        jumpHeightSlider:Change(defaultValue)
        setJumpHeight(defaultValue)
    end)
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            -- Update WalkSpeed and JumpHeight continuously while dragging the slider
            setWalkSpeed(walkspeedSlider:GetValue())
            setJumpHeight(jumpHeightSlider:GetValue())
        end
    end)
    UniversalSection:Toggle("Inf Jump (may not work for some games)", false, function(enabled)
        infiniteJumpEnabled = enabled

        if infiniteJumpEnabled then
            jumpRequestConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
            end)
        else
            if jumpRequestConnection then
                jumpRequestConnection:Disconnect()
                jumpRequestConnection = nil
            end
        end
    end)
--uni scripts
    
    UniversalSection:Label("Scripts")  
    
    UniversalSection:Button("Flight", function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end)
    Univer
    UniversalSection:Button("Troll Face", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/saMtiek2", true))()
    end)
    Univer
    UniversalSection:Button("Infinity Yield", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
    Univer
    UniversalSection:Button("Dark Dex V5", function()
        local file = "dexV4.lua" -- cache file name (workspace folder)
        local url = "https://raw.githubusercontent.com/loglizzy/dexV4/main/source.lua"
        
        local raw = isfile and isfile(file) and readfile(file)
        raw = raw or game:HttpGet(url)
        
        if isfile then
            task.spawn(writefile, file, game:HttpGet(url))
        end
        
        loadstring(raw)()
    end)
    
    UniversalSection:Button("Dark Dex(MOBILE)", function()
        loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()   
    end)
    
    UniversalSection:Button("Simple Spy", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'))()
    end)
    
    UniversalSection:Label("Script Hubs")  
    
    UniversalSection:Button("Owl Hub(ESP/Aim Bot)", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
    end)
    
    UniversalSection:Button("Project Meow", function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Project-Meow_421"))()
    end)
    
    UniversalSection:Button("NukeVsCity Hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
    end)
    

--Project_Slayers
local Project_SlayersSection = AlterHub:Tab("Project Slayers")
Project_Slay
Project_SlayersSection:Label("Stat Boosters")

local isRengukoMode = false
    Project_SlayersSection:Toggle("Renguko Mode(Set Your Heart Ablaze)", false, function(enabled)

    isRengukoMode = enabled
    -- Check if auto buy is enabled
     if enabled then
        RengukoMode()
     else 
        local args = {
            [1] = false
        }

        game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(unpack(args))
    end
end)
    
function RengukoMode()
local args = {
        [1] = true
    }

    game:GetService("ReplicatedStorage").Remotes.heart_ablaze_mode_remote:FireServer(unpack(args))
end


local isThunderMode = false
    Project_SlayersSection:Toggle("Thunder Mode", false, function(enabled)

    isThunderMode = enabled
    -- Check if auto buy is enabled
     if enabled then
        ThunderMode()
     else 

        local args = {
            [1] = false
        }

        game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(unpack(args))

    end
end)
    
function ThunderMode()
    local args = {
        [1] = true
    }

    game:GetService("ReplicatedStorage").Remotes.thundertang123:FireServer(unpack(args))
end
local isInfStamina = false

Project_SlayersSection:Button("InfStamina", function()
    isInfStamina = enabled
    -- Check if auto buy is enabled
     if enabled then
        InfStamina()
     else 
        print("System Error Has Occoured Contact Dev Team Immidiatly")
    end

end)

function InfStamina()
    local old
    old = hookfunction(getrenv()._G.Stamina, function(self, ...)
       local args = {...}
       if typeof(args[1]) == "number" then
           args[1] = 0
       end
       return old(self, unpack(args))
    end)
end





local isAutoBuyEnabled = false -- Variable to track the toggle state

Project_SlayersSection:Label("Auto Buy")
Project_SlayersSection:Toggle("Auto Buy (Stand Infront of Item You Want To Buy)", false, function(enabled)
    isAutoBuyEnabled = enabled -- Update the toggle state

    -- Check if auto buy is enabled
    if enabled then
        AutoBuy()
    end
end)

-- Function to perform auto buy
function AutoBuy()
    local vim = game:GetService('VirtualInputManager')

    while isAutoBuyEnabled do
        vim:SendKeyEvent(true, Enum.KeyCode.E, false, game)
        wait() -- Wait for a short period before releasing the key
        vim:SendKeyEvent(false, Enum.KeyCode.E, false, game)
        wait() -- Wait before sending the key press again
    end
end




Project_Slay
Project_SlayersSection:Label("Scripts")


Project_SlayersSection:Button("Nuke HUB", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/Scripts2023/main/projslayerthingy"))()
end)
Project_Slay

Project_SlayersSection:Button("SYLVEON HUB", function()
    local LoaderUrl = "https://raw.githubusercontent.com/ogamertv12/SylveonHub/main/Mobile.lua"
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet(LoaderUrl))()
end)
Project_Slay
Project_SlayersSection:Button("PROJECT SLAYERS (VG)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()

end)
Project_Slay
Project_SlayersSection:Button("Lead Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LeadMarker/Scripts/main/ProjectSlayer.lua"))()
end)
Project_Slay
Project_SlayersSection:Button("Carly Hub (Invis Script)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lmmake/fun/main/projectslayer.lua"))()
end)
Project_Slay
Project_SlayersSection:Button("Oni Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaa4801/OniHubV3/main/OniHubV2.txt"))()
end)
Project_Slay


--Blox_Fruits
local Blox_FruitsSection = AlterHub:Tab("Blox Fruits")

Blox_FruitsSection:Button("OP BF Script", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/bloxfruit/main/free'))()
end)
Blox_Fru
Blox_FruitsSection:Button("Thunder Hub", function()
 _G.ThunderVersion = "Mobile"
 loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Script"))()
end)
Blox_Fru
Blox_FruitsSection:Button("Ho-Ho Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)
Blox_Fru

Blox_FruitsSection:Button("Auto Farm", function()
    _G.Color = Color3.fromRGB(0, 255, 17)
 loadstring(game:HttpGet(("https://raw.githubusercontent.com/PowerxCANDYYY/BFFREE/main/POWERX.lua"), true))()
end)
Blox_Fru

Blox_FruitsSection:Button("Lunar Hub", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Cve-Hub/LnHub/main/README.md'))()
end)
Blox_Fru

Blox_FruitsSection:Button("Maruko Hub", function()
    loadstring(game:HttpGet"https://mukuroxquartyz.xyz/Lua/script.lua")()
end)
Blox_Fru

Blox_FruitsSection:Button("Black Trap", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BdvUGb2q"))()
end)
Blox_Fru

-- DOORS
local DOORSSection = AlterHub:Tab("DOORS")
DO

DOORSSection:Button("Cherry hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors-Hub/main/Hub%202.1"))()
end)
DO
DOORSSection:Button("DOORS Script-2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/Doors"))()
end)
DO
DOORSSection:Button("MSDOORS", function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua"), true))()
end)
DO
DOORSSection:Button("Project-WD", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Mainstring.lua"))()
end)
DO
DOORSSection:Button("POOPDOORS", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/zoophiliaphobic/POOPDOORS/main/script.lua'))()
end)



--BROOKHEAVEN
local BROOKHEAVENSection = AlterHub:Tab("BROOKHEAVEN")
BROOKHEA
BROOKHEAVENSection:Button("ADMIN PANEL", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
BROOKHEA
BROOKHEAVENSection:Button("BROOKHEAVEN Script (RANDOM)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven'))()
end)
BROOKHEA
--shindo_life
local shindo_lifeSection = AlterHub:Tab("Shindo life")
shindo_l
shindo_lifeSection:Button("Shindo Life Script", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PremierHub/Data/main/code.lua"))()
end)
shindo_l

--King_Legacy
local King_LegacySection = AlterHub:Tab("King Legacy")
King_Leg

King_LegacySection:Button("HO-HO HUB", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end)
King_Leg
King_LegacySection:Button("OP-KL", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/bloxfruit/main/free'))()
end)
King_Leg
King_LegacySection:Button("Muruko Hub", function()
    loadstring(game:HttpGet("https://mukuroxquartyz.xyz/Lua/script.lua"))()
end)
King_Leg

-- DA_HOOD
local DA_HOODSection = AlterHub:Tab("DA HOOD")
DA_H
DA_HOODSection:Button("INF HEALTH", function()
    local Player = game.Players.LocalPlayer
    Player.Character.Humanoid.Health = math.huge
end)
DA_H
DA_HOODSection:Button("SUPER JUMP", function()
    local Player = game.Players.LocalPlayer
    Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    Player.Character.Humanoid.JumpPower = 100
end)
DA_H
DA_HOODSection:Button("FLY", function()
    local Player = game.Players.LocalPlayer
    Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait()
    Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
end)
DA_H


--Arsenal
local ArsenalSection = AlterHub:Tab("Arsenal")
Arse
ArsenalSection:Button("Aimbot", function()
    local Players = game:GetService("Players")

    local function Aimbot()
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                local head = player.Character.Head
                local target = head.Position + Vector3.new(0, 1, 0)
                
                game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.Position, target)
            end
        end
    end
    
    while true do
        wait(0.1)
        Aimbot()
    end
end)
Arse
ArsenalSection:Button("inf damage", function()
    local DamageValue = math.huge

    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(DamageValue)
end)
Arse

--Flee_The_Facility
local Flee_The_FacilitySection = AlterHub:Tab("Flee The Facility")
Flee_The_Facil
Flee_The_FacilitySection:Button("Flee The Facility", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Drifty96/ftfgui/main/ftfgui", true))()
end)
Flee_The_Facil


--ASTD

local ASTDSection = AlterHub:Tab("All Star Tower Defense")
A
ASTDSection:Label("KeyLess")  

ASTDSection:Button("Trap Hub", function()
    repeat task.wait() until game:IsLoaded()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrapstarKSSKSKSKKS/Main/main/TrapHub.lua"))()-- Load Notification
end)    
A
ASTDSection:Label("With KeySystem")   
ASTDSection:Button("karmapanda (WITH KEY)", function()
    repeat task.wait() until game:IsLoaded()

    loadstring(game:HttpGet('https://script.karmapanda.dev/'))()
end)
A
--Ninja_Tycoon
local Ninja_TycoonSection = AlterHub:Tab("Ninja Tycoon")
Ninja_Tyc
Ninja_TycoonSection:Button("auto steal auto collect and more", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/omokom55/FreeScripts/main/Ninja%20Tycoon", true))()
end)
Ninja_Tyc

Ninja_TycoonSection:Button("Ninja Tycoon", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/omokom55/FreeScripts/main/Ninja%20Tycoon", true))()
end)
Ninja_Tyc

Ninja_TycoonSection:Button("Dragon hub (KEY SYSTEM)", function()
    loadstring(game:HttpGet"https://thedragonslayer2.github.io")()
    end)
    Ninja_Tyc

--FNAF_CO-OP
local FNAFSection = AlterHub:Tab("FNAF CO-OP")
F

FNAFSection:Button("FNAF: Coop | Animatronic Esp, Infinite Sprint & More", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Asphronium/FnafCo-opGUI/main/fnafCo-opGUI.lua"))()
end)
F

--Red vs Blue Plane Wars Script
local RVBSection = AlterHub:Tab("Red vs Blue Plane Wars Script")


RVBSection:Button("it works when pistol is equipped!!!!!!!!!!!!!!!!!!!!!!!!", function()
    while wait() do
        pcall(function()
            for i,v in pairs(game.Players:GetPlayers()) do
            
                if v.Team ~= game.Players.LocalPlayer.Team and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("ForceField") == nil then
                    local args = {
                        [1] = v.Character.Head,
                    [2] = v.Character.Head.Position
                        }
        
                game:GetService("Players").LocalPlayer.Character.Pistol.FireNow:FireServer(unpack(args))
                end
            end
        end)
    end
end)



--Anime Adventures
local AnimeAdventuresSection = AlterHub:Tab("Anime Adventures")
AnimeAdventu

AnimeAdventuresSection:Button("Anime Adventures [GUI - Full Auto Farm & More!]", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ArponAG/Scripts/main/AnimeAdventures.lua"))()
end)
AnimeAdventu

--welcome message
Library:Notification("Welcome", "Alter-hub GUI loaded!", "Continue")