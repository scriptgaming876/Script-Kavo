local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

-- List of Room Templates
local rooms = {
    "Room_Hallway",
    "Room_Loot",
    "Room_Dark",
    "Room_Trap",
    "Room_Monster"
}

-- Function to spawn random room
local function spawnRandomRoom()
    local roomName = rooms[math.random(1, #rooms)] -- Pick random template
    local roomTemplate = ReplicatedStorage:FindFirstChild(roomName)

    if roomTemplate then
        local newRoom = roomTemplate:Clone()
        newRoom.Parent = Workspace.CurrentRooms

        -- Position the room ahead of last room
        local lastRoom = Workspace.CurrentRooms:GetChildren()[#Workspace.CurrentRooms:GetChildren()]
        local lastDoor = lastRoom:FindFirstChild("Door")

        if lastDoor then
            newRoom:PivotTo(CFrame.new(lastDoor.Position + Vector3.new(0, 0, 50))) -- 50 studs forward
        else
            newRoom:PivotTo(CFrame.new(0, 0, 100)) -- fallback if no door
        end

        print("Spawned random room:", roomName)
    else
        warn("Room template not found:", roomName)
    end
end

-- Example: Generate 10 rooms automatically
for i = 1, 10 do
    spawnRandomRoom()
    wait(1) -- Wait a little between spawns
end
