local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24)
				Reboundcolor.Name = "Warn"
				Reboundcolor.TintColor = Color3.fromRGB(65, 138, 255) Reboundcolor.Saturation = -0.7 Reboundcolor.Contrast = 0.2
				game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
local cue1 = Instance.new("Sound")
cue1.Parent = game.Workspace
cue1.Name = "Scream"
cue1.SoundId = "rbxassetid://78206015664727"
local distort = Instance.new("DistortionSoundEffect")
distort.Parent = cue1
distort.Level = 1
local distort2 = Instance.new("DistortionSoundEffect")
distort2.Parent = cue1
distort2.Level = 1
local pitch = Instance.new("PitchShiftSoundEffect")
pitch.Parent = cue1
pitch.Octave = 0.5
local pitch2 = Instance.new("PitchShiftSoundEffect")
pitch2.Parent = cue1
pitch2.Octave = 0.5
local pitch3 = Instance.new("PitchShiftSoundEffect")
pitch3.Parent = cue1
pitch3.Octave = 0.5
cue1.Volume = 0.1
cue1:Play()
local cue2 = Instance.new("Sound")
cue2.Parent = game.Workspace
cue2.Name = "Spawn"
cue2.SoundId = "rbxassetid://78206015664727"
cue2.Volume = 3
cue2:Play()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
	camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,3,0.1,6,2,0.5)
wait(2.8)

function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end

local scare = Instance.new("Sound")
scare.Parent = game.Workspace
scare.Name = "MyEarsBurn"
scare.SoundId = "rbxassetid://78206015664727"
scare.PlaybackSpeed = 3
scare.Volume = 1

local shift = Instance.new("PitchShiftSoundEffect")
shift.Octave = 0.5
shift.Parent = scare

local distort = Instance.new("DistortionSoundEffect")
distort.Parent = scare
distort.Level = 1

local TweenService = game:GetService("TweenService")
local spookee = TweenService:Create(scare, TweenInfo.new(0.3),{Volume = 0})

local Creator =  loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/OtherSuff/DoorEntitySpawn%2BSource'))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Terror", -- Custom name of your entity
    Model = "rbxassetid://12211589817", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 1.4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    KillRange = 100,
    BackwardsMovement = true,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 10
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "https://www.roblox.com/library/12211589817", -- Image1 url
            Image2 = "https://www.roblox.com/library/12211589817", -- Image2 url
            Shake = false,
            Sound1 = {
                78206015664727, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                78206015664727, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(255, 255, 0), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 10,
            },
        },
    },
    CustomDialog = {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity:", entity, "has entered room:", room)
    Speed = 500
    wait(2)
    Speed = 500
end

entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
workspace.Rebound.Rebound_Cue:Destroy()
workspace.Rebound.Rebound_Cue2:Destroy()
workspace.Rebound.Torso.Idle:Destroy()
workspace.Rebound.Torso.Footsteps:Destroy()
local bruh = workspace.Rebound.Torso
local TweenService = game:GetService("TweenService")
local spawn = Instance.new("Sound")
spawn.Parent = bruh
spawn.Name = "ReboundSpawn"
spawn.SoundId = "rbxassetid://78206015664727"
spawn.Volume = 5
spawn.RollOffMaxDistance = 10000
spawn.RollOffMinDistance = 45000
spawn:Play()
    local move = GetGitSound("https://github.com/check78/worldcuuuup/blob/main/DoomBegin.mp3?raw=true","Reboun")
    move.Parent = bruh
    move.Name = "ReboundMoving"
    move.Volume = 0
    move.Looped = true
local vroom = TweenService:Create(move, TweenInfo.new(2),{Volume = 0.2})
    local distort = Instance.new("DistortionSoundEffect")
    distort.Level = 0.75
    distort.Parent = move
	move.RollOffMaxDistance = 2000
	move.RollOffMinDistance = 1000
    local tree = Instance.new("TremoloSoundEffect")
    tree.Depth = 1
    tree.Duty = 1
    tree.Frequency = 5
    tree.Parent = move
    local eq = Instance.new("EqualizerSoundEffect")
    eq.HighGain = -60
    eq.MidGain = 100
    eq.LowGain = 100
    eq.Parent = move
	wait(1)
    vroom:Play()
	move:Play()
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)

end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")

    firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to Terror...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, "Blue")

	local ReSt = game.ReplicatedStorage
	local Plr = game.Players.LocalPlayer

		scare:Play()
	    ReSt.GameStats["Player_".. Plr.Name].Total.DeathCause.Value = "Rebound"
		wait(0.5)
		scare:Destroy()

end

------------------------

-- Run the created entity
Creator.runEntity(entity)
