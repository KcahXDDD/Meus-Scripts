SuperAdmin = "Coldzinhu#8051"

tfm.exec.disableAfkDeath(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)
tfm.exec.newGame(7943718)

loop = 1
admin = 0
popupid = 999

ui.addTextArea(0, "<p align='center'><a href='event:give'>Player", SuperAdmin, 50, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(1, "<p align='center'><a href='event:map'>Mapa", SuperAdmin, 160, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(2, "<p align='center'><a href='event:admin'>Admin", SuperAdmin, 270, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(3, "<p align='center'><a href='event:objects'>Objects", SuperAdmin, 380, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)

function removePopup(id)
	ui.addPopup(id, "", name, -99999, -99999, 0, false)
end

eventTextAreaCallback = function(id, name, event)
	if event == "give" then
		removePopup(1)
		removePopup(2)
		removePopup(4)
		removePopup(5)
		ui.addPopup(0, 2, "<p align='center'><font color='#ED67EA'>Por favor, coloque o que você quer dar e quem\n<font color='#BABD2F'>Comandos disponíveis:\nfreeze<font color='#2ECF73'> Nick\n<font color='#BABD2F'>unfreeze<font color='#2ECF73'> Nick\n<font color='#BABD2F'>meep<font color='#2ECF73'> Nick\n<font color='#BABD2F'>transformation<font color='#2ECF73'> Nick\n<font color='#BABD2F'>untransformation<font color='#2ECF73'> Nick\n<font color='#BABD2F'>kill<font color='#2ECF73'> Nick\n<font color='#BABD2F'>victory<font color='#2ECF73'> Nick\n<font color='#BABD2F'>cheese<font color='#2ECF73'> Nick\n<font color='#BABD2F'>uncheese<font color='#2ECF73'> Nick\n<font color='#BABD2F'>respawn<font color='#2ECF73'> Nick\n<font color='#BABD2F'>shaman<font color='#2ECF73'> Nick\n<font color='#BABD2F'>unshaman<font color='#2ECF73'> Nick\n<font color='#BABD2F'>nightmode<font color='#2ECF73'> Nick\n<font color='#BABD2F'>unnightmode<font color='#2ECF73'> Nick\n<font color='#BABD2F'>vampire<font color='#2ECF73'> Nick\n<font color='#BABD2F'>unvampire<font color='#2ECF73'> Nick\n</p><font color='#CB546B'>(Exemplo: freeze Coldzinhu#8051)", name, 300, 35, 200, true)
	elseif event == "map" then
		ui.addTextArea(0, "<p align='center'><a href='event:return'>«Return", name, 35, 28, 60, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(1, "<p align='center'><a href='event:changemap'>Mudar Mapa", name, 105, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(2, "<p align='center'><a href='event:title'>Nome do Mapa", name, 215, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(3, "<p align='center'><a href='event:time'>Tempo do Mapa", name, 325, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(4, "<p align='center'><a href='event:reset'>Resetar", name, 435, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
	elseif event == "admin" then
		ui.addTextArea(0, "<p align='center'><a href='event:return'>«Voltar", name, 35, 28, 60, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(1, "<p align='center'><a href='event:popup'>Popup", name, 105, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(2, "<p align='center'><a href='event:message'>Mensagem", name, 215, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.removeTextArea(3)
	elseif event == "objects" then
		ui.addPopup(6, 2, "<p align='center'><font color='#ED67EA'>Por favor, coloque o ID do objeto e as coordenadas X e Y\n<font color='#CB546B'>*(0#400#200)*", name, 330, 170, 140, true)
		ui.addTextArea(4, "<p align='center'><ROSE>Lista dos Objetos<J>\n\nID 0 Seta\nID 1 Caixa Pequena\n ID 2 Caixa\n ID 3 Tábua Pequena\n ID 4 Tábua\n ID 6 Bola\n ID 7 Trampolim\n ID 10 Bigorna\n ID 17 Canhão\n ID 23 Bomba\n ID 26 Portal Azul\n ID 27 Portal Laranja\n ID 28 Balão Azul\n ID 29 Balão Vermelho\n ID 30 Balão Verde\n ID 31 Balão Amarelo\n ID 32 Runa\n ID 33 Galinha\n ID 34 Bolinha de Neve\n ID 35 Flecha\n ID 39 Maçã Verde", name, 175, 85, 150, 305, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(5, "<p align='center'><ROSE>Lista dos Objetos<J>\n\nID 40 Ovelha\n ID 45 Tabua de Gelo\nID 46 Tábua de Chocolate \nID 54 Cubo de Gelo \nID 57 Nuvem \nID 59 Bolha \nID 60 Mini Tábua Pequena \nID 61 Caixa Especial \nID 62 Runa Fixa \nID 65 Baiacu \nID 67 Tabua Gigante \nID 68 Triangulo \nID 69 Tábua S \nID 80 Avião de Papel \nID 85 Pedra \nID 89 Abóbora \nID 90 Tumulo \nID 95 Bola de Papel", name, 475, 85, 150, 305, 0x324650, 0x1F2C33, 1, true)
	elseif event == "return" then
		for i = 0,999 do
			ui.removeTextArea(i)
		end
		ui.addTextArea(0, "<p align='center'><a href='event:give'>Give...", SuperAdmin, 50, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(1, "<p align='center'><a href='event:map'>Mapa", SuperAdmin, 160, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(2, "<p align='center'><a href='event:admin'>Admin", SuperAdmin, 270, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
		ui.addTextArea(3, "<p align='center'><a href='event:objects'>Objects", SuperAdmin, 380, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
	elseif event == "changemap" then
		removePopup(0)
		removePopup(2)
		removePopup(3)
		removePopup(4)
		removePopup(5)
		ui.addPopup(1, 2, "<p align='center'><font color='#ED67EA'>Coloque o código do mapa que deseja carregar e se deseja que tenha shaman (7444615 true ou 7444615 false)", name, 300, 200, 200, true)
	elseif event == "title" then
		removePopup(0)
		removePopup(1)
		removePopup(3)
		removePopup(4)
		removePopup(5)
		ui.addPopup(2, 2, "<p align='center'><font color='#ED67EA'>Coloque o nome que deseja mudar", name, 300, 200, 200, true)
	elseif event == "time" then
		removePopup(0)
		removePopup(1)
		removePopup(2)
		removePopup(4)
		removePopup(5)
		ui.addPopup(3, 2, "<p align='center'><font color='#ED67EA'>Coloque o tempo que deseja colocar no mapa", name, 300, 200, 200, true)
	elseif event == "reset" then
		tfm.exec.disableAutoShaman(true)
		for name in pairs(tfm.get.room.playerList) do
			if tfm.get.room.playerList[name].isShaman then
				haveShaman = true
			end
		end
		if haveShaman == true then
			tfm.exec.disableAutoShaman(false)
		end
		currentMap = tfm.get.room.currentMap
		tfm.exec.newGame(currentMap)
	elseif event == "popup" then
		removePopup(0)
		removePopup(1)
		removePopup(2)
		removePopup(5)
		ui.addPopup(4, 2, "<p align='center'><font color='#ED67EA'>Coloque o Texto o X e o Y<font color='#CB546B'>\n<font size='10'>*(Olá mundo#400#200)*", name, 300, 200, 200, true) 
	elseif event == "message" then
		removePopup(0)
		removePopup(1)
		removePopup(2)
		removePopup(4)
		ui.addPopup(5, 2, "<p align='center'><font color='#ED67EA'>Coloque a sua mensagem para todos verem!", nil, 300, 200, 200, true)
	end
end

eventPopupAnswer = function(id, name, answer)
	if id == 0 then
		if answer:sub(1,6) == "freeze" and tfm.get.room.playerList[answer:sub(8)] then
			tfm.exec.freezePlayer(answer:sub(8), true)
		elseif answer:sub(1,8) == "unfreeze" and tfm.get.room.playerList[answer:sub(10)] then
			tfm.exec.freezePlayer(answer:sub(10), false)
		elseif answer:sub(1,4) == "meep" and tfm.get.room.playerList[answer:sub(6)] then
			tfm.exec.giveMeep(answer:sub(6))
		elseif answer:sub(1,14) == "transformation" and tfm.get.room.playerList[answer:sub(16)] then
			tfm.exec.giveTransformations(answer:sub(16), true)
		elseif answer:sub(1,16) == "untransformation" and tfm.get.room.playerList[answer:sub(18)] then
			tfm.exec.giveTransformations(answer:sub(18), false)
		elseif answer:sub(1,4) == "kill" and tfm.get.room.playerList[answer:sub(6)] then
			tfm.exec.killPlayer(answer:sub(6))
		elseif answer:sub(1,7) == "victory" and tfm.get.room.playerList[answer:sub(9)] then
			tfm.exec.giveCheese(answer:sub(9))
			tfm.exec.playerVictory(answer:sub(9))
		elseif answer:sub(1,6) == "cheese" and tfm.get.room.playerList[answer:sub(8)] then
			tfm.exec.giveCheese(answer:sub(8))
		elseif answer:sub(1,8) == "uncheese" and tfm.get.room.playerList[answer:sub(10)] then
			tfm.exec.removeCheese(answer:sub(10))
		elseif answer:sub(1,7) == "respawn" and tfm.get.room.playerList[answer:sub(9)] then
			tfm.exec.respawnPlayer(answer:sub(9))
		elseif answer:sub(1,6) == "shaman" and tfm.get.room.playerList[answer:sub(8)] then
			tfm.exec.setShaman(answer:sub(8), true)
		elseif answer:sub(1,8) == "unshaman" and tfm.get.room.playerList[answer:sub(10)] then
			tfm.exec.setShaman(answer:sub(10), false)
		elseif answer:sub(1,9) == "nightmode" and tfm.get.room.playerList[answer:sub(11)] then
			tfm.exec.setPlayerNightMode(true, answer:sub(11))
		elseif answer:sub(1,11) == "unnightmode" and tfm.get.room.playerList[answer:sub(13)] then
			tfm.exec.setPlayerNightMode(false, answer:sub(13))
		elseif answer:sub(1,7) == "vampire" and tfm.get.room.playerList[answer:sub(9)] then
			tfm.exec.setVampirePlayer(answer:sub(9), true)
		elseif answer:sub(1,9) == "unvampire" and tfm.get.room.playerList[answer:sub(11)] then
			tfm.exec.setVampirePlayer(answer:sub(11), false)
		end
	elseif id == 1 then
		local MapCode, Shaman = answer:match("(%d+)%s+(%a+)")
		if MapCode and Shaman then
			MapCode = tonumber(MapCode)
			if MapCode then
				if Shaman == "true" then
					tfm.exec.disableAutoShaman(false)
				end
				if Shaman == "false" then
					tfm.exec.disableAutoShaman(true)
				end
			tfm.exec.newGame(MapCode)
			end
		end
	elseif id == 2 then
		tfm.exec.setUIMapName(answer)
	elseif id == 3 then
		tfm.exec.setGameTime(answer, true)
	elseif id == 4 then
		local text, x, y = answer:match("([^#]+)#([^#]+)#([^#]+)")
		x = tonumber(x)
		y = tonumber(y)
		if text and x and y then
			ui.addPopup(popupid, 0, text, nil, x, y, 150, true)
			popupid = popupid + 1
		end
	elseif id == 5 then
		ui.addTextArea(6, "<p align='center'><ROSE>~[Moderaração] "..answer, nil, 0, 340, 800, 60, 0xD870B84, 0x590068, 0.75, true)
		admin = 10
	elseif id == 6 then
		id, x, y = answer:match("([^#]+)#([^#]+)#([^#]+)")
		x = tonumber(x)
		y = tonumber(y)
		for i = 4,5 do
			ui.removeTextArea(i)
		end
		tfm.exec.addShamanObject(id, x, y)
	end
end

eventLoop = function()
	if admin > 0 then
		admin = admin - 1
	elseif admin == 0 then
		ui.removeTextArea(6)
	end
	if loop == 1 then
		loop = 2
	elseif loop == 2 then
		print("<font size='1000'> <font size='50'><font color='#A4CF9E'><p align='center'>Tribe Manager<br><font color='#C53DFF'><font size='12'>(Made by Kcah#2475)<p align='left'>")
		loop = 3
	end
end
