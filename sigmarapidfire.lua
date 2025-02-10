local LocalPlayer = game:GetService("Players").LocalPlayer
while true do 
    task.wait()
    local tool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool")
    if tool and tool:FindFirstChild("GunScript") then 
        for _, v in ipairs(getconnections(tool.Activated)) do
            local funcinfo = debug.getinfo(v.Function)
            for i = 1, funcinfo.nups do
                local c, n = debug.getupvalue(v.Function, i)
                if type(c) == "number" then 
                    debug.setupvalue(v.Function, i, 0.00000000000000000001)
                end
            end
        end
    end
end