-- BABZ --
-----------------------------

--- Paramètres ---

GATHER = {101,98}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}

function move()
	return {
		{map = "2885641", path = "424"}, --Interieur banque Bonta vers Sortie--
		{map = "147254", path = "zaapi(147768)"}, --Exterieur banque Bonta vers Zaap Bonta--
		{map = "-32,-56", path = "zaap(164364304)|zaap(171967506)"}, --Zaap Bonta vers Zaap [-20,-20] ou vers Zaap [-25,12]--
		--Depart depuis Cania--
		{map = "-20,-20", path = "bottom"}, --Zaap [-20,-20]--
		{map = "-20,-19", path = "bottom"},
		{map = "-20,-18", path = "bottom"},
		{map = "-20,-17", path = "bottom"},
		{map = "-20,-16", path = "bottom"},
		{map = "-20,-15", path = "bottom"},
		{map = "-20,-14", path = "bottom"},
		{map = "-20,-13", path = "bottom"},
		{map = "-20,-12", path = "bottom"},
		--Depart depuis Sidimote--
		{map = "-25,12", path = "top"}, --Zaap [-25,12]--
		{map = "-25,11", path = "top"},
		{map = "-25,10", path = "top"},
		{map = "-25,9", path = "top"},
		{map = "-25,8", path = "top"},
		{map = "-25,7", path = "top"},
		{map = "-25,6", path = "top"},
		{map = "-25,5", path = "top"},
		{map = "-25,4", path = "left"},
		{map = "-20,-11", path = "bottom", gather = true}, --Debut Boucle--
		{map = "-20,-10", path = "bottom", gather = true},
		{map = "-20,-9", path = "left", gather = true},
		{map = "-21,-9", path = "left", gather = true},
		{map = "-22,-9", path = "left", gather = true},
		{map = "-23,-9", path = "bottom", gather = true},
		{map = "-23,-8", path = "left", gather = true},
		{map = "-24,-8", path = "bottom", gather = true},
		{map = "-24,-7", path = "right", gather = true},
		{map = "-23,-7", path = "bottom"},
		{map = "-23,-6", path = "left"},
		{map = "-24,-6", path = "bottom"},
		{map = "-24,-5", path = "right"},
		{map = "-23,-5", path = "right", gather = true},
		{map = "-22,-5", path = "bottom", gather = true},
		{map = "-22,-4", path = "left", gather = true},
		{map = "-23,-4", path = "bottom", gather = true},
		{map = "-23,-3", path = "left", gather = true},
		{map = "-24,-3", path = "left", gather = true},
		{map = "-25,-3", path = "bottom", gather = true},
		{map = "-25,-2", path = "right", gather = true},
		{map = "-24,-2", path = "right", gather = true},
		{map = "-23,-2", path = "bottom", gather = true},
		{map = "-23,-1", path = "left"},
		{map = "-24,-1", path = "bottom"},
		{map = "-24,0", path = "bottom", gather = true},
		{map = "-24,1", path = "bottom"},
		{map = "-24,2", path = "bottom", gather = true},
		{map = "-24,3", path = "left", gather = true},
		{map = "-25,3", path = "top"},
		{map = "-25,2", path = "top", gather = true},
		{map = "-25,1", path = "top", gather = true},
		{map = "-25,0", path = "top", gather = true},
		{map = "-25,-1", path = "left", gather = true},
		{map = "-26,-1", path = "bottom"},
		{map = "-26,0", path = "bottom"},
		{map = "-26,1", path = "bottom"},
		{map = "-26,2", path = "bottom", gather = true},
		{map = "-26,3", path = "bottom", gather = true},
		{map = "-26,4", path = "left", gather = true},
		{map = "-27,4", path = "top", gather = true},
		{map = "-27,3", path = "left"},
		{map = "-28,3", path = "top", gather = true},
		{map = "-28,2", path = "right"},
		{map = "-27,2", path = "top"},
		{map = "-27,1", path = "top"},
		{map = "-27,0", path = "left", gather = true},
		{map = "-28,0", path = "top", gather = true},
		{map = "-28,-1", path = "top", gather = true},
		{map = "-28,-2", path = "right"},
		{map = "-27,-2", path = "top", gather = true},
		{map = "-27,-3", path = "right", gather = true},
		{map = "-26,-3", path = "top"},
		{map = "-26,-4", path = "top"},
		{map = "-26,-5", path = "right", gather = true},
		{map = "-25,-5", path = "top", gather = true},
		{map = "-25,-6", path = "top"},
		{map = "-25,-7", path = "left", gather = true},
		{map = "-26,-7", path = "left", gather = true},
		{map = "-27,-7", path = "left", gather = true},
		{map = "-28,-7", path = "left", gather = true},
		{map = "-29,-7", path = "top", gather = true},
		{map = "-29,-8", path = "right", gather = true},
		{map = "-28,-8", path = "top", gather = true},
		{map = "-28,-9", path = "top", gather = true},
		{map = "-28,-10", path = "right", gather = true},
		{map = "-27,-10", path = "right", gather = true},
		{map = "-26,-10", path = "top", gather = true},
		{map = "-26,-11", path = "right", gather = true},
		{map = "-25,-11", path = "right"},
		{map = "-24,-11", path = "right"},
		{map = "-23,-11", path = "right"},
		{map = "-22,-11", path = "right"},
		{map = "-21,-11", path = "right"}, --Fin Boucle--
	}
end

function bank()
	return {
		{map = "2885641", path = "424", npcBank = true}, --Interieur banque Bonta vidage items--
		{map = "147254", door = "383"}, --Exterieur banque Bonta vers interieur--
		{map = "-32,-56", path = "zaapi(147254)"}, --Zaap Bonta vers Exterieur banque Bonta--
		{map = "-20,-20", path = "havenbag"}, --Zaap [-20,-20]--
		{map = "-20,-19", path = "havenbag"},
		{map = "-20,-18", path = "havenbag"},
		{map = "-20,-17", path = "havenbag"},
		{map = "-20,-16", path = "havenbag"},
		{map = "-20,-15", path = "havenbag"},
		{map = "-20,-14", path = "havenbag"},
		{map = "-20,-13", path = "havenbag"},
		{map = "-20,-12", path = "havenbag"},
		{map = "-25,12", path = "havenbag"}, --Zaap [-25,12]--
		{map = "-25,11", path = "havenbag"},
		{map = "-25,10", path = "havenbag"},
		{map = "-25,9", path = "havenbag"},
		{map = "-25,8", path = "havenbag"},
		{map = "-25,7", path = "havenbag"},
		{map = "-25,6", path = "havenbag"},
		{map = "-25,5", path = "havenbag"},
		{map = "-25,4", path = "havenbag"},
		{map = "-20,-11", path = "havenbag"}, --Debut Boucle--
		{map = "-20,-10", path = "havenbag"},
		{map = "-20,-9", path = "havenbag"},
		{map = "-21,-9", path = "havenbag"},
		{map = "-22,-9", path = "havenbag"},
		{map = "-23,-9", path = "havenbag"},
		{map = "-23,-8", path = "havenbag"},
		{map = "-24,-8", path = "havenbag"},
		{map = "-24,-7", path = "havenbag"},
		{map = "-23,-7", path = "havenbag"},
		{map = "-23,-6", path = "havenbag"},
		{map = "-24,-6", path = "havenbag"},
		{map = "-24,-5", path = "havenbag"},
		{map = "-23,-5", path = "havenbag"},
		{map = "-22,-5", path = "havenbag"},
		{map = "-22,-4", path = "havenbag"},
		{map = "-23,-4", path = "havenbag"},
		{map = "-23,-3", path = "havenbag"},
		{map = "-24,-3", path = "havenbag"},
		{map = "-25,-3", path = "havenbag"},
		{map = "-25,-2", path = "havenbag"},
		{map = "-24,-2", path = "havenbag"},
		{map = "-23,-2", path = "havenbag"},
		{map = "-23,-1", path = "havenbag"},
		{map = "-24,-1", path = "havenbag"},
		{map = "-25,-1", path = "havenbag"},
		{map = "-25,0", path = "havenbag"},
		{map = "-24,0", path = "havenbag"},
		{map = "-24,1", path = "havenbag"},
		{map = "-24,2", path = "havenbag"},
		{map = "-24,3", path = "havenbag"},
		{map = "-25,3", path = "havenbag"},
		{map = "-25,2", path = "havenbag"},
		{map = "-25,1", path = "havenbag"},
		{map = "-25,0", path = "havenbag"},
		{map = "-25,-1", path = "havenbag"},
		{map = "-26,-1", path = "havenbag"},
		{map = "-26,0", path = "havenbag"},
		{map = "-26,1", path = "havenbag"},
		{map = "-26,2", path = "havenbag"},
		{map = "-26,3", path = "havenbag"},
		{map = "-26,4", path = "havenbag"},
		{map = "-27,4", path = "havenbag"},
		{map = "-27,3", path = "havenbag"},
		{map = "-28,3", path = "havenbag"},
		{map = "-28,2", path = "havenbag"},
		{map = "-27,2", path = "havenbag"},
		{map = "-27,1", path = "havenbag"},
		{map = "-27,0", path = "havenbag"},
		{map = "-28,0", path = "havenbag"},
		{map = "-28,-1", path = "havenbag"},
		{map = "-28,-2", path = "havenbag"},
		{map = "-27,-2", path = "havenbag"},
		{map = "-27,-3", path = "havenbag"},
		{map = "-26,-3", path = "havenbag"},
		{map = "-26,-4", path = "havenbag"},
		{map = "-26,-5", path = "havenbag"},
		{map = "-25,-5", path = "havenbag"},
		{map = "-25,-6", path = "havenbag"},
		{map = "-25,-7", path = "havenbag"},
		{map = "-26,-7", path = "havenbag"},
		{map = "-27,-7", path = "havenbag"},
		{map = "-28,-7", path = "havenbag"},
		{map = "-29,-7", path = "havenbag"},
		{map = "-29,-8", path = "havenbag"},
		{map = "-28,-8", path = "havenbag"},
		{map = "-28,-9", path = "havenbag"},
		{map = "-28,-10", path = "havenbag"},
		{map = "-27,-10", path = "havenbag"},
		{map = "-26,-10", path = "havenbag"},
		{map = "-26,-11", path = "havenbag"},
		{map = "-25,-11", path = "havenbag"},
		{map = "-24,-11", path = "havenbag"},
		{map = "-23,-11", path = "havenbag"},
		{map = "-22,-11", path = "havenbag"},
		{map = "-21,-11", path = "havenbag"}, --Fin Boucle--
		{map = "0,0", path = "zaap(147768)"}, --Havre Sac vers Zaap Bonta--
	}
end

function phenix()
	return {
	}
end