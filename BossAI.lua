tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.newGame('<C><P L="1200" MEDATA=";;;;-0;0:::1-"/><Z><S><S T="12" X="602" Y="365" L="1194" H="65" P="0,0,0.3,0.2,0,0,0,0" o="324650"/><S T="12" X="10" Y="194" L="16" H="390" P="0,0,0.3,0.2,0,0,0,0" o="324650"/><S T="12" X="604" Y="9" L="1189" H="10" P="0,0,0.3,0.2,0,0,0,0" o="324650"/><S T="12" X="1193" Y="205" L="10" H="379" P="0,0,0.3,0.2,0,0,0,0" o="324650"/><S T="12" X="788" Y="322" L="10" H="32" P="0,0,0.3,0.2,0,0,0,0" o="324650"/></S><D><DS X="116" Y="318"/></D><O/></Z></C>')

swordid = {}
dano = 10
espada = "18a8573588b.png"
npcid = tfm.exec.addShamanObject(85, 56, 291)
npcimg = tfm.exec.addImage("18d94f753ad.png", "#"..npcid, -22.5, -30, nil, 1, 1)
speed = 4
loop = 12
jdelay = 0
s = 6
direction = ""
lastPosition = nil
pir = 0
plife = {}
plifeid = {}
died = {}
rgt = {}
bbg = {}

eventLoop = function()
	if s > 0 then
		s = s - 1
	elseif s == 0 then
		local npc = tfm.get.room.objectList[npcid]
		if npc and tfm.get.room.playerList[alvo] then
			local targetX = tfm.get.room.playerList[alvo].x
			if npc.x < targetX then
				speed = 4
				npcimg = tfm.exec.addImage("18d94f753ad.png", "#"..npcid, -22.5, -30, nil, 1, 1)
			else
				speed = -4
				npcimg = tfm.exec.addImage("18d94f753ad.png", "#"..npcid, 22.5, -30, nil, -1, 1)
			end
			tfm.exec.moveObject(npcid, 0, 0, nil, speed)
			if lastPosition then
				if math.abs(npc.x - lastPosition) <= 3 then
					if speed == 4 and jdelay == 0 then
						tfm.exec.moveObject(npcid, npc.x - 20, 0, nil, speed * 1.2, -5)
					else
						tfm.exec.moveObject(npcid, npc.x + 20, 0, nil, speed * 1.2, -5)
					end
					jdelay = 2
					lastPosition = npc.x
				end
			end
			lastPosition = npc.x
		end
	end
	if jdelay > 0 then
		jdelay = jdelay - 1
	end
	if npclife > 0 then
		tfm.exec.addImage("17948da3319.png", "="..npcid, -52, -45, nil, 104, 14)
 		lifeid = tfm.exec.addImage("17948da1ba8.png", "="..npcid, -50, -43, nil, npclife/stlife*100, 10)
		v=tfm.get.room.objectList[npcid]
		if v then
			for name,list in pairs(tfm.get.room.playerList) do
				if (list.x >= v.x - 50 and list.x <= v.x + 50 and list.y >= v.y - 50 and list.y <= v.y + 50) then
					plife[name] = plife[name] - 2
					rgt[name] = 10
					tfm.exec.addImage("17948da3319.png", "$"..name, -52, -45, nil, 104, 14)
					plifeid = tfm.exec.addImage("17948d9ecc2.png", "$"..name, -50, -43, nil, plife[name]/stplife*100, 10)
				end
			end
		end
	end
	for name in pairs(tfm.get.room.playerList) do
		if plife[name] <= 0 then
			tfm.exec.killPlayer(name)
			died[name] = true
			if alvo == name then
				alvo = ""
			end
		end
	end
	for name in pairs(tfm.get.room.playerList) do
		if plife[name] < stlife then
			if rgt[name] > 0 then
				rgt[name] = rgt[name] - 1
			else
				rgt[name] = 10
				if plife[name]+5 >= 100 then
					plife[name] = 100
				else
					plife[name] = plife[name] + 5
				end
				tfm.exec.addImage("17948da3319.png", "$"..name, -52, -45, nil, 104, 14)
				plifeid = tfm.exec.addImage("17948d9ecc2.png", "$"..name, -50, -43, nil, plife[name]/stplife*100, 10)
			end
		end
	end
end

removelife = function()
	npclife = npclife - dano
	if npclife <= 0 then
		for i = 1,3 do
			i = i - 2
			tfm.exec.displayParticle(21, tfm.get.room.objectList[npcid].x+i*3, tfm.get.room.objectList[npcid].x, 0, 0, 1, 1, nil)
		end
		tfm.exec.removeObject(npcid)
	end
end

eventKeyboard = function(name, key, down, x, y)
	if key == 37 or key == string.byte("A") then
		tfm.exec.removeImage(swordid[name])
		swordid[name] = tfm.exec.addImage(espada, "$"..name, -7, -10, nil, -0.05, 0.05)
	elseif key == 39 or key == string.byte("D") then
		tfm.exec.removeImage(swordid[name])
		swordid[name] = tfm.exec.addImage(espada, "$"..name, 7, -10, nil, 0.05, 0.05)
	end
	if key == 32 and died[name] == false then
		if npcid then
			v=tfm.get.room.objectList[npcid]
			if v then
				if (x >= v.x - 50 and x <= v.x + 50 and y >= v.y - 50 and y <= v.y + 50) then
					removelife()
					alvo = name
					tfm.exec.addImage("17948da3319.png", "="..npcid, -52, -45, nil, 104, 14)
 					lifeid = tfm.exec.addImage("17948da1ba8.png", "="..npcid, -50, -43, nil, npclife/stlife*100, 10)
				end
			end
		end
	end
end

tfm.exec.addImage("18d94f753ad.png", "#"..npcid, -22.5, -30, nil, 1, 1)

for name in pairs(tfm.get.room.playerList) do
	plife[name] = 100
	stplife = plife[name]
	died[name] = false
	rgt[name] = 10
	swordid[name] = tfm.exec.addImage(espada, "$"..name, 7, -10, nil, 0.05, 0.05)
	tfm.exec.addImage("17948da3319.png", "$"..name, -52, -45, nil, 104, 14)
	plifeid = tfm.exec.addImage("17948d9ecc2.png", "$"..name, -50, -43, nil, plife[name]/stplife*100, 10)
	pir = pir + 1
	for key = 1,200 do
		system.bindKeyboard(name, key, true, true)
	end
end

npclife = 1000*pir
stlife = npclife
