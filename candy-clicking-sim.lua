local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Candy Clicking Simulator", "Synapse")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Autofarm")


MainSection:NewToggle("Autoclicker", "Clicks for you :skull:", function(state)
    if state then
        getgenv().clicker = true;

        while wait() do
            if getgenv().clicker == true then
                 game:GetService("ReplicatedStorage").Events.ClickEvent:InvokeServer()
            end
        end
        else
        getgenv().clicker = false;

        while wait() do
            if getgenv().clicker == true then
                 game:GetService("ReplicatedStorage").Events.ClickEvent:InvokeServer()
            end
        end
        end
end)

MainSection:NewToggle("Auto Rebirth", "Auto Rebirths for you", function(state)
    if state then
        getgenv().rebirther = true;

while wait() do
	if getgenv().rebirther == true then
         local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(unpack(args))
	end
end
    else
        getgenv().rebirther = false;

while wait() do
	if getgenv().rebirther == true then
         local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(unpack(args))
	end
end
    end
end)


--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("Walkspeed", "SPEED1!11!!", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumppower", "JUMP11!!1!", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

--MISC
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

Section:NewButton("AntiAFK", "AntiAfk", function()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--CREDITS
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")

CreditsSection:NewLabel("Made by 1cey#0808")
