admin = "Kcah#2475"
fontenabled = false
alignenabled = false
sizeenabled = false
estileenabled = false

ui.addTextArea(0, "<p align='center'><font size='15'><a href='event:font'>Fontes", admin, 50, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(1, "<p align='center'><font size='15'><a href='event:align'>Alinhar...", admin, 160, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(3, "<p align='center'><font size='15'><a href='event:size'>Tamanho", admin, 270, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(4, "<p align='center'><font size='15'><a href='event:estile'>Estilo", admin, 380, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
ui.addTextArea(5, "<p align='center'><font size='15'><a href='event:reset'>Resetar", admin, 490, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)

eventTextAreaCallback = function(id, name, event)
	if event == "font" then
		if fontenabled == false then
			ui.addTextArea(0, "<p align='center'><font size='15'><a href='event:font'>Fontes<J>\n\n<font size='11'><a href='event:font1'><font face='Arial Black'>Arial Black\n<a href='event:font2'><font face='Bazooka'>Bazooka\n<a href='event:font3'><font face='Century Gothic'>Century Gothic\n<a href='event:font4'><font face='Comic Sans MS'>Comic Sans MS\n<a href='event:font5'><font face='Courier'>Courier\n<a href='event:font6'><font face='Impact'>Impact\n<a href='event:font7'><font face='Lucida Handwriting'>Lucida Handwriting\n<a href='event:font8'><font face='Pythagoras'>Pythagoras\n<a href='event:font9'><font face='Technical'>Technical\n<a href='event:font10'><font face='Tempus Sans ITC'>Tempus Sans ITC\n<a href='event:font11'><font face='Trebuchet MS'>Trebuchet MS\n<a href='event:font12'><font face='Monotype Corsiva'>Monotype Corsiva\n<a href='event:font13'><font face='Lucida Console'>Lucida Console", name, 50, 28, 100, 260, 0x324650, 0x1F2C33, 1, true)
			fontenabled = true
		elseif fontenabled == true then
			ui.addTextArea(0, "<p align='center'><font size='15'><a href='event:font'>Fontes", admin, 50, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
			fontenabled = false
		end
	elseif event == "align" then
		if fontenabled == false then
			ui.addTextArea(1, "<p align='center'><font size='15'><a href='event:align'>Alinhar...<J>\n\n<font size='13'><a href='event:left'><p align='left'>Esquerda\n<a href='event:center'><p align='center'>Meio\n<a href='event:right'><p align='right'>Direita", admin, 160, 28, 100, 100, 0x324650, 0x1F2C33, 1, true)
			fontenabled = true
		elseif fontenabled == true then
			ui.addTextArea(1, "<p align='center'><font size='15'><a href='event:align'>Alinhar...", admin, 160, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
			fontenabled = false
		end
	elseif event == "size" then
		if sizeenabled == false then
			ui.addTextArea(3, "<p align='center'><font size='15'><a href='event:size'>Tamanho<J>\n\n<font size='5'><a href='event:5'>5\n<font size='10'><a href='event:10'>10\n<font size='12'><a href='event:12'>12\n<font size='15'><a href='event:15'>15\n<font size='20'><a href='event:20'>20\n<font size='25'><a href='event:25'>25\n<font size='30'><a href='event:30'>30\n<font size='35'><a href='event:35'>35\n<font size='40'><a href='event:40'>40", admin, 270, 28, 100, 280, 0x324650, 0x1F2C33, 1, true)
			sizeenabled = true
		elseif sizeenabled == true then
			ui.addTextArea(3, "<p align='center'><font size='15'><a href='event:size'>Tamanho", admin, 270, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
			sizeenabled = false
		end
	elseif event == "estile" then
		if estileenabled == false then
			ui.addTextArea(4, "<p align='center'><font size='15'><a href='event:estile'>Estilo<J>\n\n<font size='13'><a href='event:bold'><b>Negrito</b>\n<a href='event:italic'><i>Itálico</i>\n<a href='event:underlined'><u>Subilhado</u>", admin, 380, 28, 100, 100, 0x324650, 0x1F2C33, 1, true)
			estileenabled = true
		elseif estileenabled == true then
			ui.addTextArea(4, "<p align='center'><font size='15'><a href='event:estile'>Estilo", admin, 380, 28, 100, 20, 0x324650, 0x1F2C33, 1, true)
			estileenabled = false
		end
	elseif event == "reset" then
		print("<font face='Verdana'><font size='12'><p align='left'></u></i></b>Resetado.")
	elseif event == "font1" then
		print("<font face='Arial Black'>")
	elseif event == "font2" then
		print("<font face='Bazooka'>")
	elseif event == "font3" then
		print("<font face='Century Gothic'>")
	elseif event == "font4" then
		print("<font face='Comic Sans MS'>")
	elseif event == "font5" then
		print("<font face='Courier'>")
	elseif event == "font6" then
		print("<font face='Impact'>")
	elseif event == "font7" then
		print("<font face='Lucida Handwriting'>")
	elseif event == "font8" then
		print("<font face='Pythagoras'>")
	elseif event == "font9" then
		print("<font face='Technical'>")
	elseif event == "font10" then
		print("<font face='Tempus Sans ITC'>")
	elseif event == "font11" then
		print("<font face='Trebuchet MS'>")
	elseif event == "font12" then
		print("<font face='Monotype Corsiva'>")
	elseif event == "font13" then
		print("<font face='Lucida Console'>")
	elseif event == "left" then
		print("<p align='left'>")
	elseif event == "center" then
		print("<p align='center'>")
	elseif event == "right" then
		print("<p align='right'>")
	elseif event == "5" then
		print("<font size='5'>")
	elseif event == "10" then
		print("<font size='10'>")
	elseif event == "12" then
		print("<font size='12'>")
	elseif event == "15" then
		print("<font size='15'>")
	elseif event == "20" then
		print("<font size='20'>")
	elseif event == "25" then
		print("<font size='25'>")
	elseif event == "30" then
		print("<font size='30'>")
	elseif event == "35" then
		print("<font size='35'>")
	elseif event == "40" then
		print("<font size='40'>")
	elseif event == "45" then
		print("<font size='45'>")
	elseif event == "50" then
		print("<font size='50'>")
	elseif event == "bold" then
		print("<b>")
	elseif event == "italic" then
		print("<i>")
	elseif event == "underlined" then
		print("<u>")
	end
end
