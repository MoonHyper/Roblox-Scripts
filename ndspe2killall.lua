if not game.Players.LocalPlayer.Character.M1911 then
    local tool = game.Players.LocalPlayer.Backpack.M1911
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
end 

while wait(0.1) do
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
local args = {
    [1] = game:GetService("Players").LocalPlayer.Character.M1911,
    [2] = game:GetService("Players").LocalPlayer,
    [3] = v.Character.Humanoid,
    [4] = v.Character.HumanoidRootPart,
    [5] = 100,
    [6] = {
        [1] = 0,
        [2] = 0,
        [3] = false,
        [4] = false,
        [5] = game:GetService("Players").LocalPlayer.Character.M1911.GunScript_Server.IgniteScript,
        [6] = game:GetService("Players").LocalPlayer.Character.M1911.GunScript_Server.IcifyScript,
        [7] = 100,
        [8] = 100
    },
    [7] = {
        [1] = false,
        [2] = 100,
        [3] = 3
    },
    [8] = v.Character.Torso,
    [9] = {
        [1] = false,
        [2] = {
            [1] = 1930359546
        },
        [3] = 1,
        [4] = 1.5,
        [5] = 1
    }
}

game:GetService("ReplicatedStorage").InflictTarget:InvokeServer(unpack(args))
end
end
