tfm.exec.disableAutoNewGame(true)
tfm.exec.disableAutoShaman(true)
tfm.exec.disableAfkDeath(true)
tfm.exec.newGame('<C><P H="1600" MEDATA="20,1;;;;-0;0::0,0,0,0,0,0:1-"/><Z><S><S T="0" X="577" Y="851" L="153" H="21" P="1,1e-9,0,0.2,-90,1,0,0" N=""/><S T="6" X="790" Y="1025" L="200" H="20" P="0,0,0.3,0.2,-90,0,0,0"/><S T="0" X="649" Y="917" L="153" H="21" P="1,1e-9,0,0.2,-180,1,0,0" N=""/><S T="6" X="790" Y="1510" L="200" H="20" P="0,0,0.3,0.2,-90,0,0,0"/><S T="6" X="12" Y="1310" L="200" H="20" P="0,0,0.3,0.2,90,0,0,0"/><S T="6" X="400" Y="1600" L="800" H="20" P="0,0,0.3,0.2,0,0,0,0"/><S T="13" X="675" Y="1419" L="25" P="0,0,0.3,0.2,0,0,0,0" o="779113"/><S T="13" X="450" Y="1420" L="20" P="0,0,0.3,0.2,0,0,0,0" o="779113"/><S T="13" X="250" Y="1420" L="15" P="0,0,0.3,0.2,0,0,0,0" o="779113"/><S T="13" X="95" Y="1420" L="10" P="0,0,0.3,0.2,0,0,0,0" o="779113"/><S T="19" X="350" Y="1120" L="700" H="10" P="0,0,0.3,0,0,0,0,0"/><S T="19" X="450" Y="1200" L="700" H="10" P="0,0,0.3,0,0,0,0,0"/><S T="4" X="366" Y="775" L="747" H="10" P="0,0,20,0.2,0,0,0,0" N=""/><S T="14" X="361" Y="774" L="735" H="10" P="0,0,0,0,0,0,0,0"/><S T="4" X="800" Y="775" L="10" H="34" P="0,0,20,0.2,0,0,0,0"/><S T="9" X="450" Y="1160" L="700" H="70" P="0,0,0,0,0,0,0,0"/><S T="14" X="-5" Y="800" L="10" H="1600" P="0,0,0,0.2,0,0,0,0" N=""/><S T="17" X="636" Y="931" L="180" H="10" P="0,0,0,0.4,0,0,0,0"/><S T="14" X="805" Y="800" L="10" H="1600" P="0,0,0,0.2,0,0,0,0" N=""/><S T="3" X="556" Y="852" L="21" H="150" P="0,0,0.3,20,0,0,0,0"/><S T="3" X="802" Y="847" L="10" H="154" P="0,0,0.05,5,0,0,0,0"/><S T="2" X="801" Y="732" L="10" H="57" P="0,0,0,2,0,0,0,0"/><S T="0" X="649" Y="917" L="153" H="21" P="1,1e-9,0,0.2,-180,1,0,0" N="" m=""/><S T="0" X="649" Y="917" L="153" H="21" P="1,1e-9,0,0.2,-180,1,0,0" N="" m=""/><S T="0" X="649" Y="917" L="153" H="21" P="1,1e-9,0,0.2,-180,1,0,0" N="" m=""/><S T="0" X="649" Y="917" L="153" H="21" P="1,1e-9,0,0.2,-180,1,0,0" N="" m=""/></S><D><T X="184" Y="770"/><F X="482" Y="766"/><DS X="400" Y="1575"/></D><O/><L><JR M2="1"/><JR M1="2" M2="1"/><JR M1="22" M2="1"/><JR M1="23" M2="1"/><JR M1="24" M2="1"/><JR M1="25" M2="1"/></L></Z></C>')

local bestime = 9999999999999999999999999999999

eventPlayerWon = function(name, timeElapsed)
	tfm.exec.respawnPlayer(name)
	local tesr = timeElapsed / 100
	if tesr <= bestime then
		bestime = tesr
		print("<font face='Tempus Sans ITC'><font color='#FFFFFF'>Um novo recorde foi feito! <font face='Verdana'>("..tesr.."s)")
		ui.addPopup(0, 0, "<font face='Tempus Sans ITC'><font color='#FFFFFF'>Um novo recorde foi feito! <font face='Verdana'>("..tesr.."s)", name, 300, 150, 200, true)
		ui.addTextArea(1, "<font size='15'><font color='#FFFFFF'>Recorde atual: <font color='#FF0000'>"..bestime.."s", name, 20, 20, 200, 30, 0xF, 0xF, 0, true)
	end
end

local xcp = {}
local ycp = {}
local cp = {}
local ta = {}
local num = 0

for name in pairs(tfm.get.room.playerList) do
	ta[name] = num
	num = num + 1
	for key = 1, 200 do
		system.bindKeyboard(name, key, true, true)
	end
end

eventKeyboard = function(name, key, down, x, y, vx, vy)
	if key == 32 then
		xcp[name] = x
		ycp[name] = y
		cp[name] = true
		ui.addTextArea(ta[name], "", name, x, y, 5, 5, 0xFFFFFF, 0x00FF00, 1, false)
	end
end

eventPlayerDied = function(name)
		tfm.exec.respawnPlayer(name)
	if cp[name] == true then
		tfm.exec.movePlayer(name, xcp[name], ycp[name])
	end
end
