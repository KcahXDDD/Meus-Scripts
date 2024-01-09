local selectedItem = 2

local itemIDs = {
    [1] = 10,   -- Item para o número 1
    [2] = 1,   -- Item para o número 2
    [3] = 2,   -- Item para o número 3
    [4] = 3,   -- Item para o número 4
    [5] = 4,   -- Item para o número 5
    [6] = 57,   -- Item para o número 6
    [7] = 6,   -- Item para o número 7
    [8] = 7,   -- Item para o número 8
    [9] = 59,   -- Item para o número 9
    [10] = 68, -- Item para o número 0
}

for playerName, _ in pairs(tfm.get.room.playerList) do
    system.bindMouse(playerName, true)
    for key = 49, 57 do  -- Números 1 a 9
        system.bindKeyboard(playerName, key, true)
    end
    system.bindKeyboard(playerName, 48, true)  -- Número 0
end

eventMouse = function(playerName, x, y)
    tfm.exec.addShamanObject(itemIDs[selectedItem], x, y)
end

eventKeyboard = function(playerName, key, isDown, x, y)
    if isDown and key >= 48 and key <= 57 then  -- Números 0 a 9
        selectedItem = key - 47  -- Convertendo a tecla pressionada para o índice do item
    end
end
