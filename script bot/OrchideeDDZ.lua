-- BABZ & CHUPZ --
-----------------------------

--- Paramètres ---

GATHER = {254,255,68}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}

function move()
	return {
		{map = "-16,1", path = "bottom"}, --Zaap Eleveurs--
		{map = "-16,2", path = "bottom", gather = true},
		{map = "-16,3", path = "bottom"},
		{map = "84935175", path = "425"}, --Interieur banque Eleveurs vers Sortie--
		{map = "73400323", path = "left"}, --Exterieur banque Eleveurs--
		{map = "-17,4", path = "left"},
		{map = "-18,4", path = "left", gather = true}, --Debut de la boucle--
		
		{map = "-21,0", path = "bottom", gather = true},
		{map = "-20,0", path = "left", gather = true},
		{map = "-19,0", path = "top", gather = true},
		
		{map = "-20,-1", path = "bottom"}, --On contourne par le haut--
		{map = "-19,-1", path = "left"},
		
		
		{map = "-23,1", path = "bottom", gather = true},
		{map = "-22,1", path = "left", gather = true},
		{map = "-21,1", path = "right", gather = true},
		{map = "-20,1", path = "bottom", gather = true},
		{map = "-19,1", path = "top", gather = true},
		
		{map = "-23,2", path = "bottom", gather = true},
		{map = "-22,2", path = "top", gather = true},
		{map = "-21,2", path = "left", gather = true},
		{map = "-20,2", path = "left", gather = true},
		{map = "-19,2", path = "top", gather = true},
		
		{map = "-23,3", path = "right", gather = true},
		{map = "-22,3", path = "bottom", gather = true},
		{map = "-21,3", path = "right", gather = true},
		{map = "-20,3", path = "bottom", gather = true},
		{map = "-19,3", path = "top", gather = true},
		
		{map = "-22,4", path = "right", gather = true},
		{map = "-21,4", path = "top", gather = true},
		{map = "-20,4", path = "right", gather = true},
		{map = "-19,4", path = "top", gather = true},
	}
end

function bank()
	return {
		{map = "84935175", path = "425", npcBank = true}, --Interieur banque Eleveurs vidage items--
		{map = "73400323", door = "330"}, --Exterieur banque Eleveurs vers Interieur--
		
		{map = "-17,4", path = "right"},
		{map = "-18,4", path = "right"}, --Debut de la boucle--
		
		{map = "-21,0", path = "right"},
		{map = "-20,0", path = "bottom"},
		{map = "-19,0", path = "bottom"},
		{map = "-20,-1", path = "right"},
		{map = "-19,-1", path = "right"},
		
		
		{map = "-23,1", path = "right"},
		{map = "-22,1", path = "right"},
		{map = "-21,1", path = "right"},
		{map = "-20,1", path = "right"},
		{map = "-19,1", path = "bottom"},
		
		{map = "-23,2", path = "right"},
		{map = "-22,2", path = "right"},
		{map = "-21,2", path = "right"},
		{map = "-20,2", path = "right"},
		{map = "-19,2", path = "bottom"},
		
		{map = "-23,3", path = "right"},
		{map = "-22,3", path = "right"},
		{map = "-21,3", path = "right"},
		{map = "-20,3", path = "right"},
		{map = "-19,3", path = "bottom"},
		
		{map = "-22,4", path = "right"},
		{map = "-21,4", path = "right"},
		{map = "-20,4", path = "right"},
		{map = "-19,4", path = "right"},
	}
end

function phenix()
	return {
	}
end

