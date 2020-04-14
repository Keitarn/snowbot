-- BABZ & CHUPZ --
-----------------------------

--- Paramètres ---

GATHER = {}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 3
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {2487,2376,2371}
FORCE_MONSTERS = {}

function move()
	return {
		{map = "91753985", path = "480"}, --Interieur banque Sufokia vers Sortie--
		{map = "90703872", path = "bottom"}, --Exterieur banque Sufokia vers bas--
		{map = "14,26", path = "left"},
		{map = "13,26", path = "zaapi(90703364)"}, --Zaap Sufokia vers Zaapi Gelees--
		{map = "13,29", path = "left"},
		{map = "12,29", path = "left"},
		--inventory:deleteItem(id,q)--
		{map = "9,28", path = "bottom|right", gather = false, fight = true},
		{map = "10,28", path = "bottom|right|left", gather = false, fight = true},
		{map = "11,28", path = "bottom|left", gather = false, fight = true},
		{map = "6,29", path = "bottom|right", gather = false, fight = true},
		{map = "7,29", path = "bottom|right|left", gather = false, fight = true},
		{map = "8,29", path = "bottom|right|left", gather = false, fight = true},
		{map = "9,29", path = "bottom|right|left|top", gather = false, fight = true},
		{map = "10,29", path = "bottom|right|left|top", gather = false, fight = true},
		{map = "11,29", path = "bottom|left|top", gather = false, fight = true},
		{map = "6,30", path = "bottom|right|top", gather = false, fight = true},
		{map = "7,30", path = "bottom|right|left|top", gather = false, fight = true},
		{map = "8,30", path = "bottom|right|left|top", gather = false, fight = true},
		{map = "9,30", path = "right|left|top", gather = false, fight = true},
		{map = "10,30", path = "left|top", gather = false, fight = true},
		{map = "11,30", path = "top", gather = false, fight = true},
		{map = "6,31", path = "right|top", gather = false, fight = true},
		{map = "7,31", path = "right|left|top", gather = false, fight = true},
		{map = "8,31", path = "left|top", gather = false, fight = true},
	}
end

function bank()
	return {
		{map = "13,29", path = "zaapi(95422468)"}, --Zaapi Gelees vers Zaap Sufokia--
		{map = "90703872", path = "302", npcBank = true}, --Exterieur banque Sufokia vers Interieur--
		{map = "12,29", path = "right"},
		{map = "13,26", path = "right"},
		{map = "14,26", path = "top"},
		{map = "9,28", path = "right"},
		{map = "10,28", path = "right", },
		{map = "11,28", path = "bottom"},
		{map = "6,29", path = "right"},
		{map = "7,29", path = "right"},
		{map = "8,29", path = "right"},
		{map = "9,29", path = "right"},
		{map = "10,29", path = "right"},
		{map = "11,29", path = "right"},
		{map = "6,30", path = "right"},
		{map = "7,30", path = "right"},
		{map = "8,30", path = "right"},
		{map = "9,30", path = "right"},
		{map = "10,30", path = "top"},
		{map = "11,30", path = "top"},
		{map = "6,31", path = "right"},
		{map = "7,31", path = "right"},
		{map = "8,31", path = "top"},
	}
end

function phenix()
	return {
	}
end