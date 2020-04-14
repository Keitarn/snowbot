MAX_PODS = 90

function havresac()
	global:delay(1000)
    global:sendKey(72)
    global:delay(1000)
end

function enbas()
	global:delay(2500)
	global:clickPosition(495,463)
end

function eleveur()
	global:delay(1000)
	map:changeMap("zaap(125,196,68419587)")
	global:delay(1000)
end

function astrub()
	global:delay(1000)
	map:changeMap("zaap(125,196,191105026)")
	global:delay(1000)
end

function clickDoor()
	global:delay(1000)
    global:clickPosition(222,243)
    global:delay(1000)
end

function scarafeuille()
    global:delay(1000)
    map:changeMap("zaap(110,199,88212481)")
    global:delay(1000)
end

function amakna()
    global:delay(1000)
    map:changeMap("zaap(125,196,88213271)")
    global:delay(1000)
end

function bouftous()
    global:delay(1000)
    map:changeMap("zaap(110,199,88082704)")
    global:delay(1000)
end

function getZaap()
	if(scara == "true") then
		scarafeuille()
	else
		bouftous()
	end
end

right = "no"
left = "yes"

function getDirection()
		if right == "yes" then
			right = "no"
			left = "yes"
			global:clickPosition(640,160)
		elseif	left == "yes" then
			right = "yes"
			left = "no"
			global:clickPosition(3,106)
		end
end

function sortirForet()
    global:clickPosition(173,78)
end

part1 = false
part2 = false
part3 = false

function setPart1()
    part1 = true
end

function setPart2()
    part2 = true
end

function setPart3()
    part3 = true
end

function changingMap()
	part1 = true
	part3 = true
end

function goToAmakna()
	part3 = false
	amakna()
end

function unsetPart3()
	part3 = false
end

function move()
	if (job:level(26) < 20) then
		--global:printMessage("Ortie")
		ELEMENTS_TO_GATHER = {254} --Ortie
		return {
		{map = "0,0", custom = astrub},
		{map = "5,-18", changeMap = "bottom"},
		{map = "5,-17", changeMap = "bottom", gather = true},
		{map = "1,-16", changeMap = "bottom", gather = true},
		{map = "3,-15", changeMap = "bottom", gather = true},
		{map = "3,-14", changeMap = "bottom", gather = true},
		{map = "3,-13", changeMap = "bottom", gather = true},
		{map = "3,-12", changeMap = "bottom", gather = true},
		{map = "3,-11", changeMap = "bottom", gather = true},
		{map = "3,-10", changeMap = "right", gather = true},
		{map = "4,-10", changeMap = "right", gather = true},
		{map = "5,-9", changeMap = "right", gather = true},
		{map = "5,-10", changeMap = "bottom", gather = true},
		{map = "1,-15", changeMap = "right", gather = true},
		{map = "2,-15", changeMap = "right", gather = true},
		{map = "5,-16", changeMap = "left", gather = true},
		{map = "4,-16", changeMap = "left", gather = true},
		{map = "3,-16", changeMap = "left", gather = true},
		{map = "2,-16", changeMap = "left", gather = true},
		{map = "6,-9", changeMap = "right", gather = true},
		{map = "7,-9", changeMap = "right", gather = true},
		{map = "8,-9", changeMap = "right", gather = true},
		{map = "9,-9", changeMap = "top", gather = true},
		{map = "9,-10", changeMap = "left", gather = true},
		{map = "8,-10", changeMap = "left", gather = true},
		{map = "7,-10", changeMap = "left", gather = true},
		{map = "6,-10", changeMap = "top", gather = true},
		{map = "6,-11", changeMap = "right", gather = true},
		{map = "7,-11", changeMap = "right", gather = true},
		{map = "8,-11", changeMap = "right", gather = true},
		{map = "9,-11", changeMap = "top", gather = true},
		{map = "9,-12", changeMap = "top", gather = true},
		{map = "9,-13", changeMap = "left", gather = true},
		{map = "8,-13", changeMap = "bottom", gather = true},
		{map = "8,-12", changeMap = "left", gather = true},
		{map = "7,-12", changeMap = "left", gather = true},
		{map = "6,-12", changeMap = "left", gather = true},
		{map = "5,-12", changeMap = "left", gather = true},
		{map = "4,-12", changeMap = "top", gather = true},
		{map = "6,-13", changeMap = "top", gather = true},
		{map = "6,-14", changeMap = "left", gather = true},
		{map = "5,-14", changeMap = "left", gather = true},
		{map = "4,-14", changeMap = "top", gather = true},
		{map = "4,-15", changeMap = "top", gather = true},
		{map = "4,-13", changeMap = "right", gather = true},
		{map = "5,-13", changeMap = "right", gather = true},
	}
	elseif (job:level(26) >= 20) and (job:level(26) < 40) then
		--global:printMessage("Ortie Sauge")
		ELEMENTS_TO_GATHER = {254, 255} --Ortie Sauge
		return {
		{map = "0,0", custom = astrub},
		{map = "5,-18", changeMap = "bottom"},
		{map = "5,-17", changeMap = "bottom", gather = true},
		{map = "5,-16", changeMap = "bottom", gather = true},
		{map = "5,-15", changeMap = "left", gather = true},
		{map = "4,-15", changeMap = "left", gather = true},
		{map = "2,-15", changeMap = "bottom", gather = true},
		{map = "3,-14", changeMap = "bottom", gather = true},
		{map = "3,-12", changeMap = "bottom", gather = true},
		{map = "3,-13", changeMap = "bottom", gather = true},
		{map = "3,-11", changeMap = "bottom", gather = true},
		{map = "2,-14", changeMap = "right", gather = true},
		{map = "3,-10", changeMap = "right", gather = true},
		{map = "4,-10", changeMap = "right", gather = true},
		{map = "5,-10", changeMap = "bottom", gather = true},
		{map = "5,-11", changeMap = "top", gather = true},
		{map = "5,-12", changeMap = "top", gather = true},
		{map = "5,-13", changeMap = "right", gather = true},
		{map = "6,-12", changeMap = "right", gather = true},
		{map = "7,-12", changeMap = "right", gather = true},
		{map = "9,-12", changeMap = "right", gather = true},
		{map = "6,-13", changeMap = "bottom", gather = true},
		{map = "10,-12", changeMap = "top", gather = true},
		{map = "10,-13", changeMap = "left", gather = true},
		{map = "9,-13", changeMap = "left", gather = true},
		{map = "8,-13", changeMap = "left", gather = true},
		{map = "7,-13", changeMap = "top", gather = true},
		{map = "7,-14", changeMap = "top", gather = true},
		{map = "7,-15", changeMap = "left", gather = true},
		{map = "5,-9", changeMap = "right", gather = true},
		{map = "6,-9", changeMap = "right", gather = true},
		{map = "7,-9", changeMap = "top", gather = true},
		{map = "7,-10", changeMap = "top", gather = true},
		{map = "7,-11", changeMap = "left", gather = true},
		{map = "6,-11", changeMap = "left", gather = true},
		{map = "8,-12", changeMap = "bottom", gather = true},
		{map = "8,-11", changeMap = "bottom", gather = true},
		{map = "8,-10", changeMap = "right", gather = true},
		{map = "9,-10", changeMap = "top", gather = true},
		{map = "9,-11", changeMap = "top", gather = true},
		{map = "6,-14", changeMap = "left", gather = true},
		{map = "6,-15", changeMap = "bottom", gather = true},
		{map = "5,-14", changeMap = "top", gather = true},
		{map = "3,-16", changeMap = "left", gather = true},
		{map = "2,-16", changeMap = "left", gather = true},
		{map = "1,-16", changeMap = "bottom", gather = true},
		{map = "1,-15", changeMap = "right", gather = true},
		{map = "3,-15", changeMap = "top", gather = true},
	}
	elseif (job:level(26) >= 40) and (job:level(26) < 80) then
		--global:printMessage("trefles menthe")
		ELEMENTS_TO_GATHER = {254,255,67,66} --Trefles menthe
		if part1 == false and part2 == false and part3 == false then
			return {
				{map = "0,0", custom = scarafeuille},
				{map = "-1,24", changeMap = "left"},
				{map = "-2,24", changeMap = "left", gather = true},
				{map = "-3,24", changeMap = "left", gather = true},
				{map = "-4,24", changeMap = "bottom", gather = true},
				{map = "-4,25", changeMap = "left"},
				{map = "-5,25", changeMap = "bottom"},
				{map = "-5,26", changeMap = "right", gather = true},
				{map = "-4,26", changeMap = "right", gather = true},
				{map = "-3,26", changeMap = "right", gather = true},
				{map = "-2,26", changeMap = "bottom", gather = true},
				{map = "-2,27", changeMap = "left"},
				{map = "-3,27", changeMap = "left", gather = true},
				{map = "-4,27", changeMap = "left", gather = true},
				{map = "-5,27", changeMap = "left", gather = true},
				{map = "-6,27", changeMap = "bottom", gather = true},
				{map = "-6,28", changeMap = "bottom", gather = true},
				{map = "-6,29", changeMap = "right"},
				{map = "-5,29", changeMap = "right", gather = true},
				{map = "-4,29", changeMap = "top", gather = true},
				{map = "-4,28", changeMap = "right"},
				{map = "-3,28", custom = changingMap, changeMap = "right", gather = true},
				{map = "-2, 28", havenbag = true},
			}

		elseif part1 == true and part2 == false and part3 == true then
			return {
				{map = "0,0", custom = goToAmakna},
			}
		elseif part1 == true and part2 == false and part3 == false then
			return {
				{map = "-2,0", changeMap = "right"},
				{map = "-1,0", changeMap = "right"},
				{map = "0,0", changeMap = "right"},
				{map = "1,0", changeMap = "right"},
				{map = "2,0", changeMap = "right"},
				{map = "3,0", changeMap = "right"},
				{map = "4,0", changeMap = "right"},
				{map = "5,0", changeMap = "bottom", gather = true},
				{map = "5,1", changeMap = "bottom", gather = true},
				{map = "5,2", changeMap = "left"},
				{map = "4,2", changeMap = "left", gather = true},
				{map = "3,2", changeMap = "bottom", gather = true},
				{map = "3,3", changeMap = "left"},
				{map = "2,3", changeMap = "left", gather = true},
				{map = "1,3", changeMap = "bottom"},
				{map = "1,4", changeMap = "bottom", gather = true},
				{map = "1,5", changeMap = "bottom", gather = true},
				{map = "1,6", changeMap = "right"},
				{map = "2,6", changeMap = "right", gather = true},
				{map = "3,6", changeMap = "top"},
				{map = "3,5", changeMap = "right", gather = true},
				{map = "4,5", changeMap = "right"},
				{map = "5,5", changeMap = "bottom", gather = true},
				{map = "5,6", changeMap = "bottom"},
				{map = "5,7", changeMap = "bottom", gather = true},
				{map = "5,8", changeMap = "bottom"},
				{map = "5,9", changeMap = "bottom"},
				{map = "5,10", changeMap = "bottom", gather = true},
				{map = "5,11", changeMap = "right"},
				{map = "6,11", changeMap = "right", gather = true},
				{map = "7,11", changeMap = "bottom", gather = true},
				{map = "7,12", changeMap = "right", gather = true},
				{map = "8,12", changeMap = "right", gather = true},
				{map = "9,12", changeMap = "right"},
				{map = "10,12", changeMap = "top"},
				{map = "10,11", changeMap = "top", gather = true},
				{map = "10,10", changeMap = "right"},
				{map = "11,10", changeMap = "top", gather = true},
				{map = "11,9", changeMap = "left"},
				{map = "10,9", changeMap = "top"},
				{map = "10,8", changeMap = "top"},
				{map = "10,7", changeMap = "top", gather = true},
				{map = "10,6", changeMap = "right", gather = true},
				{map = "11,6", custom = setPart1, custom = setPart2, changeMap = "top", gather = true},
				{map = "11,5", havenbag = true},
			}
		elseif part1 == true and part2 == true and part3 == false then
			return {
				{map = "0,0", changeMap = "zaap(125,196,68419587)"},
				{map = "7,-4", changeMap = "bottom"},
				{map = "7,-3", changeMap = "bottom"},
				{map = "7,-2", changeMap = "bottom", gather = true},
				{map = "7,-1", changeMap = "right", gather = true},
				{map = "8,-1", changeMap = "right", gather = true},
				{map = "9,-1", changeMap = "bottom", gather = true},
				{map = "9,0", changeMap = "right", gather = true},
				{map = "10,0", changeMap = "right", gather = true},
				{map = "11,0", changeMap = "bottom", gather = true},
				{map = "11,1", changeMap = "right", gather = true},
				{map = "12,1", changeMap = "top", gather = true},
				{map = "12,0", changeMap = "right", gather = true},
				{map = "13,0", custom = setPart1, custom = setPart2, custom = setPart3, changeMap = "bottom"},
			}
		elseif part1 == true and part2 == true and part3 == true then
			part1 = false
			part2 = false
			part3 = false
			havresac()
		end
	elseif (job:level(26) >= 80) and (job:level(26) < 100) then
		--global:printMessage("Orchidee")
		ELEMENTS_TO_GATHER = {254,255,67,66,68} --Orchidee
		return {
		{map = "0,0", changeMap = "zaap(125,196,73400320)"},
		{map = "-16,1", changeMap = "top"},
		{map = "-16,0", changeMap = "left", gather = true},
		{map = "-17,0", changeMap = "left", gather = true},
		{map = "-18,0", changeMap = "left", gather = true},
		{map = "-19,0", changeMap = "bottom", gather = true},
		{map = "-19,1", changeMap = "left", gather = true},
		{map = "-20,0", changeMap = "left", gather = true},
		{map = "-20,1", changeMap = "top", gather = true},
		{map = "-21,0", changeMap = "bottom", gather = true},
		{map = "-21,1", changeMap = "left", gather = true},
		{map = "-22,1", changeMap = "left", gather = true},
		{map = "-23,1", changeMap = "bottom", gather = true},
		{map = "-23,2", changeMap = "right", gather = true},
		{map = "-22,2", changeMap = "right", gather = true},
		{map = "-21,2", changeMap = "right", gather = true},
		{map = "-20,2", changeMap = "right", gather = true},
		{map = "-19,2", changeMap = "bottom", gather = true},
		{map = "-19,3", changeMap = "left", gather = true},
		{map = "-20,3", changeMap = "left", gather = true},
		{map = "-21,3", changeMap = "left", gather = true},
		{map = "-22,3", changeMap = "bottom", gather = true},
		{map = "-22,4", changeMap = "right", gather = true},
		{map = "-20,4", changeMap = "right", gather = true},
		{map = "-21,4", changeMap = "right", gather = true},
		{map = "-19,4", changeMap = "right", gather = true},
		{map = "-18,4", changeMap = "top", gather = true},
		{map = "-18,3", changeMap = "top", gather = true},
		{map = "-18,1", changeMap = "top", gather = true},
		{map = "-18,2", changeMap = "top", gather = true},
	}
	elseif (job:level(26) >= 100) and (job:level(26) < 120) then
		--global:printMessage("Edelweiss")
		ELEMENTS_TO_GATHER = {254,255,67,66,68,61} --Edelweiss
		return {
			{map = "162791424", custom = getZaap},
			{map = "10,1", changeMap = "right"},
			{map = "11,1", changeMap = "right", gather = true},
			{map = "12,1", changeMap = "right"},
			{map = "13,1", changeMap = "top", gather = true},
			{map = "13,0", changeMap = "left"},
			{map = "12,0", changeMap = "left"},
			{map = "11,0", changeMap = "left"},
			{map = "10,0", changeMap = "left", gather = true},
			{map = "9,0", changeMap = "left", gather = true},
			{map = "8,0", changeMap = "top"},
			{map = "8,-1", changeMap = "left", gather = true},
			{map = "7,-1", changeMap = "top", gather = true},
			{map = "7,-2", changeMap = "left", gather = true},
			{map = "6,-2", changeMap = "top"},
			{map = "6,-3", changeMap = "top", gather = true},
			{map = "6,-4", changeMap = "right"},
			{map = "7,-4", changeMap = "top", gather = true},
			{map = "7,-5", changeMap = "right"},
			{map = "8,-5", changeMap = "top"},
			{map = "8,-6", changeMap = "left"},
			{map = "7,-6", changeMap = "left"},
			{map = "6,-6", changeMap = "top"},
			{map = "6,-7", changeMap = "top"},
			{map = "6,-8", changeMap = "left", gather = true},
			{map = "5,-8", changeMap = "left"},
			{map = "4,-8", changeMap = "left", gather = true},
			{map = "4,-9", changeMap = "right"},
			{map = "5,-9", changeMap = "right"},
			{map = "6,-9", changeMap = "right", gather = true},
			{map = "7,-9", changeMap = "right"},
			{map = "8,-9", changeMap = "right"},
			{map = "9,-9", changeMap = "top"},
			{map = "9,-10", changeMap = "left", gather = true},
			{map = "8,-10", changeMap = "left", gather = true},
			{map = "5,-10", changeMap = "left", gather = true},
			{map = "6,-10", changeMap = "left"},
			{map = "7,-10", changeMap = "left"},
			{map = "4,-10", changeMap = "left"},
			{map = "3,-10", changeMap = "bottom"},
			{map = "3,-9", changeMap = "left"},
			{map = "2,-9", changeMap = "bottom"},
			{map = "2,-8", changeMap = "left"},
			{map = "5,7", changeMap = "right"},
			{map = "6,7", changeMap = "right"},
			{map = "7,7", changeMap = "right"},
			{map = "8,7", changeMap = "right"},
			{map = "9,7", changeMap = "right"},
			{map = "10,7", changeMap = "top"},
			{map = "10,6", changeMap = "top"},
			{map = "10,5", changeMap = "top"},
			{map = "10,4", changeMap = "top"},
			{map = "10,3", changeMap = "top"},
			{map = "10,2", changeMap = "top"},
			{map = "1,-8", changeMap = "bottom", gather = true},
			{map = "1,-7", changeMap = "left"},
			{map = "0,-7", changeMap = "bottom"},
			{map = "0,-6", changeMap = "bottom"},
			{map = "0,-5", changeMap = "left"},
			{map = "-1,-5", changeMap = "left"},
			{map = "-2,-5", changeMap = "bottom", gather = true},
			{map = "-2,-4", changeMap = "right", gather = true},
			{map = "-1,-4", changeMap = "right"},
			{map = "0,-4", changeMap = "bottom", gather = true},
			{map = "0,-3", changeMap = "bottom"},
			{map = "0,-2", changeMap = "bottom"},
			{map = "0,-1", changeMap = "bottom"},
			{map = "88212247", changeMap = "bottom"},
			{map = "0,1", changeMap = "bottom"},
			{map = "0,2", changeMap = "bottom"},
			{map = "0,3", changeMap = "bottom"},
			{map = "0,4", changeMap = "bottom"},
			{map = "0,5", changeMap = "bottom"},
			{map = "0,6", changeMap = "bottom"},
			{map = "0,7", changeMap = "bottom"},
			{map = "0,8", changeMap = "left"},
			{map = "-2,8", changeMap = "left"},
			{map = "-3,8", changeMap = "left", gather = true},
			{map = "-4,8", changeMap = "top", gather = true},
			{map = "-4,7", changeMap = "left", gather = true},
			{map = "-5,7", changeMap = "top"},
			{map = "-5,6", changeMap = "top"},
			{map = "-5,5", changeMap = "left", gather = true},
			{map = "-6,5", changeMap = "bottom"},
			{map = "-6,6", changeMap = "bottom", gather = true},
			{map = "-6,7", changeMap = "bottom"},
			{map = "-6,8", changeMap = "right"},
			{map = "-5,8", changeMap = "bottom", gather = true},
			{map = "-5,9", changeMap = "right"},
			{map = "-4,9", gather = true, scara = "true", custom = havresac},
			{map = "88212751", gather = true, custom = clickDoor},
			{map = "-1,24", scara = "false", custom = getDirection},
			{map = "-2,24", changeMap = "left", gather = true},
			{map = "-4,24", changeMap = "left", gather = true},
			{map = "-5,24", changeMap = "left", gather = true},
			{map = "-6,24", changeMap = "bottom", gather = true},
			{map = "-6,25", changeMap = "bottom", gather = true},
			{map = "-6,26", changeMap = "right", gather = true},
			{map = "-5,26", changeMap = "right", gather = true},
			{map = "-4,26", changeMap = "bottom", gather = true},
			{map = "-4,27", changeMap = "bottom"},
			{map = "-4,28", changeMap = "left"},
			{map = "-5,28", changeMap = "bottom"},
			{map = "-5,29", changeMap = "bottom"},
			{map = "-5,30", changeMap = "right", gather = true},
			{map = "-4,30", changeMap = "right"},
			{map = "-3,30", changeMap = "right"},
			{map = "-2,30", changeMap = "top"},
			{map = "-2,29", changeMap = "top"},
			{map = "-2,28", changeMap = "top", gather = true},
			{map = "-2,27", changeMap = "top"},
			{map = "-2,26", changeMap = "top"},
			{map = "-2,25", changeMap = "right"},
			{map = "0,24", changeMap = "bottom"},
			{map = "0,25", changeMap = "bottom"},
			{map = "0,26", changeMap = "bottom"},
			{map = "0,27", changeMap = "bottom"},
			{map = "0,28", changeMap = "bottom"},
			{map = "0,29", changeMap = "bottom"},
			{map = "0,30", changeMap = "right"},
			{map = "1,30", changeMap = "bottom"},
			{map = "1,31", changeMap = "bottom"},
			{map = "1,32", changeMap = "bottom", gather = true},
			{map = "1,33", changeMap = "left", gather = true},
			{map = "0,33", changeMap = "bottom", gather = true},
			{map = "0,34", changeMap = "left"},
			{map = "-1,34", changeMap = "left", gather = true},
			{map = "-2,34", changeMap = "top", gather = true},
			{map = "-2,33", changeMap = "top"},
			{map = "-2,32", changeMap = "right"},
			{map = "-1,32", changeMap = "top", gather = true},
			{map = "-1,31", changeMap = "right"},

			{ map = "88081177",  changeMap = "left" },
			{ map = "1,-2",  changeMap = "bottom" },
			{ map = "1,-1",  changeMap = "left" },

			{ map = "99095051", changeMap = "410" },
		}
	elseif (job:level(26) >= 120) and (job:level(26) < 140) then
		--global:printMessage("Pandouille")
		ELEMENTS_TO_GATHER = {254,255,67,66,68,61,112} --Pandouille
		return {
			{map = "0,0", changeMap = "zaap(125,196,13605)"},
			{map = "26,-37", changeMap = "bottom"},
			{map = "26,-36", changeMap = "bottom"},
			{map = "26,-35", changeMap = "bottom"},
			{map = "26,-34", changeMap = "bottom"},
			{map = "26,-33", changeMap = "bottom", gather = true},
			{map = "26,-32", changeMap = "bottom", gather = true},
			{map = "26,-31", changeMap = "right", gather = true},
			{map = "27,-31", changeMap = "top", gather = true},
			{map = "27,-32", changeMap = "top", gather = true},
			{map = "27,-33", changeMap = "right", gather = true},
			{map = "28,-33", changeMap = "right", gather = true},
			{map = "29,-33", changeMap = "top", gather = true},
			{map = "28,-35", changeMap = "left", gather = true},
			{map = "27,-35", changeMap = "top", gather = true},
			{map = "27,-36", changeMap = "right"},
			{map = "28,-36", changeMap = "top", gather = true},
			{map = "28,-37", changeMap = "left", gather = true},
			{map = "27,-37", changeMap = "top", gather = true},
			{map = "27,-38", changeMap = "right"},
			{map = "28,-38", changeMap = "top"},
			{map = "28,-39", changeMap = "top", gather = true},
			{map = "28,-40", changeMap = "top", gather = true},
			{map = "26,-42", changeMap = "top", gather = true},
			{map = "26,-43", changeMap = "left"},
			{map = "25,-43", changeMap = "bottom", gather = true},
			{map = "25,-42", changeMap = "left", gather = true},
			{map = "24,-42", changeMap = "left", gather = true},
			{map = "23,-42", changeMap = "bottom", gather = true},
			{map = "23,-41", changeMap = "left"},
			{map = "22,-41", changeMap = "bottom", gather = true},
			{map = "22,-40", changeMap = "left", gather = true},
			{map = "21,-40", changeMap = "bottom", gather = true},
			{map = "21,-39", changeMap = "left", gather = true},
			{map = "20,-39", changeMap = "bottom", gather = true},
			{map = "20,-38", changeMap = "bottom", gather = true},
			{map = "20,-37", changeMap = "bottom"},
			{map = "20,-36", changeMap = "bottom", gather = true},
			{map = "20,-35", changeMap = "bottom"},
			{map = "20,-34", changeMap = "bottom"},
			{map = "20,-33", changeMap = "right"},
			{map = "21,-33", changeMap = "bottom", gather = true},
			{map = "21,-32", changeMap = "bottom", gather = true},
			{map = "21,-31", changeMap = "right", gather = true},
			{map = "22,-31", changeMap = "bottom", gather = true},
			{map = "22,-30", changeMap = "right"},
			{map = "23,-30", changeMap = "right", gather = true},
			{map = "24,-30", changeMap = "top", gather = true},
			{map = "24,-31", changeMap = "top", gather = true},
			{map = "24,-32", changeMap = "top"},
			{map = "24,-33", changeMap = "top"},
			{map = "24,-34", changeMap = "right"},
			{map = "25,-34", changeMap = "right"},
			{map = "28,-41", changeMap = "left", gather = true},
			{map = "29,-34", changeMap = "top"},
			{map = "29,-35", changeMap = "left"},
			{map = "27,-41", changeMap = "left"},
			{map = "26,-41", changeMap = "top"},
		}
	elseif (job:level(26) >= 140) and (job:level(26) < 160) then
		--global:printMessage("ginseng")
		ELEMENTS_TO_GATHER = {254,255,67,66,68,61,112,256} --ginseng
		return {
			{map = "0,0", changeMap = "zaap(110,199,154642)"},
			{map = "-46,18", changeMap = "left"},
		    {map = "-47,18", changeMap = "bottom"},
		    {map = "-48,19", changeMap = "left"},
		    {map = "-47,19", changeMap = "left"},
		    {map = "-49,19", changeMap = "left"},
		    {map = "-50,19", changeMap = "bottom"},
		    {map = "-50,20", changeMap = "bottom"},
		    {map = "-50,21", changeMap = "left"},
		    {map = "-51,21", changeMap = "top"},
		    {map = "-51,20", changeMap = "left", gather = true},
		    {map = "-52,20", changeMap = "top", gather = true},
		    {map = "-51,19", changeMap = "top", gather = true},
		    {map = "-50,18", changeMap = "top", gather = true},
		    {map = "-51,17", changeMap = "top", gather = true},
		    {map = "-50,16", changeMap = "top", gather = true},
		    {map = "-50,15", changeMap = "top", gather = true},
		    {map = "-51,14", changeMap = "top", gather = true},
		    {map = "-51,13", changeMap = "top", gather = true},
		    {map = "-52,12", changeMap = "top", gather = true},
		    {map = "-54,11", changeMap = "top", gather = true},
		    {map = "-50,17", changeMap = "left", gather = true},
		    {map = "-50,14", changeMap = "left", gather = true},
		    {map = "-51,12", changeMap = "left", gather = true},
		    {map = "-52,11", changeMap = "left", gather = true},
		    {map = "-53,11", changeMap = "left", gather = true},
		    {map = "-54,10", changeMap = "left", gather = true},
		    {map = "-51,18", changeMap = "right", gather = true},
		    {map = "-52,19", changeMap = "right", gather = true},
		    {map = "-51,16", changeMap = "right", gather = true},
		    {map = "-55,10", changeMap = "bottom", gather = true},
		    {map = "-55,11", changeMap = "bottom", gather = true},
		    {map = "-55,12", changeMap = "bottom", gather = true},
		    {map = "-56,13", changeMap = "bottom", gather = true},
		    {map = "-56,14", changeMap = "bottom", gather = true},
		    {map = "-52,15", changeMap = "bottom", gather = true},
		    {map = "-52,16", changeMap = "bottom", gather = true},
		    {map = "-52,17", changeMap = "bottom", gather = true},
		    {map = "-55,15", changeMap = "right", gather = true},
		    {map = "-56,15", changeMap = "right", gather = true},
		    {map = "-54,15", changeMap = "right", gather = true},
		    {map = "-53,15", changeMap = "right", gather = true},
		    {map = "-52,18", changeMap = "bottom", gather = true},
		    {map = "-55,13", changeMap = "left", gather = true},
	    }
	elseif (job:level(26) >= 160) and (job:level(26) < 180) then
		--global:printMessage("Belladone")
		ELEMENTS_TO_GATHER = {254,255,67,66,68,61,112,256,257} --Belladone
		return {
		{map = "0,0", changeMap = "zaap(110,199,154642)"},
		{map = "-47,18", changeMap = "bottom"},
		{map = "-47,19", changeMap = "left"},
		{map = "-51,19", changeMap = "top", gather = true},
		{map = "-50,18", changeMap = "top", gather = true},
		{map = "-51,17", changeMap = "top", gather = true},
		{map = "-50,15", changeMap = "top", gather = true},
		{map = "-51,14", changeMap = "top", gather = true},
		{map = "-51,13", changeMap = "top", gather = true},
		{map = "-52,12", changeMap = "top", gather = true},
		{map = "-54,11", changeMap = "top", gather = true},
		{map = "-50,17", changeMap = "left", gather = true},
		{map = "-50,14", changeMap = "left", gather = true},
		{map = "-51,12", changeMap = "left", gather = true},
		{map = "-52,11", changeMap = "left", gather = true},
		{map = "-54,10", changeMap = "left", gather = true},
		{map = "-51,18", changeMap = "right", gather = true},
		{map = "-52,19", changeMap = "right", gather = true},
		{map = "-51,16", changeMap = "left", gather = true},
		{map = "-55,10", changeMap = "bottom", gather = true},
		{map = "-55,11", changeMap = "bottom", gather = true},
		{map = "-55,12", changeMap = "bottom", gather = true},
		{map = "-56,13", changeMap = "bottom", gather = true},
		{map = "-56,14", changeMap = "bottom", gather = true},
		{map = "-56,15", changeMap = "right", gather = true},
		{map = "-55,13", changeMap = "left", gather = true},
		{map = "-46,18", changeMap = "left"},
		{map = "-56,17", changeMap = "bottom", gather = true},
		{map = "-56,18", changeMap = "bottom", gather = true},
		{map = "-55,17", changeMap = "left", gather = true},
		{map = "-56,19", changeMap = "right", gather = true},
		{map = "-55,19", changeMap = "bottom", gather = true},
		{map = "-55,20", changeMap = "bottom", gather = true},
		{map = "-55,21", changeMap = "right", gather = true},
		{map = "-54,21", changeMap = "top", gather = true},
		{map = "-54,20", changeMap = "top", gather = true},
		{map = "-54,19", changeMap = "top", gather = true},
		{map = "-54,18", changeMap = "right", gather = true},
		{map = "-53,18", changeMap = "bottom", gather = true},
		{map = "-53,19", changeMap = "bottom", gather = true},
		{map = "-53,20", changeMap = "right", gather = true},
		{map = "-52,20", changeMap = "top", gather = true},
		{map = "-51,15", changeMap = "right", gather = true},
		{map = "-52,16", changeMap = "top", gather = true},
		{map = "-52,15", changeMap = "right", gather = true},
		{map = "-53,11", custom = enbas},
		{map = "-53,12", changeMap = "bottom", gather = true},
		{map = "-53,13", changeMap = "left", gather = true},
		{map = "-54,13", changeMap = "top", gather = true},
		{map = "-54,12", changeMap = "top", gather = true},
		{map = "-55,16", changeMap = "bottom", gather = true},
		{map = "-55,15", changeMap = "right", gather = true},
		{map = "-54,15", changeMap = "bottom", gather = true},
		{map = "-54,16", changeMap = "left", gather = true},
		{map = "-48,19", changeMap = "top", gather = true},
		{map = "-48,18", changeMap = "top", gather = true},
		{map = "-48,17", changeMap = "top", gather = true},
		{map = "-48,16", changeMap = "top", gather = true},
		{map = "-48,15", changeMap = "top", gather = true},
		{map = "-48,14", changeMap = "top", gather = true},
		{map = "-48,13", changeMap = "top", gather = true},
		{map = "-48,12", changeMap = "left", gather = true},
		{map = "-49,13", changeMap = "left", gather = true},
		{map = "-50,12", changeMap = "left", gather = true},
		{map = "-50,13", changeMap = "top", gather = true},
		{map = "-49,12", changeMap = "bottom", gather = true},
	}
	elseif (job:level(26) >= 180) and (job:level(26) <= 200) then
		--global:printMessage("Mandragore")
		ELEMENTS_TO_GATHER = {254,255,67,66,68,61,112,256,257,258} --Mandragore
		return {
		{map = "0,0", changeMap = "zaap(125,196,88085249)"},
		{map = "10,22", changeMap = "top"},
		{map = "10,21", changeMap = "right", gather = true},
		{map = "11,21", changeMap = "right", gather = true},
		{map = "12,21", changeMap = "right", gather = true},
		{map = "13,17", changeMap = "top", gather = true},
		{map = "13,18", changeMap = "top", gather = true},
		{map = "13,19", changeMap = "top", gather = true},
		{map = "13,20", changeMap = "top", gather = true},
		{map = "13,21", changeMap = "top", gather = true},
		{map = "13,16", changeMap = "left", gather = true},
		{map = "12,16", changeMap = "left", gather = true},
		{map = "11,16", changeMap = "top", gather = true},
		{map = "10,15", changeMap = "top", gather = true},
		{map = "9,14", changeMap = "bottom", gather = true},
		{map = "9,15", changeMap = "bottom", gather = true},
		{map = "8,16", changeMap = "bottom", gather = true},
		{map = "10,17", changeMap = "top", gather = true},
		{map = "8,17", changeMap = "right", gather = true},
		{map = "9,17", changeMap = "right", gather = true},
		{map = "10,16", changeMap = "right", gather = true},
		{map = "10,14", changeMap = "left", gather = true},
		{map = "9,16", changeMap = "left", gather = true},
		{map = "11,15", changeMap = "left", gather = true},
		}
	end
end

function bank()
	return {
		{map = "0,0", custom = astrub},
		{map = "5,-18", changeMap = "left" },
		{map = "191104002", changeMap = "261"},
		{map = "192415750", custom = hiboux, changeMap = "424"},
	}
end


function phenix()
	actualMap = map:currentPos()
	return {

	}
end

function hiboux()
    npc:npcBank(-1,-1)
    global:delay(2500)
    storage:putAllItems()
    global:leaveDialog()
end

function lost()
	havresac()
end
