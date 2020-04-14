-- BABZ & CHUPZ --
-----------------------------

--- Paramètres ---

GATHER = {38,42,43,44}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}

function move()
	return {
		{map = "2885641", path = "424"}, --Interieur banque Bonta vers Sortie--
		{map = "147254", path = "zaapi(146226)"}, --Exterieur banque Bonta vers Atelier Paysan--
		{map = "-32,-56", path = "zaapi(146226)"}, --Zaap Bonta vers Atelier Paysan--
		{map = "-29,-50", path = "bottom"}, --Atelier Paysan--
		{map = "-29,-49", path = "bottom"},
		{map = "-29,-48", path = "bottom"},
		{map = "-29,-47", path = "bottom"},
		{map = "-29,-46", path = "bottom"},
		{map = "-29,-45", path = "right"}, --Debut Boucle--
		{map = "-28,-45", path = "bottom", gather = true},
		{map = "-28,-44", path = "right", gather = true},
		{map = "-27,-44", path = "right", gather = true},
		{map = "-26,-44", path = "right"},
		{map = "-25,-44", path = "right", gather = true},
		{map = "-24,-44", path = "right"},
		{map = "-23,-44", path = "right"},
		{map = "-22,-44", path = "bottom"},
		{map = "-22,-43", path = "bottom", gather = true},
		{map = "-22,-42", path = "left"},
		{map = "-23,-42", path = "left", gather = true},
		{map = "-24,-42", path = "top", gather = true},
		{map = "-24,-43", path = "left",},
		{map = "-25,-43", path = "left", gather = true},
		{map = "-26,-43", path = "left",},
		{map = "-27,-43", path = "bottom",},
		{map = "-27,-42", path = "right", gather = true},
		{map = "-26,-42", path = "bottom", gather = true},
		{map = "-26,-41", path = "right", gather = true},
		{map = "-25,-41", path = "right"},
		{map = "-24,-41", path = "right", gather = true},
		{map = "-23,-41", path = "bottom"},
		{map = "-23,-40", path = "bottom", gather = true},
		{map = "-23,-39", path = "left", gather = true},
		{map = "-24,-39", path = "top", gather = true},
		{map = "-24,-40", path = "left", gather = true},
		{map = "-25,-40", path = "bottom", gather = true},
		{map = "-25,-39", path = "left", gather = true},
		{map = "-26,-39", path = "bottom", gather = true},
		{map = "-26,-38", path = "bottom", gather = true},
		{map = "-26,-37", path = "left", gather = true},
		{map = "-27,-37", path = "left"},
		{map = "-28,-37", path = "left"},
		{map = "-29,-37", path = "top", gather = true},
		{map = "-29,-38", path = "top", gather = true},
		{map = "-29,-39", path = "left", gather = true},
		{map = "-30,-39", path = "top", gather = true},
		{map = "-30,-40", path = "right"},
		{map = "-29,-40", path = "right", gather = true},
		{map = "-28,-40", path = "bottom", gather = true},
		{map = "-28,-39", path = "right", gather = true},
		{map = "-27,-39", path = "top", gather = true},
		{map = "-27,-40", path = "top", gather = true},
		{map = "-27,-41", path = "left", gather = true},
		{map = "-28,-41", path = "left"},
		{map = "-29,-41", path = "left"},
		{map = "-30,-41", path = "top", gather = true},
		{map = "-30,-42", path = "right"},
		{map = "-29,-42", path = "top"},
		{map = "-29,-43", path = "top"},
		{map = "-29,-44", path = "top"}, --Fin Boucle--
	}
end
		
function bank()
	return {
		{map = "2885641", path = "424", npcBank = true}, --Interieur banque Bonta vidage items--
		{map = "147254", door = "383"}, --Exterieur banque Bonta vers interieur--
		{map = "-29,-50", path = "zaapi(147254)"}, --Atelier Paysan vers Banque--
		{map = "-29,-49", path = "top"},
		{map = "-29,-48", path = "top"},
		{map = "-29,-47", path = "top"},
		{map = "-29,-46", path = "top"},
		{map = "-29,-45", path = "top"}, --Debut Boucle--
		{map = "-28,-45", path = "left"},
		{map = "-28,-44", path = "top"},
		{map = "-27,-44", path = "left"},
		{map = "-26,-44", path = "left"},
		{map = "-25,-44", path = "left"},
		{map = "-24,-44", path = "left"},
		{map = "-23,-44", path = "left"},
		{map = "-22,-44", path = "left"},
		{map = "-22,-43", path = "top"},
		{map = "-22,-42", path = "top"},
		{map = "-23,-42", path = "left"},
		{map = "-24,-42", path = "top"},
		{map = "-24,-43", path = "top"},
		{map = "-25,-43", path = "top"},
		{map = "-26,-43", path = "top"},
		{map = "-27,-43", path = "top"},
		{map = "-27,-42", path = "top"},
		{map = "-26,-42", path = "top"},
		{map = "-26,-41", path = "top"},
		{map = "-25,-41", path = "left"},
		{map = "-24,-41", path = "top"},
		{map = "-23,-41", path = "left"},
		{map = "-23,-40", path = "top"},
		{map = "-23,-39", path = "top"},
		{map = "-24,-39", path = "top"},
		{map = "-24,-40", path = "top"},
		{map = "-25,-40", path = "top"},
		{map = "-25,-39", path = "top"},
		{map = "-26,-40", path = "top"},
		{map = "-26,-39", path = "top"},
		{map = "-26,-38", path = "top"},
		{map = "-26,-37", path = "top"},
		{map = "-27,-37", path = "left"},
		{map = "-28,-37", path = "left"},
		{map = "-29,-37", path = "top"},
		{map = "-29,-38", path = "top"},
		{map = "-29,-39", path = "left"},
		{map = "-30,-39", path = "top"},
		{map = "-30,-40", path = "top"},
		{map = "-29,-40", path = "left"},
		{map = "-28,-40", path = "top"},
		{map = "-28,-39", path = "top"},
		{map = "-27,-39", path = "top"},
		{map = "-27,-40", path = "top"},
		{map = "-27,-41", path = "left"},
		{map = "-28,-41", path = "left"},
		{map = "-29,-41", path = "top"},
		{map = "-30,-41", path = "right"},
		{map = "-30,-42", path = "right"},
		{map = "-29,-42", path = "top"},
		{map = "-29,-43", path = "top"},
		{map = "-29,-44", path = "top"}, --Fin Boucle--
	}
end

function phenix()
	return {
	}
end