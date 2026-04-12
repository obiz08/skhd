if not game:IsLoaded() then game.Loaded:Wait() end

local p = game.Players.LocalPlayer
local vu = game:GetService("VirtualUser")
local vim = game:GetService("VirtualInputManager")

p.Idled:Connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
end)

local function clickPlay()
    local playerGui = p:WaitForChild("PlayerGui", 10)
    if not playerGui then return false end
    
    local loadingGUI = playerGui:FindFirstChild("LoadingGUI")
    if not loadingGUI then return false end
    
    local playBtn = loadingGUI:FindFirstChild("Play")
    if not playBtn or not playBtn.Parent then return false end
    
    if playBtn.Visible == false then return false end
    
    local x = playBtn.AbsolutePosition.X + playBtn.AbsoluteSize.X / 2
    local y = playBtn.AbsolutePosition.Y + playBtn.AbsoluteSize.Y / 2
    
    vim:SendMouseButtonEvent(x, y, 0, true, game, 0)
    task.wait(0.05)
    vim:SendMouseButtonEvent(x, y, 0, false, game, 0)
    
    return true
end

repeat
    task.wait(0.5)
    local success = clickPlay()
    if success then
        print("Clicked PLAY button")
        break
    end
until false

task.wait(2)

local n, d, id = "iking120a", "iking120a", 10711078428
local c = p.Character
if c then c.Name = n end

p.CharacterAdded:Connect(function(char)
    c = char
    task.wait()
    if char then char.Name = n end
end)

if hookmetamethod and getnamecallmethod and newcclosure then
    local hm, nc = hookmetamethod, getnamecallmethod
    local oi, on, ot, oni
    
    oi = hm(game, "__index", newcclosure(function(t, k)
        if t == p then
            if k == "Name" then return n end
            if k == "DisplayName" then return d end
            if k == "UserId" then return id end
        elseif c and t == c and k == "Name" then return n end
        return oi(t, k)
    end))
    
    on = hm(game, "__namecall", newcclosure(function(t, ...)
        if t == p and nc() == "GetFullName" then return "Players."..n end
        return on(t, ...)
    end))
    
    ot = hm(game, "__tostring", newcclosure(function(t)
        if t == p or (c and t == c) then return n end
        return ot(t)
    end))
    
    oni = hm(game, "__newindex", newcclosure(function(t, k, v)
        if (t == p or (c and t == c)) and (k == "Name" or k == "DisplayName" or k == "UserId") then
            return
        end
        return oni(t, k, v)
    end))
end

task.wait(2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/hft'))()
