
ELEMENTS_TO_GATHER = {121,30}
OPEN_BAGS = true
AUTO_DELETE = {}

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
MANDATORY_MONSTERS = {}

MAX_PODS = 90


function move()

	if map:onMap("0,0") then
		if actualMap == "-10,6" then
			map:changeMap("zaap(125,196,73400320)")
		end
	else
		actualMap = map:currentPos()
	end
	
	return {
	    {map = "0,0", changeMap= ("zaap(125,196,73400320)")},
		{map = "192415750", changeMap = "424"}, --Interieur banque Astrub vers Sortie--
		{map = "54534165", changeMap = "424"}, --Interieur banque Frigost vers Sortie--
		{map = "2885641", changeMap = "424"}, --Interieur banque Bonta vers Sortie--
		{map = "99095051", changeMap = "410"}, --Interieur banque Amakna vers Sortie--
		{map = "8912911", changeMap = "424"}, --Interieur banque Brakmar vers Sortie--
		{map = "91753985", changeMap = "396"}, --Interieur banque Sufokia vers Sortie--
		{map = "86511105", changeMap = "452"}, --Interieur banque Ottomaï vers Sortie--
		{map = "8129542", changeMap = "409"}, --Interieur banque Pandala vers Sortie--
		{map = "84935175", changeMap = "425"}, --Interieur banque Montagne Koalak vers Sortie--
		{map = "-16,1", changeMap = "left"},
		{map = "-17,1", changeMap = "left"},
		{map = "-18,1", changeMap = "left"},
		{map = "-20,1", changeMap = "left"},
		{map = "-19,1", changeMap = "left"},
		{map = "-21,1", changeMap = "top"},
		{map = "-21,0", changeMap = "top"},
		{map = "-21,-2", changeMap = "right"},
		{map = "-20,-7", changeMap = "top"},
		{map = "-15,-8", changeMap = "left"},
		{map = "-16,-7", changeMap = "right"},
		{map = "-15,-7", changeMap = "bottom"},
		{map = "-15,-4", changeMap = "left"},
		{map = "-16,-3", changeMap = "bottom"},
		{map = "-14,-2", changeMap = "right"},
		{map = "-11,1", changeMap = "bottom"},
		{map = "-10,12", changeMap = "top", gather = true},
		{map = "-10,11", changeMap = "top", gather = true},
		{map = "-10,8", changeMap = "top", gather = true},
		{map = "-10,9", changeMap = "top", gather = true},
		{map = "-10,10", changeMap = "top", gather = true},
		{map = "-11,5", changeMap = "bottom", gather = true},
		{map = "-11,4", changeMap = "bottom", gather = true},
		{map = "-11,6", changeMap = "bottom", gather = true},
		{map = "-11,7", changeMap = "bottom", gather = true},
		{map = "-11,8", changeMap = "bottom", gather = true},
		{map = "-11,9", changeMap = "bottom", gather = true},
		{map = "-11,10", changeMap = "bottom", gather = true},
		{map = "-11,11", changeMap = "bottom", gather = true},
		{map = "-11,12", changeMap = "right", gather = true},
		{map = "-11,2", changeMap = "bottom", gather = true},
		{map = "-11,3", changeMap = "bottom", gather = true},
		{map = "-12,0", changeMap = "bottom", gather = true},
		{map = "-13,-1", changeMap = "bottom", gather = true},
		{map = "-13,-2", changeMap = "bottom", gather = true},
		{map = "-16,-4", changeMap = "bottom", gather = true},
		{map = "-15,-5", changeMap = "bottom", gather = true},
		{map = "-15,-6", changeMap = "bottom", gather = true},
		{map = "-15,-9", changeMap = "right", gather = true},
		{map = "-14,-8", changeMap = "bottom"},
		{map = "-14,-9", changeMap = "bottom"},
		{map = "-14,-7", changeMap = "left"},
		{map = "-18,-3", changeMap = "top", gather = true},
		{map = "-18,-4", changeMap = "top", gather = true},
		{map = "-18,-5", changeMap = "top", gather = true},
		{map = "-19,-6", changeMap = "top", gather = true},
		{map = "-19,-8", changeMap = "top"},
		{map = "-17,-2", changeMap = "top", gather = true},
		{map = "-10,7", changeMap = "top", gather = true},
		{map = "-21,-1", changeMap = "top", gather = true},
		{map = "-20,-2", changeMap = "right", gather = true},
		{map = "-19,-2", changeMap = "right", gather = true},
		{map = "-18,-2", changeMap = "right", gather = true},
		{map = "-16,-2", changeMap = "right", gather = true},
		{map = "-15,-2", changeMap = "right", gather = true},
		{map = "-13,0", changeMap = "right", gather = true},
		{map = "-12,1", changeMap = "right", gather = true},
		{map = "-19,-9", changeMap = "right", gather = true},
		{map = "-18,-9", changeMap = "right", gather = true},
		{map = "-17,-9", changeMap = "right", gather = true},
		{map = "-16,-9", changeMap = "right", gather = true},
		{map = "-20,-8", changeMap = "right", gather = true},
		{map = "-18,-6", changeMap = "left", gather = true},
		{map = "-19,-7", changeMap = "left", gather = true},
		{map = "-17,-3", changeMap = "left", gather = true},
		{map = "-10,6", havenbag = true},
	}
end







function havenBag()
	usedTP = true
	global:printMessage("Téléportation dans l'havre-sac.")
	global:sendKey(72) -- H key
end

function useBank()
	npc:npcBank(-1,-1)
	global:delay(5000)
	storage:putAllItems()
	global:leaveDialog()
	usedTP = false
	lastActionId = 0
	global:sendKey(72) -- H key
end

function bank()
if usedTP == true then
		return {
			{ map = "0,0", changeMap = "zaap(119,212,191105026)" },
			{ map = "5,-18", changeMap = "left" }, -- Zaap Astrub
			{ map = "191104002", changeMap = "261" }, -- Extérieur banque
			{ map = "192415750", custom = useBank }, -- Intérieur banque
		}
	else
		return {
			{ map = map:currentPos(), custom = havenBag }, 
		}
	end
end



function phenix()
	actualMap = map:currentPos()
	return {
	}
end


