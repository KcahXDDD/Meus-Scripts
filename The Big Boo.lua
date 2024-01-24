bx = 25
by = 25
speed = 20
stop = false

tfm.exec.addPhysicObject(0, bx, by, {type = 14, width = 100, height = 100})

eventLoop = function()
	for name in pairs(tfm.get.room.playerList) do
		px = tfm.get.room.playerList[name].x
		py = tfm.get.room.playerList[name].y
		
		if px > bx then
			if tfm.get.room.playerList[name].isFacingRight then
				bx = bx + speed
				stop = false
			else
				stop = true
			end
		elseif px < bx then
			if not tfm.get.room.playerList[name].isFacingRight then
				bx = bx - speed
				stop = false
			else
				stop = true
			end
		end
		if stop == false then
			if py > by then
				by = by + speed
			elseif py < by then
				by = by - speed
			end
		end
		tfm.exec.addPhysicObject(0, bx, by, {type = 14, width = 100, height = 100})
		tfm.exec.removeImage(img)
		if px > bx then
			if tfm.get.room.playerList[name].isFacingRight then
				img = tfm.exec.addImage("1780361017b.png", "_1", bx - 80, by - 80, nil, 0.8, 0.8)
			else
				img = tfm.exec.addImage("1780360d299.png", "_1", bx - 80, by - 80, nil, 0.8, 0.8)
			end
		elseif px < bx then
			if tfm.get.room.playerList[name].isFacingRight then
				img = tfm.exec.addImage("1780360bb26.png", "_1", bx - 80, by - 80, nil, 0.8, 0.8)
			else
				img = tfm.exec.addImage("1780360ea09.png", "_1", bx - 80, by - 80, nil, 0.8, 0.8)
			end
		end
	end
end
