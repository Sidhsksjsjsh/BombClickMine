local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local Tab1 = Window:AddTab("Farm")
local Tab2 = Window:AddTab("Egg")

local ZoneScript_ = Tab1:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

local _ZoneScript = Tab2:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

ZoneScript_:Set("Selected Zone: 1")
_ZoneScript:Set("Selected Egg Number: 1")

local ZoneTab1 = Tab1:AddDropdown("Select Zones", function(object)
    _G.Zone = object
   ZoneScript_:Set("Selected Zone: " .. object) 
end)

ZoneTab1:Add("1")
ZoneTab1:Add("2")
ZoneTab1:Add("3")
ZoneTab1:Add("4")
ZoneTab1:Add("5")
ZoneTab1:Add("6")
ZoneTab1:Add("7")

Tab1:AddSwitch("Auto train", function(bool)
    _G.Train = bool
    while wait() do
      if _G.Train == false then break end
      if _G.Zone == "1" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(1)
      end
      if _G.Zone == "2" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(2)
      end
      if _G.Zone == "3" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(3)
      end
      if _G.Zone == "4" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(4)
      end
      if _G.Zone == "5" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(5)
      end
      if _G.Zone == "6" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(6)
      end
      if _G.Zone == "7" then
      game:GetService("ReplicatedStorage").Remote.Mine.AddTrain:FireServer(7)
      end
     end
end)

local RaycastZones = 0

Tab1:AddSwitch("Auto bomb", function(bool)
    _G.Bomb = bool
    while wait() do
      if _G.Bomb == false then break end
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 1)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 2)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 3)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 4)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 5)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 6)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 7)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 8)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 9)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 10)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 11)
      game:GetService("ReplicatedStorage").Remote.Mine.HitBlock:FireServer(RaycastZones, 12)
      if _G.Zone == "1" then
        RaycastZones = 1
      end
      if _G.Zone == "2" then 
        RaycastZones = 2
      end
      if _G.Zone == "3" then
        RaycastZones = 3
      end
      if _G.Zone == "4" then
        RaycastZones = 4
      end
      if _G.Zone == "5" then 
        RaycastZones = 5
      end
      if _G.Zone == "6" then 
        RaycastZones = 6
      end
      if _G.Zone == "7" then 
        RaycastZones = 7
      end
   end
end)

Tab1:AddSwitch("Auto rebirth", function(bool)
    _G.Reb = bool
    while wait() do
      if _G.Reb == false then break end
      game:GetService("ReplicatedStorage").Remote.Mine.RebirthRequest:InvokeServer()
    end
end)

Tab1:AddSwitch("Auto win", function(bool)
    _G.Win = bool
    while wait() do
      if _G.Win == false then break end
      if _G.Zone == "1" then
           if not game:GetService("Workspace").Mine["1"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(1)
         end
      end
      if _G.Zone == "2" then
           if not game:GetService("Workspace").Mine["2"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(2)
         end
      end
      if _G.Zone == "3" then
           if not game:GetService("Workspace").Mine["3"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(3)
         end
      end
      if _G.Zone == "4" then
           if not game:GetService("Workspace").Mine["4"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(4)
         end
      end
      if _G.Zone == "5" then
           if not game:GetService("Workspace").Mine["5"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(5)
         end
      end
      if _G.Zone == "6" then
           if not game:GetService("Workspace").Mine["6"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(6)
         end
      end
      if _G.Zone == "7" then
           if not game:GetService("Workspace").Mine["7"].Block:FindFirstChild(12) then
                  game:GetService("ReplicatedStorage").Remote.Mine.CheckIfWin:FireServer(7)
         end
      end
     end
end)

Tab1:AddSwitch("Auto craft", function(bool)
        _G.Merge = bool
        while wait() do
            if _G.Merge == false then break end
            game:GetService("ReplicatedStorage").Remote.Pet.PetCraft:InvokeServer(math.random(75))
    end
end)

Tab1:AddSwitch("Auto gift", function(bool)
        _G.Gift_1 = bool
        while wait() do
            if _G.Gift_1 == false then break end
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(1)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(2)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(3)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(4)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(5)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(6)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(7)
            game:GetService("ReplicatedStorage").Remote.Online.TryGetOnlineGift:InvokeServer(8)
    end
end)

Tab1:AddButton("Teleport to selected zone", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").World[_G.Zone].Deco.Part.Position)
end)

local EggTab = Tab2:AddDropdown("Select Egg number", function(object)
    _G.Shit = tonumber(object)
   _ZoneScript:Set("Selected Egg Number: " .. object) 
end)

EggTab:Add("1")
EggTab:Add("2")
EggTab:Add("3")
EggTab:Add("4")
EggTab:Add("5")
EggTab:Add("6")
EggTab:Add("7")
EggTab:Add("8")
EggTab:Add("9")
EggTab:Add("10")
EggTab:Add("11")
EggTab:Add("12")
EggTab:Add("13")
EggTab:Add("14")

local RaycastNumber = 0

local Multiple = {
       Delete_1 = 0,
       Delete_2 = 0,
       Delete_3 = 0,
       Delete_4 = 0,
       Delete_5 = 0,
       Delete_6 = 0
    }

Tab2:AddTextBox("Delete 1 (Pet number)", function(text)
        Multiple.Delete_1 = tonumber(text)
end)

Tab2:AddTextBox("Delete 2 (Pet number)", function(text)
        Multiple.Delete_2 = tonumber(text)
end)

Tab2:AddTextBox("Delete 3 (Pet number)", function(text)
        Multiple.Delete_3 = tonumber(text)
end)

Tab2:AddTextBox("Delete 4 (Pet number)", function(text)
        Multiple.Delete_4 = tonumber(text)
end)

Tab2:AddTextBox("Delete 5 (Pet number)", function(text)
        Multiple.Delete_5 = tonumber(text)
end)

Tab2:AddTextBox("Delete 6 (Pet number)", function(text)
        Multiple.Delete_6 = tonumber(text)
end)

Tab2:AddSwitch("Auto egg", function(bool)
    _G.Balls = bool
    while wait() do
      if _G.Balls == false then break end
      local args = {
    [1] = _G.Shit,
    [2] = "Open3",
    [3] = {
        [1] = Multiple.Delete_1,
        [2] = Multiple.Delete_2,
        [3] = Multiple.Delete_3,
        [4] = Multiple.Delete_4,
        [5] = Multiple.Delete_5,
        [6] = Multiple.Delete_6
    }
}

game:GetService("ReplicatedStorage").Remote.Hatch.EggHatch:InvokeServer(unpack(args))
      end
  end)

Tab2:AddSwitch("Auto equip best", function(bool)
        _G.AutoEquip = bool
        while wait() do
            if _G.AutoEquip == false then break end
            game:GetService("ReplicatedStorage").Remote.Pet.EquipBest:FireServer()
    end
end)
