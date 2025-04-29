local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V1/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Greed",
    Model = "rbxassetid//11027884157",
    Speed = 400,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = true,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 10,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"Custom", "death", "message", "goes", "here."},
    IsCuriousLight = false
})

---====== Debug ======---

entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned")
local lighting = game:GetService("Lighting")
lighting.FogColor = Color3.new(128, 0, 128) 
 
lighting.FogStart = 0
lighting.FogEnd = 0
    local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) game.Debris:AddItem(Reboundcolor,24)
                Reboundcolor.Name = "Warn"
                Reboundcolor.TintColor = Color3.fromRGB(128, 0, 127) Reboundcolor.Saturation = -0.5 Reboundcolor.Contrast = 0.9
                game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(128, 0, 128),Saturation = 0, Contrast = 0}):Play()
	local TweenService = game:GetService("TweenService")
	local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(128, 128, 128)})
	local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "Spawn"
	cue2.SoundId = "rbxassetid://134020218579308"
	cue2.Volume = 3
	cue2.PlaybackSpeed = 0.5
	cue2:Play()
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned")
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
local cue2 = Instance.new("Sound")
	cue2.Parent = game.Workspace
	cue2.Name = "StartMoving"
	cue2.SoundId = "rbxassetid://74600732721346"
	cue2.Volume = 3
	cue2.PlaybackSpeed = 0.5
	cue2:Play()
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

entity.Debug.OnDeath = function()
    print("Player has died")
end

--[[
    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead

    entity.Debug.OnUseCrucifix = function()
        print("Custom crucifixion script here")
    end
]]--

---====== Run entity ======---

Spawner.runEntity(entity)
