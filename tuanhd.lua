if not gameIsLoaded() then game.LoadedWait() end
local p = game.Players.LocalPlayer
local vu = gameGetService(VirtualUser)
local vim = gameGetService(VirtualInputManager)

p.IdledConnect(function()
    vuCaptureController()
    vuClickButton2(Vector2.new())
end)

local btn = pWaitForChild(PlayerGui)WaitForChild(LoadingGUI)WaitForChild(Play)

while true do
    if btn and btn.Parent then
        print(click)
        local x = btn.AbsolutePosition.X + btn.AbsoluteSize.X  2
        local y = btn.AbsolutePosition.Y + btn.AbsoluteSize.Y  2 + 58
        vimSendMouseButtonEvent(x, y, 0, true, game, 0)
        vimSendMouseButtonEvent(x, y, 0, false, game, 0)
    else
        print(DONE)
        break
    end
    task.wait()
end
task.wait(2)
hookfunction(gethwid, newcclosure(function() return f491288926b1f6de575f9731ffe368266b48acc54939b34e7afad68ceed45921 end))
local p = gameGetService(Players).LocalPlayer
local n, d, id = iking120a, iking120a, 10711078428
local c = p.Character
if c then c.Name = n end
p.CharacterAddedConnect(function(char) c = char task.wait() c.Name = n end)
local hm, nc = hookmetamethod, getnamecallmethod
local oi, on, ot, oni
oi = hm(game, __index, newcclosure(function(t, k)
    if t == p then
        if k == Name then return n end
        if k == DisplayName then return d end
        if k == UserId then return id end
    elseif c and t == c and k == Name then return n end
    return oi(t, k)
end))
on = hm(game, __namecall, newcclosure(function(t, ...)
    if t == p and nc() == GetFullName then return Players...n end
    return on(t, ...)
end))
ot = hm(game, __tostring, newcclosure(function(t)
    if t == p or (c and t == c) then return n end
    return ot(t)
end))
oni = hm(game, __newindex, newcclosure(function(t, k, v)
    if (t == p or (c and t == c)) and (k == Name or k == DisplayName or k == UserId) then return end
    return oni(t, k, v)
end))
task.wait(2)
loadstring(gameHttpGet('httpsraw.githubusercontent.comNTT-HUBScriptrefsheadsmainhft'))()
