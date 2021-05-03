-- gui to lua version 1337

local omgplayer = Instance.new("ScreenGui")
local iscringe = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local kill = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local user = Instance.new("TextBox")
local killall = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

omgplayer.Name = "omgplayer"
omgplayer.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
omgplayer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
omgplayer.ResetOnSpawn = false

iscringe.Name = "iscringe"
iscringe.Parent = omgplayer
iscringe.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
iscringe.Position = UDim2.new(0.600681961, 0, 0.179849982, 0)
iscringe.Size = UDim2.new(0, 493, 0, 307)
iscringe.Draggable = true
iscringe.Active = true
iscringe.Selectable = true

UICorner.Parent = iscringe

kill.Name = "kill"
kill.Parent = iscringe
kill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
kill.Position = UDim2.new(0.0527383238, 0, 0.674267113, 0)
kill.Size = UDim2.new(0, 200, 0, 50)
kill.Font = Enum.Font.SourceSansBold
kill.Text = "Kill!"
kill.TextColor3 = Color3.fromRGB(0, 0, 0)
kill.TextSize = 20.000

UICorner_2.Parent = kill

user.Name = "user"
user.Parent = iscringe
user.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
user.Position = UDim2.new(0.135902628, 0, 0.260586321, 0)
user.Size = UDim2.new(0, 359, 0, 50)
user.Font = Enum.Font.SourceSansBold
user.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
user.PlaceholderText = "Player Name"
user.Text = ""
user.TextColor3 = Color3.fromRGB(0, 0, 0)
user.TextSize = 25.000

killall.Name = "killall"
killall.Parent = iscringe
killall.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
killall.Position = UDim2.new(0.539553761, 0, 0.674267113, 0)
killall.Size = UDim2.new(0, 200, 0, 50)
killall.Font = Enum.Font.SourceSansBold
killall.Text = "Kill All!"
killall.TextColor3 = Color3.fromRGB(0, 0, 0)
killall.TextSize = 20.000

UICorner_3.Parent = killall


local function MKOKOR_fake_script() 
	local script = Instance.new('LocalScript', kill)

	script.Parent.MouseButton1Click:Connect(function()
		local username = script.Parent.Parent.user.Text
		
		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			local args = {
				[1] = "hit",
				[2] = "}, {  ",
				[3] = 100,
				[4] = game.Players[username].Character:FindFirstChild("Humanoid"),
				[5] = game.Players[username].Character:FindFirstChild("Head"),
				[6] = 1.6,
				[7] = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position),
				[8] = 3.3897445201874
			}
	
			game:GetService("ReplicatedStorage").ChatSystemGetMessage:InvokeServer(unpack(args))
		end
	end)
end
coroutine.wrap(MKOKOR_fake_script)()
local function ORPVP_fake_script() 
	local script = Instance.new('LocalScript', killall)

	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game:GetService("Players"):GetPlayers()) do
			local args = {
				[1] = "hit",
				[2] = "}, {  ",
				[3] = 100,
				[4] = v.Character:FindFirstChild("Humanoid"),
				[5] = v.Character:FindFirstChild("Head"),
				[6] = 1.6,
				[7] = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position),
				[8] = 3.3897445201874
			}
	
			game:GetService("ReplicatedStorage").ChatSystemGetMessage:InvokeServer(unpack(args))
		end
	end)
end
coroutine.wrap(ORPVP_fake_script)()
