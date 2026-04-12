if not game:IsLoaded() then game.Loaded:Wait() end

local p = game.Players.LocalPlayer
local vu = game:GetService("VirtualUser")
local vim = game:GetService("VirtualInputManager")

p.Idled:Connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)

local function togglePlay()
    local success, result = pcall(function()
        local playerGui = p:WaitForChild("PlayerGui", 5)
        if not playerGui then return false end
        
        local loadingGUI = playerGui:FindFirstChild("LoadingGUI")
        if not loadingGUI then return false end
        
        local playBtn = loadingGUI:FindFirstChild("Play")
        if not playBtn or not playBtn.Parent then return false end
        
        if playBtn.Visible == false then return false end
        
        playBtn:Toggle()
        
        return true
    end)
    return success and result
end

repeat
    task.wait(0.5)
    local toggled = togglePlay()
    if toggled then
        print("Toggled PLAY button")
        break
    end
until false

task.wait(2)

local n, d, id = "iking120a", "iking120a", 10711078428

pcall(function()
    local c = p.Character
    if c then c.Name = n end
    
    p.CharacterAdded:Connect(function(char)
        task.wait()
        pcall(function()
            if char then char.Name = n end
        end)
    end)
end)

if hookmetamethod and getnamecallmethod and newcclosure then
    pcall(function()
        local hm, nc = hookmetamethod, getnamecallmethod
        local oi, on, ot, oni
        
        oi = hm(game, "__index", newcclosure(function(t, k)
            if t == p then
                if k == "Name" then return n end
                if k == "DisplayName" then return d end
                if k == "UserId" then return id end
            end
            return oi(t, k)
        end))
        
        on = hm(game, "__namecall", newcclosure(function(t, ...)
            if t == p and nc() == "GetFullName" then return "Players."..n end
            return on(t, ...)
        end))
        
        ot = hm(game, "__tostring", newcclosure(function(t)
            if t == p then return n end
            return ot(t)
        end))
        
        oni = hm(game, "__newindex", newcclosure(function(t, k, v)
            if t == p and (k == "Name" or k == "DisplayName" or k == "UserId") then
                return
            end
            return oni(t, k, v)
        end))
    end)
end

task.wait(2)

pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/hft'))()
end)
