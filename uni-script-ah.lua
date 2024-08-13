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

	-- Add Labels, Sliders, Buttons, and Toggles
	local Section = Tabs.UniversalTab:AddSection("Player Scripts")
	Tabs.UniversalTab:AddParagraph({
		Title = "Player",
		Content = ""
	})

	walkspeedSlider = Tabs.UniversalTab:AddSlider("Walkspeed", {
		Title = "Walkspeed",
		Min = 16,
		Max = 500,
		Default = 16,
		Rounding = 1,
		Callback = function(value)
			setWalkSpeed(value)
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Reset WalkSpeed",
		Callback = function()
			local defaultValue = 16
			walkspeedSlider:SetValue(defaultValue)
			setWalkSpeed(defaultValue)
		end
	})

	jumpHeightSlider = Tabs.UniversalTab:AddSlider("JumpHeight", {
		Title = "JumpHeight",
		Min = 16,
		Max = 350,
		Default = 16,
		Rounding = 1,
		Callback = function(value)
			setJumpHeight(value)
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Reset JumpHeight",
		Callback = function()
			local defaultValue = 16
			jumpHeightSlider:SetValue(defaultValue)
			setJumpHeight(defaultValue)
		end
	})

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			-- Update WalkSpeed and JumpHeight continuously while dragging the slider
			setWalkSpeed(walkspeedSlider:GetValue())
			setJumpHeight(jumpHeightSlider:GetValue())
		end
	end)

	Tabs.UniversalTab:AddToggle("Inf Jump", {
		Title = "Inf Jump",
		Default = false,
		Callback = function(enabled)
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
		end
	})
	local function noclip()
		if plr.Character then
			for _, v in pairs(plr.Character:GetDescendants()) do
				if v:IsA("BasePart") and v.CanCollide == true then
					v.CanCollide = false
				end
			end
		end
	end
	local Toggle = Tabs.UniversalTab:AddToggle("MyToggle", 
	{
		Title = "No Clip", 
		Description = "",
		Default = false,
		Callback = function(v)
		if v then
				noclipT = game:GetService("RunService").Stepped:Connect(noclip)
			else
				if noclipT then
					noclipT:Disconnect()
				end
			end
		end 
	})
	local Slider = Tabs.UniversalTab:AddSlider("Slider", 
	{
		Title = "FOV Changer",
		Description = "",
		Default = 80,
		Min = 80,
		Max = 120,
		Rounding = 0,
		Callback = function(Value)
			game.Workspace.CurrentCamera.FieldOfView = Value
		end
	})
	local Section = Tabs.UniversalTab:AddSection("Servers")

	Tabs.UniversalTab:AddButton({
		Title = "Rejoin",
		Callback = function()
			repeat
				wait()
			until game:IsLoaded()
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Server Hop",
		Callback = function()
			Time = 1 -- seconds
			repeat wait() until game:IsLoaded()
			wait(Time)
			local PlaceID = game.PlaceId
			local AllIDs = {}
			local foundAnything = ""
			local actualHour = os.date("!*t").hour
			local Deleted = false
			function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									delfile("NotSameServers.json")
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
			end
			
			function Teleport()
			while wait() do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
			end
			
			-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
			Teleport()
		end
	})

	local Section = Tabs.UniversalTab:AddSection("Alter Hub Exclusives")
	Tabs.UniversalTab:AddButton({
		Title = "Flight",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Hub/main/Alter_fly.lua"))()
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Alter-Troll-Hub",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Hub/main/Alter-Troll-Hub.lua"))()
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Alter Hub Offical RTX",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/Alter%20Hub%20RTX"))()
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Alter Hub Invisible (For PC)[May Not Work For Some Games]",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Hub/main/Alter-invis.lua"))()
		end
	})

	Tabs.UniversalTab:AddButton({
		Title = "Alter Hub Invisible (For Mobile)",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AlterX404/Alter-Troll-Hub/main/mobile%20invis"))()
		end
	})
	

	SaveManager:SetLibrary(Library)
	InterfaceManager:SetLibrary(Library)


	SaveManager:IgnoreThemeSettings()

	SaveManager:SetIgnoreIndexes({})
	InterfaceManager:SetFolder("FluentScriptHub")
	SaveManager:SetFolder("FluentScriptHub/specific-game")

	InterfaceManager:BuildInterfaceSection(Tabs.Settings)
	SaveManager:BuildConfigSection(Tabs.Settings)


	Window:SelectTab(1)
	SaveManager:LoadAutoloadConfig()
	Fluent:Notify({
		Title = "Alter Hub",
		Content = "Alter Hub has loaded successfully.",
		Duration = 8
	})
