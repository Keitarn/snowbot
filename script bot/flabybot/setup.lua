MAX_MONSTERS = 2

level = character:level()
carac = 1

function move()
	if level < character:level() then
		global:sendKey(67)
		if carac == 0 then
			global:clickPosition(161,275)
		elseif carac == 1 then
			global:clickPosition(162,294)
		elseif carac == 2 then
			global:clickPosition(163,317)
		elseif carac == 3 then
			global:clickPosition(162,334)
		elseif carac == 4 then
			global:clickPosition(165,353)
		elseif carac == 5 then
			global:clickPosition(164,373)
		end
		points = (character:level() - level) * 5
		for i = 1,points do
			global:clickPosition(315,317)
		end
		global:clickPosition(280,418)
		global:clickPosition(174,48)
		level = character:level()
	end
	if inventory:itemCount(2474) == 1 and character:level() >= 12 then
		inventory:equipItem(2474)
	end
	if inventory:itemCount(2473) == 1 and character:level() >= 9 then
		inventory:equipItem(2473)
	end
	if inventory:itemCount(2475) == 1 and character:level() >= 8 then
		inventory:equipItem(2475)
	end
	if inventory:itemCount(2476) == 1 and character:level() >= 11 then
		inventory:equipItem(2476)
	end
	if inventory:itemCount(2477) == 1 and character:level() >= 10 then
		inventory:equipItem(2477)
	end
	if inventory:itemCount(2478) == 1 and character:level() >= 7 then
		inventory:equipItem(2478)
	end
	if inventory:itemCount(2473) <= 0 then
		return {
			{ map = "153092354", changeMap = "381" },
			{ map = "152044547", changeMap = "right" },
			{ map = "152043521", changeMap = "right" },
			{ map = "152045573", changeMap = "right" },
			{ map = "152046593", changeMap = "right" },
			{ map = "152043523", changeMap = "right" },
			{ map = "152046599", changeMap = "right" },
			{ map = "152044553", changeMap = "right" },
			{ map = "152046595", changeMap = "right" },
			{ map = "152044545", changeMap = "right" },
			{ map = "152045575", changeMap = "right" },
			{ map = "152045571", changeMap = "right" },
			{ map = "152043529", changeMap = "right" },
			{ map = "152043527", changeMap = "right" },
			{ map = "152043525", changeMap = "right" },
			{ map = "152045569", changeMap = "right" },
			{ map = "152046597", changeMap = "right" },
			{ map = "152044549", changeMap = "right" },
			{ map = "152044551", changeMap = "right" },
			{ map = "-2,-3", fight = true, changeMap = "right" },
			{ map = "-1,-3", fight = true, changeMap = "right|left" },
			{ map = "0,-3", fight = true, changeMap = "right|left" },
			{ map = "1,-3", fight = true, changeMap = "right|left" },
			{ map = "2,-3", fight = true, changeMap = "right|left" },
			{ map = "3,-3", fight = true, changeMap = "right|left" },
			{ map = "4,-3", fight = true, changeMap = "left" },
		}
	elseif inventory:itemCount(2478) <= 0 then
		return {
			{ map = "-2,-3", changeMap = "top" },
			{ map = "-1,-3", changeMap = "left" },
			{ map = "0,-3", changeMap = "left" },
			{ map = "1,-3", changeMap = "left" },
			{ map = "2,-3", changeMap = "left" },
			{ map = "3,-3", changeMap = "left" },
			{ map = "4,-3", changeMap = "left" },
			{ map = "-2,-4", fight = true, changeMap = "top" },
			{ map = "-2,-5", fight = true, changeMap = "left" },
			{ map = "-3,-5", fight = true, changeMap = "top" },
			{ map = "-3,-6", fight = true, changeMap = "right" },
			{ map = "-2,-6", fight = true, changeMap = "right" },
			{ map = "-1,-6", fight = true, changeMap = "bottom" },
			{ map = "-1,-5", fight = true, changeMap = "right" },
			{ map = "0,-5", fight = true, changeMap = "bottom" },
			{ map = "0,-4", fight = true, changeMap = "left" },
			{ map = "-1,-4", fight = true, changeMap = "left" },
		}
	elseif inventory:itemCount(2476) <= 0 then
		return {
			{ map = "-2,-3", changeMap = "right" },
			{ map = "-1,-3", changeMap = "right" },
			{ map = "0,-3", changeMap = "right" },
			{ map = "1,-3", changeMap = "top" },
			{ map = "-2,-4", changeMap = "right" },
			{ map = "-2,-5", changeMap = "right" },
			{ map = "-3,-5", changeMap = "right" },
			{ map = "-3,-6", changeMap = "right" },
			{ map = "-2,-6", changeMap = "right" },
			{ map = "-1,-6", changeMap = "bottom" },
			{ map = "-1,-5", changeMap = "right" },
			{ map = "0,-5", changeMap = "right" },
			{ map = "0,-4", changeMap = "top" },
			{ map = "-1,-4", changeMap = "right" },
			{ map = "1,-5", fight = true, changeMap = "right" },
			{ map = "2,-5", fight = true, changeMap = "right" },
			{ map = "3,-5", fight = true, changeMap = "bottom" },
			{ map = "3,-4", fight = true, changeMap = "left" },
			{ map = "2,-4", fight = true, changeMap = "left" },
			{ map = "1,-4", fight = true, changeMap = "top" },
		}
	elseif inventory:itemCount(2475) <= 0 then
		return {
			{ map = "-2,-3", changeMap = "right" },
			{ map = "-1,-3", changeMap = "right" },
			{ map = "0,-3", changeMap = "right" },
			{ map = "1,-3", changeMap = "bottom" },
			{ map = "1,-5", changeMap = "bottom" },
			{ map = "2,-5", changeMap = "left" },
			{ map = "3,-5", changeMap = "left" },
			{ map = "3,-4", changeMap = "left" },
			{ map = "2,-4", changeMap = "left" },
			{ map = "1,-4", changeMap = "bottom" },
			{ map = "1,-3", changeMap = "bottom" },
			{ map = "1,-2", fight = true, changeMap = "right" },
			{ map = "2,-2", fight = true, changeMap = "right" },
			{ map = "3,-2", fight = true, changeMap = "bottom" },
			{ map = "3,-1", fight = true, changeMap = "left" },
			{ map = "2,-1", fight = true, changeMap = "bottom" },
			{ map = "2,0", fight = true, changeMap = "left" },
			{ map = "1,0", fight = true, changeMap = "top" },
			{ map = "1,-1", fight = true, changeMap = "top" },
		}
	elseif inventory:itemCount(2477) <= 0 then
		return {
			{ map = "-2,-3", changeMap = "bottom" },
			{ map = "1,-2", changeMap = "left" },
			{ map = "2,-2", changeMap = "left" },
			{ map = "3,-2", changeMap = "left" },
			{ map = "3,-1", changeMap = "left" },
			{ map = "2,-1", changeMap = "left" },
			{ map = "2,0", changeMap = "left" },
			{ map = "1,0", changeMap = "top" },
			{ map = "1,-1", changeMap = "top" },
			{ map = "0,-2", fight = true, changeMap = "left" },
			{ map = "-1,-2", fight = true, changeMap = "left" },
			{ map = "-2,-2", fight = true, changeMap = "bottom" },
			{ map = "-2,-1", fight = true, changeMap = "bottom" },
			{ map = "-2,0", fight = true, changeMap = "right" },
			{ map = "-1,0", fight = true, changeMap = "bottom" },
			{ map = "-1,1", fight = true, changeMap = "right" },
			{ map = "0,1", fight = true, changeMap = "top" },
			{ map = "0,0", fight = true, changeMap = "top" },
			{ map = "0,-1", custom = click },
		}
	elseif inventory:itemCount(2474) <= 0 then
		return {
			{ map = "-2,-3", changeMap = "right" },
			{ map = "-1,-3", changeMap = "right" },
			{ map = "0,-3", changeMap = "right" },
			{ map = "1,-3", changeMap = "bottom" },
			{ map = "0,-2", changeMap = "right" },
			{ map = "-1,-2", changeMap = "right" },
			{ map = "-2,-2", changeMap = "right" },
			{ map = "-2,-1", changeMap = "top" },
			{ map = "-2,0", changeMap = "right" },
			{ map = "-1,0", changeMap = "right" },
			{ map = "-1,1", changeMap = "right" },
			{ map = "0,1", changeMap = "top" },
			{ map = "0,0", changeMap = "top" },
			{ map = "0,-1", custom = click },
			{ map = "1,-1", changeMap = "right" },
			{ map = "1,-2", changeMap = "bottom" },
			{ map = "2,-1", changeMap = "right" },
			{ map = "3,-1", changeMap = "bottom" },
			{ map = "3,0", changeMap = "bottom" },
			{ map = "3,1", fight = true, changeMap = "right" },
			{ map = "4,1", fight = true, changeMap = "top" },
			{ map = "4,0", fight = true, changeMap = "left" },
		}
	elseif character:level() < 12 then
		return {
			{ map = "3,0", changeMap = "top" },
			{ map = "3,1", changeMap = "top" },
			{ map = "4,1", changeMap = "top" },
			{ map = "4,0", changeMap = "left" },
			{ map = "3,-1", changeMap = "top"},
			{ map = "3,-2", changeMap = "top" },
			{ map = "3,-3", changeMap = "right" },
			{ map = "4,-3", custom = goAstrub },
			{ map = "192416776", changeMap = "bottom" },
			{ map = "191106048", fight = true, changeMap = "bottom" },
			{ map = "6,-18", fight = true, changeMap = "bottom" },
			{ map = "6,-17", fight = true, changeMap = "left" },
			{ map = "5,-17", fight = true, changeMap = "left" },
			{ map = "4,-17", fight = true, changeMap = "top" },
			{ map = "4,-18", fight = true, changeMap = "right" },
			{ map = "5,-18", changeMap = "right" },
		}
	else
		return {
			{ map = "3,0", changeMap = "top" },
			{ map = "3,1", changeMap = "top" },
			{ map = "4,1", changeMap = "top" },
			{ map = "4,0", changeMap = "left" },
			{ map = "3,-1", changeMap = "top"},
			{ map = "3,-2", changeMap = "top" },
			{ map = "3,-3", changeMap = "right" },
			{ map = "4,-3", custom = goAstrub },
			{ map = "192416776", changeMap = "bottom" },
			{ map = "191106048", changeMap = "bottom" },
			{ map = "6,-18", changeMap = "bottom" },
			{ map = "6,-17", changeMap = "left" },
			{ map = "5,-17", changeMap = "left" },
			{ map = "4,-17", changeMap = "top" },
			{ map = "4,-18", changeMap = "right" },
			{ map = "5,-18", custom = stop },
		}
	end
end

function click()
	global:delay(500)
	global:clickPosition(646,384)
end

function goAstrub()
	global:delay(500)
	npc:npc(4398,1)
	global:delay(500)
	npc:reply(300,400)
	global:delay(500)
	npc:reply(300,380)
end

function stop()
	global:printMessage("Le bot est prêt")
	global:stopScript()
end