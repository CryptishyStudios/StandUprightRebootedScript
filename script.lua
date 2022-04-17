--ts:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(1),{["CFrame"]=workspace.Items:FindFirstChild("Stand Arrow")})

--// Services
local TweenService = game:GetService("TweenService")

--// Variables

--// Functions

--/ Item Farm Function
function itemFarm()
    spawn(function()
        while wait() do
            if not getgenv().itemFarm then break end
            if #workspace.Items:GetChildren() ~= 0 then         --Check if size is not 0
                for i,v in pairs(workspace.Items:GetChildren()) do
                    if not getgenv().itemFarm then break end
                    local a = v.Handle.Position
                    tp(a.X, a.Y, a.Z)
                    wait(0.5)
                end 
            end
        end
    end)
end

--// Auto Stand Function
function autoStand()
    spawn(function()
        while wait(1) do
            if not getgenv().autoStand then break end
            if game.Players.LocalPlayer.Data.Stand.Value == "None" then                                                                 --Checks if stand is none or not
                if game.Players.LocalPlayer.Character:FindFirstChild("Stand Arrow") then                                                --If its none use arrow
                else
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Stand Arrow").Parent = game.Players.LocalPlayer.Character
                end
                wait()
                game.Players.LocalPlayer.Character:FindFirstChild("Stand Arrow").Use:FireServer();
                wait(2)
                for i,v in pairs(_G.stands) do                                                                                          --Check if it matches
                    if game.Players.LocalPlayer.Data.Stand.Value == v then 
                        print("stands match!")
                        return
                    end
                end
                for i,v in pairs(_G.attributes) do                                                                                      --Check if it matches
                    if game.Players.LocalPlayer.Data.Attri.Value == v then      
                        print("attributes match!")
                        return
                    end
                end
            else
                if game.Players.LocalPlayer.Character:FindFirstChild("Rokakaka") then                                                   --If already have stand use roka
                else
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Rokakaka").Parent = game.Players.LocalPlayer.Character
                end
                wait()
                game.Players.LocalPlayer.Character:FindFirstChild("Rokakaka").Use:FireServer();
            end
        end
    end)
end

function tp(x,y,z)
    -- SETTINGS START
    local valtomove = 15
    noclip = true
    anchored = false
    -- SETTINGS END
    
    
    moving = true
    if x < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then
    while x < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
    end
    end
    if z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then
    while z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z-valtomove))
    end
    end
    if x > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then
    while x > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
    end
    end
    if z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then
    while z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z+valtomove))
    end
    end
    if y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then
    while y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
    end
    end
    if y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then
    while y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
    end
    end
    moving = false
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,y,z))
    if anchored == true then
    game.Players.LocalPlayer.Character.Head.Anchored = false
    end
    end
    
    spawn (function()
    game:GetService("RunService"):BindToRenderStep("",0,function()
    if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
    if moving == true then
    if noclip == true then
    game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
    end
    if anchored == true then
        game.Players.LocalPlayer.Character.Head.Anchored = true
    end
    end
    end)
end)



--// Define colors of UI
local colors = {
    SchemeColor = Color3.fromRGB(64, 64, 64),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
--// Get the Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
--// Create Windows
local Window = Library.CreateLib("Stand Upright: Rebooted", colors)
--// Create Tabs
local FarmTab = Window:NewTab("Auto Farm")
local LocalPlayerTab = Window:NewTab("Local Player")
--// Create Sections
local TeleportSection = LocalPlayerTab:NewSection("Teleport")
local MiscSection = LocalPlayerTab:NewSection("Misc")
local FarmSection1 = FarmTab:NewSection("Auto Farm")

--// Toggle for Item farm
FarmSection1:NewToggle("Toggle Item Farm", "Activate/Deactivate Item Farm Feature", function(bool)
    getgenv().itemFarm = bool
    print("Item Farm is: ", bool)
    if bool then
        itemFarm()
    end
end)

FarmSection1:NewToggle("Toggle Auto Stand Farm", "Activate/Deactivate Auto Stand Feature", function(bool)
    getgenv().autoStand = bool
    print("Item Farm is: ", bool)
    if bool then
        autoStand()
    end
end)

MiscSection:NewToggle("Disable Seats", "Disable/Enable Seats (Helpful for Item Farm)", function(bool)
    getgenv().seats = bool
    print("Seats are: ", bool)
    if bool then
        for i,v in pairs(workspace.Map.Model["Best Restruant"]:GetChildren()) do
            for ii,vv in pairs(v:GetChildren()) do
                if vv.Name == "Seat" then
                    vv.Disabled = true
                end
            end
        end

        for i,v in pairs(workspace.Map.Model["Picnic bench"]:GetChildren()) do
            if v.Name == "Seat" then
                v.Disabled = true
            end
        end
    else
        for i,v in pairs(workspace.Map.Model["Best Restruant"]:GetChildren()) do
            for ii,vv in pairs(v:GetChildren()) do
                if vv.Name == "Seat" then
                    vv.Disabled = false
                end
            end
        end

        for i,v in pairs(workspace.Map.Model["Picnic bench"]:GetChildren()) do
            if v.Name == "Seat" then
                v.Disabled = false
            end
        end
    end
end)
