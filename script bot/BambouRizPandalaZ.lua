-- BABZ --
-----------------------------

--- Paramètres ---

GATHER = {111,108,110,112}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}

function hiboux()
	npc:npc(692,3)
	npc:reply(-1)
	exchange:putAllItems()
	global:leaveDialog()
end

function move()
	return {
		{map = "8129542", path = "409"}, --Interieur Banque Pandala--
		{map = "12580", path = "right"}, --Exterieur Banque Pandala--
		{map = "25,-36", path = "right"},
		{map = "26,-37", path = "bottom"}, --Zaap Pandala Neutre--
		{map = "26,-36", path = "bottom"},
		{map = "26,-35", path = "bottom"},
		{map = "26,-34", path = "bottom", gather = true}, --Debut Boucle--
		{map = "26,-33", path = "bottom", gather = true},
		{map = "26,-32", path = "bottom"},
		{map = "26,-31", path = "bottom", gather = true},
		{map = "26,-30", path = "bottom", gather = true},
		{map = "26,-29", path = "bottom", gather = true},
		{map = "26,-28", path = "left", gather = true},
		{map = "25,-28", path = "top", gather = true},
		{map = "25,-29", path = "left", gather = true},
		{map = "24,-29", path = "bottom", gather = true},
		{map = "24,-28", path = "left", gather = true},
		{map = "23,-28", path = "top", gather = true},
		{map = "23,-29", path = "left", gather = true},
		{map = "22,-29", path = "bottom", gather = true},
		{map = "22,-28", path = "bottom", gather = true},
		{map = "22,-27", path = "left", gather = true},
		{map = "21,-27", path = "top", gather = true},
		{map = "21,-28", path = "top", gather = true},
		{map = "21,-29", path = "left", gather = true},
		{map = "20,-29", path = "bottom"},
		{map = "20,-28", path = "bottom", gather = true},
		{map = "20,-27", path = "bottom", gather = true},
		{map = "20,-26", path = "bottom", gather = true},
		{map = "20,-25", path = "bottom", gather = true},
		{map = "20,-24", path = "bottom", gather = true},
		{map = "20,-23", path = "right", gather = true},
		{map = "21,-23", path = "bottom", gather = true},
		{map = "21,-22", path = "right", gather = true},
		{map = "22,-22", path = "bottom", gather = true},
		{map = "22,-21", path = "bottom", gather = true},
		{map = "22,-20", path = "right", gather = true},
		{map = "23,-20", path = "top", gather = true},
		{map = "23,-21", path = "right", gather = true},
		{map = "24,-21", path = "top", gather = true},
		{map = "24,-22", path = "right"},
		{map = "25,-22", path = "top", gather = true},
		{map = "25,-23", path = "right", gather = true},
		{map = "26,-23", path = "top", gather = true},
		{map = "26,-24", path = "top", gather = true},
		{map = "26,-25", path = "right", gather = true},
		{map = "27,-25", path = "top", gather = true},
		{map = "27,-26", path = "left", gather = true},
		{map = "26,-26", path = "left", gather = true},
		{map = "25,-26", path = "left", gather = true},
		{map = "24,-26", path = "top", gather = true},
		{map = "24,-27", path = "right", gather = true},
		{map = "25,-27", path = "right", gather = true},
		{map = "26,-27", path = "right", gather = true},
		{map = "27,-27", path = "top", gather = true},
		{map = "27,-28", path = "top"},
		{map = "27,-29", path = "top", gather = true},
		{map = "27,-30", path = "top", gather = true},
		{map = "27,-31", path = "top", gather = true},
		{map = "27,-32", path = "top", gather = true},
		{map = "27,-33", path = "right", gather = true},
		{map = "28,-33", path = "top", gather = true},
		{map = "28,-34", path = "left", gather = true},
		{map = "27,-34", path = "left", gather = true},
		
	}
end

function bank()
	return {
		{map = "8129542", path = "409", custom = hiboux}, --Interieur Banque Pandala--
		{map = "12580", door = "284"}, --Exterieur Banque Pandala--
		{map = "25,-36", path = "left"},
		{map = "26,-37", path = "bottom"}, --Zaap Pandala Neutre--
		{map = "26,-36", path = "left"},
		{map = "26,-35", path = "top"},
		{map = "26,-34", path = "top"}, --Debut Boucle--
		{map = "26,-33", path = "top"},
		{map = "26,-32", path = "top"},
		{map = "26,-31", path = "top"},
		{map = "26,-30", path = "top"},
		{map = "26,-29", path = "top"},
		{map = "26,-28", path = "top"},
		{map = "25,-28", path = "top"},
		{map = "25,-29", path = "right"},
		{map = "24,-29", path = "right"},
		{map = "24,-28", path = "right"},
		{map = "23,-28", path = "right"},
		{map = "23,-29", path = "right"},
		{map = "22,-29", path = "right"},
		{map = "22,-28", path = "right"},
		{map = "22,-27", path = "top"},
		{map = "21,-27", path = "top"},
		{map = "21,-28", path = "right"},
		{map = "21,-29", path = "right"},
		{map = "20,-29", path = "right"},
		{map = "20,-28", path = "right"},
		{map = "20,-27", path = "top"},
		{map = "20,-26", path = "top"},
		{map = "20,-25", path = "top"},
		{map = "20,-24", path = "top"},
		{map = "20,-23", path = "top"},
		{map = "21,-23", path = "left"},
		{map = "21,-22", path = "top"},
		{map = "22,-22", path = "bottom"},
		{map = "22,-21", path = "bottom"},
		{map = "22,-20", path = "right"},
		{map = "23,-20", path = "top"},
		{map = "23,-21", path = "right"},
		{map = "24,-21", path = "top"},
		{map = "24,-22", path = "right"},
		{map = "25,-22", path = "top"},
		{map = "25,-23", path = "right"},
		{map = "26,-23", path = "top"},
		{map = "26,-24", path = "top"},
		{map = "26,-25", path = "top"},
		{map = "27,-25", path = "top"},
		{map = "27,-26", path = "top"},
		{map = "26,-26", path = "top"},
		{map = "25,-26", path = "top"},
		{map = "24,-26", path = "top"},
		{map = "24,-27", path = "top"},
		{map = "25,-27", path = "top"},
		{map = "26,-27", path = "top"},
		{map = "27,-27", path = "top"},
		{map = "27,-28", path = "top"},
		{map = "27,-29", path = "top"},
		{map = "27,-30", path = "top"},
		{map = "27,-31", path = "top"},
		{map = "27,-32", path = "top"},
		{map = "27,-33", path = "top"},
		{map = "28,-33", path = "top"},
		{map = "28,-34", path = "left"},
		{map = "27,-34", path = "left"},
	}
end

function phenix()
	return {
	}
end