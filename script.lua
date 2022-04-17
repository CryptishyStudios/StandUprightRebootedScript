getgenv().itemFarm = false;
getgenv().autoStand = false;

function itemFarm()
    spawn(function()
        while wait() do
            if not getgenv().itemFarm then break end
            if #workspace.Items:GetChildren() ~= 0 then
                for i,v in pairs(workspace.Items:GetChildren()) do
                    if not getgenv().itemFarm then break end
                    wait(0.5)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Handle.Position + Vector3.new(0,3,0))
                end 
            end
        end
    end)
end

function autoStand()
    spawn(function()
        while wait(1) do
            if not getgenv().autoStand then break end
            if game.Players.LocalPlayer.Data.Stand.Value == "None" then
                if game.Players.LocalPlayer.Character:FindFirstChild("Stand Arrow") then
                else
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Stand Arrow").Parent = game.Players.LocalPlayer.Character
                end
                wait()
                game.Players.LocalPlayer.Character:FindFirstChild("Stand Arrow").Use:FireServer();
                wait(2)
                for i,v in pairs(Stands) do
                    if game.Players.LocalPlayer.Data.Stand.Value == v then break end
                end
                for i,v in pairs(Attributes) do
                    if game.Players.LocalPlayer.Data.Attri.Value == v then break end
                end
            else
                if game.Players.LocalPlayer.Character:FindFirstChild("Rokakaka") then
                else
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Rokakaka").Parent = game.Players.LocalPlayer.Character
                end
                wait()
                game.Players.LocalPlayer.Character:FindFirstChild("Rokakaka").Use:FireServer();
            end
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Stand Upright") -- Creates the window

local b = w:CreateFolder("Farm") -- Creates the folder(U will put here your buttons,etc)

local c = w:CreateFolder("NPC Teleport")

local d = w:CreateFolder("NPC Teleport 2")

b:Toggle("Toggle Item Farm",function(bool)
    getgenv().itemFarm = bool
    print('Item Farm is:', bool);
    if bool then
        itemFarm()
    end
end)

b:Toggle("Toggle Stand Farm",function(bool)
    getgenv().autoStand = bool
    print("Stand farm is: ", bool);
    if bool then
        autoStand()
    end
end)








--// NPC Teleport
c:Button("Bouncer", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Bouncer"].HumanoidRootPart.CFrame
end)

c:Button("admpn", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["admpn"].HumanoidRootPart.CFrame
end)

c:Button("Giorno", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Giorno Giovanna lvl 1 Quest"].HumanoidRootPart.CFrame
end)

c:Button("Koichi", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Koichi lvl 5 Quest"].HumanoidRootPart.CFrame
end)

c:Button("Noob", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Noob lvl 10 Quest"].HumanoidRootPart.CFrame
end)

c:Button("aLLmemester", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["allMemester lvl 15+ quest"].Person.HumanoidRootPart.CFrame
end)

c:Button("Young Joseph", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Young Joseph Quest lvl 25+"].HumanoidRootPart.CFrame
end)

c:Button("Okuyasu", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Okuyasu Quest lvl 30+"].HumanoidRootPart.CFrame
end)

c:Button("Josuke", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Josuke Quest lvl 40+"].HumanoidRootPart.CFrame
end)

c:Button("Rohan", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Rohan Quest lvl 50+"].HumanoidRootPart.CFrame
end)

c:Button("Dio", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Dio quest lvl 65+"].HumanoidRootPart.CFrame
end)

c:Button("Avdol", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Avdol lvl 75+"].HumanoidRootPart.CFrame
end)

c:Button("Boss Giorno", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Boss Giorno Giovanna lvl 90 Quest"].HumanoidRootPart.CFrame
end)

d:Button("i_stabman", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["i_stabmanstorage1"].HumanoidRootPart.CFrame
end)

d:Button("i_stabman lvl 15", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["i_stabman lvl 15 lair"].HumanoidRootPart.CFrame
end)

d:Button("i_stabman lvl 40", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["i_stabman lvl 40 lair"].HumanoidRootPart.CFrame
end)

d:Button("i_stabman lvl 80", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["i_stabman lvl 80 lair"].HumanoidRootPart.CFrame
end)

d:Button("i_stabman lvl 90", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["i_stabman lvl 90 sanctum"].HumanoidRootPart.CFrame
end)

d:Button("i_stabman lvl 100", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["i_stabman lvl 100 lair"].HumanoidRootPart.CFrame
end)

d:Button("d0ge_316sBrother", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["dogebrothershopmerchant"].HumanoidRootPart.CFrame
end)

d:Button("SWAT", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Swat Guy lvl 55+"].HumanoidRootPart.CFrame
end)

d:Button("d0ge_316sBrother 2", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["dogebrotherAU"].HumanoidRootPart.CFrame
end)

d:Button("MMLGG_316", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["mmlgg316merchant"].HumanoidRootPart.CFrame
end)

d:Button("Hamon Dealer", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["hamon npc"].HumanoidRootPart.CFrame
end)

d:Button("Vehicle Man", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["Vehicle man"].HumanoidRootPart.CFrame
end)

d:Button("Umbrella Seller", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["umbrella npc"].HumanoidRootPart.CFrame
end)

d:Button("Homeless Man", function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Npcs["homelessmerchant"].HumanoidRootPart.CFrame
end)
