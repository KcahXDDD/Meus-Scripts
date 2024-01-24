local maps = {7857830, 7919642, 7921355, 7838327, 7909798, 7922240, 7843332, 7907176, 7907153, 7921441, 7921064, 7921713}
local souris = {}
local freezed = false
local hunter = ""
local pir = 0
local loop = 5
local bonus = 0
local cooldown = {}

tfm.exec.disableMortCommand(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.newGame(maps[math.random(#maps)])


for name in pairs(tfm.get.room.playerList) do
	cooldown[name] = 3000
	table.insert(souris, name)
	tfm.exec.setNameColor(name, 0x000000)
	pir = pir + 1
end

hunter = souris[math.random(#souris)]
print("<J>O Pegador é <R>"..hunter)
tfm.exec.setNameColor(hunter, 0xFF0000)

eventKeyboard = function(name, key, down, x, y)
	if key == 32 and name == hunter then
		for player, info in pairs(tfm.get.room.playerList) do
			if player ~= hunter then
				local distance = math.sqrt((x - info.x) ^ 2 + (y - info.y) ^ 2)
				if distance <= 75 and not freezed then
					print("<J>O Pegador agora é <R>"..player.."<J>!")
					tfm.exec.freezePlayer(player, true, true)
					tfm.exec.setPlayerGravityScale(player, 0, 0)
					tfm.exec.moavePlayer(name, 0, 0, nil, 0, 0, nil)
					tfm.exec.setNameColor(player, 0xFF0000)
					tfm.exec.setNameColor(hunter, 0x000000)
					hunter = player
					freezed = true
					loop = 1
				end
			end
		end
	end
	if key == 88 and name ~= hunter and cooldown[name] <= 0 then
		tfm.exec.movePlayer(name, 0, 0, nil, 0, -100, nil)
		cooldown[name] = 3000
	end
end

for _, name in ipairs(souris) do
	for key = 1, 200 do
		system.bindKeyboard(name, key, true, true)
	end
end

eventLoop = function()
    if loop > 0 and loop < 4 then
        loop = loop + 1
    elseif freezed and loop == 4 then -- Modifiquei o valor do loop
        tfm.exec.freezePlayer(hunter, false)
        tfm.exec.setPlayerGravityScale(hunter, 1, 1)
        freezed = false
        loop = 0  -- Reinicia o contador loop para 0 para permitir que o pegador congele novamente
    end

    for name, cd in pairs(cooldown) do
        if cd > 0 then
            cooldown[name] = cooldown[name] - 500
        end
    end
end


eventPlayerDied = function(name)
	if name == hunter then
		hunter = souris[math.random(#souris)]
		tfm.exec.setNameColor(hunter, 0xFF0000)
		freezed = true
		if pir == 2 then
			tfm.exec.newGame(maps[math.random(#maps)])
			hunter = souris[math.random(#souris)]
			print("<J>O Pegador é <R>"..hunter)
			tfm.exec.setNameColor(hunter, 0xFF0000)
			for name in pairs(tfm.get.room.playerList) do
				tfm.exec.setNameColor(name, 0x000000)
				tfm.exec.movePlayer(name, math.random(20,1600), 0)
			end
			print("<J>O Pegador é <R>"..hunter)
			tfm.exec.setNameColor(hunter, 0xFF0000)
		end
	end
end

eventPlayerDied = function(name)
	tfm.exec.respawnPlayer(name)
end
