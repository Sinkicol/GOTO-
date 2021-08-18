local args = {
    [1] = "NOTE You cannot type the users display name must be there real user.",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))


game.Players.LocalPlayer.Chatted:connect(function(msg)
if msg:sub(1, 6) == "!goto " then
    local player
    for i, plr in ipairs(game.Players:GetPlayers()) do
    if string.lower(plr.Name):sub(1, string.len(msg:sub(7))) == string.lower(msg:sub(7)) then
        player = plr.Name
    end
    end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[player].HumanoidRootPart.CFrame
end
end)
