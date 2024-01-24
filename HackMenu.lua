local hacker = "Kcah#2475"
local fly = false
local awin = false
local teleportEnabled = false
local hidep = false

for i = 1, 200 do
    system.bindKeyboard(hacker, i, true, true)
end

for playerName, _ in pairs(tfm.get.room.playerList) do
    system.bindMouse(playerName, teleportEnabled)
end

ui.addTextArea(0, "Mod Menu", hacker, -210, 50, 200, 300, 0xF, 0xF, 1, true)
ui.addTextArea(1, "<a href='event:xclose'><font color='#FF0000'>X", hacker, -20, 50, 25, 25, 0xF, 0xF, 0, true)
ui.addTextArea(4, teleportEnabled and "<a href='event:teleport'><font color='#00FF00'>✔ Teleport" or "<a href='event:teleport'><font color='#FF0000'>❌ Teleport", hacker, -190, 163, 0, 0, 0x000000, 0xFFFFFF, 1, true)
ui.addTextArea(5, fly and "<a href='event:fly'><font color='#00FF00'><font size='15'>✔ Fly" or "<font color='#FF0000'><font size='15'><a href='event:fly'>❌ Fly", hacker, -190, 97, 0, 0, 0x000000, 0xFFFFFF, 1, true)
ui.addTextArea(6, awin and "<a href='event:awin'><font color='#00FF00'>✔ Win (H)" or "<a href='event:awin'><font color='#FF0000'>❌ Win (H)", hacker, -190, 130, 0, 0, 0x000000, 0xFFFFFF, 1, true)
ui.addTextArea(7, hidep and "<a href='event:hideplayers'><font color='#00FF00'>✔ Hide Players (Beta)" or "<a href='event:hideplayers'><font color='#FF0000'>❌ Hide Players (Beta)", hacker, -190, 195, 0, 0, 0x000000, 0xFFFFFF, 1, true)

function eventTextAreaCallback(id, name, callback)
    if id == 1 then
        for i = 0, 10 do
            ui.removeTextArea(i, hacker)
        end
        ui.addTextArea(2, "<a href='event:hackmenu'><font color='#FFFFFF'>Hack Menu", hacker, 10, 375, 0, 0, 0xF, 0xF, 1, true)
    elseif id == 2 then
        ui.addTextArea(0, "Mod Menu", hacker, -210, 50, 200, 300, 0xF, 0xF, 1, true)
        ui.addTextArea(1, "<a href='event:xclose'><font color='#FF0000'>X", hacker, -20, 50, 25, 25, 0xF, 0xF, 0, true)

        if fly then
            ui.addTextArea(5, "<a href='event:fly'><font color='#00FF00'>✔ Fly", hacker, -190, 100, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(5, "<a href='event:fly'><font color='#FF0000'>❌ Fly", hacker, -190, 100, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end

        if teleportEnabled then
            ui.addTextArea(4, "<a href='event:teleport'><font color='#00FF00'>✔ Teleport", hacker, -190, 163, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(4, "<a href='event:teleport'><font color='#FF0000'>❌ Teleport", hacker, -190, 163, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end

        if awin then
            ui.addTextArea(6, "<a href='event:awin'><font color='#00FF00'>✔ Win (H)", hacker, -190, 130, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(6, "<a href='event:awin'><font color='#FF0000'>❌ Win (H)", hacker, -190, 130, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end

        if hidep then
            for name, _ in pairs(tfm.get.room.playerList) do
                if name:lower():gsub("^%s*(.-)%s*$", "%1") ~= hacker:lower():gsub("^%s*(.-)%s*$", "%1") then
                    tfm.exec.removeImage(hp)
                end
            end
            ui.addTextArea(7, "<a href='event:hideplayers'><font color='#00FF00'>✔ Hide Players (Beta)", hacker, -190, 195, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            for name, _ in pairs(tfm.get.room.playerList) do
                if name:lower():gsub("^%s*(.-)%s*$", "%1") ~= hacker:lower():gsub("^%s*(.-)%s*$", "%1") then
                    tfm.exec.removeImage(hp)
                end
            end
            ui.addTextArea(7, "<a href='event:hideplayers'><font color='#FF0000'>❌ Hide Players (Beta)", hacker, -190, 195, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end
        ui.removeTextArea(2, hacker)
    elseif id == 4 then
        teleportEnabled = not teleportEnabled
        for playerName, _ in pairs(tfm.get.room.playerList) do
            system.bindMouse(playerName, teleportEnabled)
        end
        if teleportEnabled then
            ui.addTextArea(4, "<a href='event:teleport'><font color='#00FF00'>✔ Teleport", hacker, -190, 160, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(4, "<a href='event:teleport'><font color='#FF0000'>❌ Teleport", hacker, -190, 160, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end
    elseif id == 5 then
        fly = not fly
        if fly then
            ui.addTextArea(5, "<a href='event:fly'><font color='#00FF00'>✔ Fly", hacker, -190, 100, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(5, "<a href='event:fly'><font color='#FF0000'>❌ Fly", hacker, -190, 100, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end
    elseif id == 6 then
        awin = not awin
        if awin then
            ui.addTextArea(6, "<a href='event:awin'><font color='#00FF00'>✔ Win (H)", hacker, -190, 130, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(6, "<a href='event:awin'><font color='#FF0000'>❌ Win (H)", hacker, -190, 130, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end
    elseif id == 7 then
        hidep = not hidep
        for name, _ in pairs(tfm.get.room.playerList) do
            if name:lower():gsub("^%s*(.-)%s*$", "%1") ~= hacker:lower():gsub("^%s*(.-)%s*$", "%1") then
                if hidep then
                    hp = tfm.exec.addImage("a.png", "%" .. name, 0, 0, hacker)
                else
                    tfm.exec.removeImage(hp)
                end
            end
        end
        if hidep then
            ui.addTextArea(7, "<a href='event:hideplayers'><font color='#00FF00'>✔ Hide Players (Beta)", hacker, -190, 195, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        else
            ui.addTextArea(7, "<a href='event:hideplayers'><font color='#FF0000'>❌ Hide Players (Beta)", hacker, -190, 195, 0, 0, 0x000000, 0xFFFFFF, 1, true)
        end
    end
end

function eventKeyboard(name, key)
    if key == 32 and name == hacker and fly then
        tfm.exec.movePlayer(name, 0, 0, true, 0, -50)
    elseif key == 72 and name == hacker and awin then
        tfm.exec.giveCheese(name)
        tfm.exec.playerVictory(name)
    end
end

function eventMouse(playerName, x, y)
    if playerName == hacker and teleportEnabled then
        tfm.exec.movePlayer(playerName, x, y)
    end
end
