admin = "Kcah#2475" -- quem vai ver
keyboard = "Kcah#2475" -- quem vai logar as teclas
id = {}
tx = 1
keys = {
	["1"] = {0, 20},
	["2"] = {40, 20},
	["3"] = {80, 20},
	["4"] = {120, 20},
	["5"] = {160, 20},
	["6"] = {200, 20},
	["7"] = {240, 20},
	["8"] = {280, 20},
	["9"] = {320, 20},
	["0"] = {360, 20},
	["Q"] = {0, 60},
	["W"] = {40, 60},
	["E"] = {80, 60},
	["R"] = {120, 60},
	["T"] = {160, 60},
	["Y"] = {200, 60},
	["U"] = {240, 60},
	["I"] = {280, 60},
	["O"] = {320, 60},
	["P"] = {360, 60},
	["A"] = {20, 100},
	["S"] = {60, 100},
	["D"] = {100, 100},
	["F"] = {140, 100},
	["G"] = {180, 100},
	["H"] = {220, 100},
	["J"] = {260, 100},
	["K"] = {300, 100},
	["L"] = {340, 100},
	["↑"] = {380, 100},
	["Z"] = {60, 140},
	["X"] = {100, 140},
	["C"] = {140, 140},
	["V"] = {180, 140},
	["B"] = {220, 140},
	["N"] = {260, 140},
	["M"] = {300, 140},
	["←"] = {340, 140},
	["↓"] = {380, 140},
	["→"] = {420, 140},
}

ui.addTextArea(0, "", admin, 0, 20, 460, 160, 0xF, 0x000000, 0.75, 1, true)

for k, v in pairs(keys) do
	ui.addTextArea(tx, "<font color='#000000'>"..k, admin, v[1], v[2], 30, 30, 0xFFFFFF, 0x000000, 0.75, true)
	id[k]=tx
	tx = tx + 1
end

for name in pairs(tfm.get.room.playerList) do
	for key = 1,200 do
		system.bindKeyboard(name, key, true, true)
	end
end

eventKeyboard = function(name, key, down, x, y, vx, vy)
	if name == keyboard then
		local charKey = string.char(key)
		if (key >= 65 and key <= 90) then
			if keys[charKey] then
				ui.addTextArea(id[charKey], "<font color='#FF0000'>"..charKey, admin, keys[charKey][1], keys[charKey][2], 30, 30, 0xF, 0x000000, 1, true) 
			end
		elseif (key >= 48 and key <= 57) then
			local numberKey = tostring(key - 48)
			if keys[numberKey] then
				ui.addTextArea(id[numberKey], "<font color='#FF0000'>"..numberKey, admin, keys[numberKey][1], keys[numberKey][2], 30, 30, 0xF, 0x000000, 1, true) 
			end
		elseif key == 37 then
			if keys["←"] then
				ui.addTextArea(id["←"], "<font color='#FF0000'>←", admin, keys["←"][1], keys["←"][2], 30, 30, 0xF, 0x000000, 1, true) 
			end
		elseif key == 38 then
			if keys["↑"] then
				ui.addTextArea(id["↑"], "<font color='#FF0000'>↑", admin, keys["↑"][1], keys["↑"][2], 30, 30, 0xF, 0x000000, 1, true) 
			end
		elseif key == 39 then
			if keys["→"] then
				ui.addTextArea(id["→"], "<font color='#FF0000'>→", admin, keys["→"][1], keys["→"][2], 30, 30, 0xF, 0x000000, 1, true) 
			end
		elseif key == 40 then
			if keys["↓"] then
				ui.addTextArea(id["↓"], "<font color='#FF0000'>↓", admin, keys["↓"][1], keys["↓"][2], 30, 30, 0xF, 0x000000, 1, true) 
			end
		end
	end
end

eventLoop = function()
	tx = 1
	for k, v in pairs(keys) do
		ui.addTextArea(tx, "<font color='#000000'>"..k, admin, v[1], v[2], 30, 30, 0xFFFFFF, 0x000000, 0.75, true)
		tx = tx + 1
	end
end
