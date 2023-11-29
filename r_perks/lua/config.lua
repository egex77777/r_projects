RPerks.CreatePerk{
    name = "Run Speed",
    what_is_this = function(ply)
        if not IsValid(ply) then return end
        if ply:Alive() or ply:Team() == TEAM_SPECTATOR then
            ply:SetRunSpeed(250)
            ply:ChatPrint("Hızınız arttırıldı!")
        else
            ply:ChatPrint("Ölü veya izleyici olduğunuz için hızınız arttırılamadı.")
        end
    end,
    price = 23000,
    access = "none"
}

RPerks.CreatePerk{
    name = "Health",
    what_is_this = function(ply)
        if not IsValid(ply) then return end
        if ply:Alive() or ply:Team() == TEAM_SPECTATOR then
            ply:addHealth(500)
            ply:ChatPrint("u have +500hp!")
        else
            ply:ChatPrint("Ölü veya izleyici olduğunuz için zırhınız arttırılamadı.")
        end
    end,
    price = 15000,
    access = "none" 
}
