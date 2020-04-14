-- Generated On Dofus-Map with Drigtime's SwiftPath Script Maker --
-- Nom : Forêt d'astrub nouvelle maj 
-- Zone : Astrub
-- Type : Récolte
-- Version : 1.0
-- Auteur : Ibrax

GATHER = {1,33,34,8,98,31,101,28,108,35,259,29,121,32,109,30,110,133,254}
OPEN_BAGS = true
AUTO_DELETE = {}

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}

function hiboux()
	npc:npc(522,3)
	npc:reply(-1)
	exchange:putAllItems()
	global:leaveDialog()
end

function move()
	return {
		{map = "192415750", path = "409"}, --Interieur banque Astrub vers Sortie--
		{map = "54534165", path = "424"}, --Interieur banque Frigost vers Sortie--
		{map = "2885641", path = "424"}, --Interieur banque Bonta vers Sortie--
		{map = "99095051", path = "410"}, --Interieur banque Amakna vers Sortie--
		{map = "8912911", path = "424"}, --Interieur banque Brakmar vers Sortie--
		{map = "91753985", path = "396"}, --Interieur banque Sufokia vers Sortie--
		{map = "86511105", door = "452"}, --Interieur banque Ottomaï vers Sortie--
		{map = "8129542", path = "409"}, --Interieur banque Pandala vers Sortie--
		{map = "84935175", path = "425"}, --Interieur banque Montagne Koalak vers Sortie--
		{map = "5,-18", path = "top"},
		{map = "5,-19", path = "left"},
		{map = "4,-19", path = "top"},
		{map = "4,-20", path = "right", gather = true},
		{map = "5,-21", path = "left", gather = true},
		{map = "4,-21", path = "left", gather = true},
		{map = "2,-21", path = "top", gather = true},
		{map = "2,-22", path = "top", gather = true},
		{map = "2,-23", path = "top", gather = true},
		{map = "2,-24", path = "top", gather = true},
		{map = "2,-25", path = "top", gather = true},
		{map = "2,-26", path = "top", gather = true},
		{map = "2,-27", path = "top", gather = true},
		{map = "2,-28", path = "left", gather = true},
		{map = "1,-28", path = "bottom|left", gather = true},
		{map = "0,-28", path = "bottom|left", gather = true},
		{map = "-1,-28", path = "bottom|left", gather = true},
		{map = "-2,-28", path = "bottom", gather = true},
		{map = "0,-27", path = "bottom", gather = true},
		{map = "-1,-27", path = "bottom", gather = true},
		{map = "-2,-27", path = "bottom", gather = true},
		{map = "-2,-26", path = "bottom", gather = true},
		{map = "1,-27", path = "bottom", gather = true},
		{map = "1,-26", path = "bottom", gather = true},
		{map = "0,-26", path = "bottom", gather = true},
		{map = "-1,-26", path = "bottom", gather = true},
		{map = "-2,-25", path = "bottom", gather = true},
		{map = "-1,-25", path = "bottom", gather = true},
		{map = "0,-25", path = "bottom", gather = true},
		{map = "1,-25", path = "bottom", gather = true},
		{map = "1,-24", path = "bottom", gather = true},
		{map = "0,-24", path = "bottom", gather = true},
		{map = "-1,-24", path = "bottom", gather = true},
		{map = "-2,-24", path = "bottom", gather = true},
		{map = "-2,-23", path = "bottom", gather = true},
		{map = "-1,-23", path = "bottom", gather = true},
		{map = "0,-23", path = "bottom", gather = true},
		{map = "1,-23", path = "bottom", gather = true},
		{map = "1,-22", path = "left", gather = true},
		{map = "0,-22", path = "bottom|left", gather = true},
		{map = "-1,-22", path = "bottom|left", gather = true},
		{map = "-2,-22", path = "bottom|left", gather = true},
		{map = "-3,-22", path = "bottom", gather = true},
		{map = "-3,-21", path = "bottom", gather = true},
		{map = "-2,-21", path = "bottom", gather = true},
		{map = "-1,-21", path = "bottom", gather = true},
		{map = "0,-21", path = "bottom", gather = true},
		{map = "-3,-20", path = "bottom", gather = true},
		{map = "-3,-19", path = "bottom", gather = true},
		{map = "-3,-18", path = "bottom", gather = true},
		{map = "-3,-17", path = "bottom", gather = true},
		{map = "-3,-15", path = "right", gather = true},
		{map = "-3,-16", path = "bottom", gather = true},
		{map = "-2,-20", path = "bottom", gather = true},
		{map = "-2,-19", path = "bottom", gather = true},
		{map = "-2,-18", path = "bottom", gather = true},
		{map = "-2,-17", path = "bottom", gather = true},
		{map = "-2,-16", path = "bottom", gather = true},
		{map = "-1,-20", path = "bottom", gather = true},
		{map = "-1,-19", path = "bottom", gather = true},
		{map = "-1,-18", path = "bottom", gather = true},
		{map = "-1,-16", path = "bottom", gather = true},
		{map = "-1,-17", path = "bottom", gather = true},
		{map = "0,-20", path = "bottom|right", gather = true},
		{map = "1,-20", path = "bottom|right", gather = true},
		{map = "0,-19", path = "bottom", gather = true},
		{map = "0,-18", path = "bottom", gather = true},
		{map = "0,-17", path = "bottom", gather = true},
		{map = "0,-16", path = "bottom", gather = true},
		{map = "1,-19", path = "bottom", gather = true},
		{map = "1,-18", path = "bottom", gather = true},
		{map = "1,-16", path = "bottom", gather = true},
		{map = "2,-20", path = "left", gather = true},
		{map = "-2,-15", path = "right", gather = true},
		{map = "-1,-15", path = "right", gather = true},
		{map = "0,-15", path = "right", gather = true},
		{map = "2,-15", path = "right", gather = true},
		{map = "4,-15", path = "top", gather = true},
		{map = "1,-15", path = "right"},
		{map = "3,-15", path = "right"},
		{map = "4,-16", path = "right"},
		{map = "5,-16", path = "top"},
		{map = "5,-17", path = "top", gather = true},
		{map = "3,-21", path = "left"},
		{map = "5,-20", path = "top"},
		{map = "4,-18", path = "top"},
		{map = "1,-17", path = "bottom"},
	}
end

function bank()
	return {
		{map = "-1,-26", path = "bottom"},
		{map = "0,-26", path = "bottom"},
		{map = "1,-26", path = "bottom"},
		{map = "2,-26", path = "bottom"},
		{map = "-2,-28", path = "bottom"},
		{map = "-1,-28", path = "bottom"},
		{map = "0,-27", path = "bottom"},
		{map = "0,-28", path = "bottom"},
		{map = "1,-28", path = "bottom"},
		{map = "2,-28", path = "bottom"},
		{map = "2,-27", path = "bottom"},
		{map = "1,-27", path = "bottom"},
		{map = "-1,-27", path = "bottom"},
		{map = "-2,-27", path = "bottom"},
		{map = "-2,-26", path = "bottom"},
		{map = "-2,-25", path = "bottom"},
		{map = "-1,-25", path = "bottom"},
		{map = "0,-25", path = "bottom"},
		{map = "1,-25", path = "bottom"},
		{map = "2,-25", path = "bottom"},
		{map = "-2,-24", path = "bottom"},
		{map = "-1,-24", path = "bottom"},
		{map = "0,-24", path = "bottom"},
		{map = "1,-24", path = "bottom"},
		{map = "2,-24", path = "bottom"},
		{map = "-2,-23", path = "bottom"},
		{map = "-1,-23", path = "bottom"},
		{map = "0,-23", path = "bottom"},
		{map = "1,-23", path = "bottom"},
		{map = "2,-23", path = "bottom"},
		{map = "-3,-22", path = "right"},
		{map = "-2,-22", path = "right"},
		{map = "-1,-22", path = "right"},
		{map = "0,-22", path = "right"},
		{map = "1,-22", path = "right"},
		{map = "2,-22", path = "bottom"},
		{map = "2,-21", path = "right"},
		{map = "3,-21", path = "right"},
		{map = "5,-21", path = "left"},
		{map = "4,-21", path = "bottom"},
		{map = "4,-20", path = "bottom"},
		{map = "4,-19", path = "bottom"},
		{map = "5,-19", path = "bottom"},
		{map = "5,-18", path = "left"},
		{map = "-3,-15", path = "top"},
		{map = "-3,-16", path = "top"},
		{map = "-2,-15", path = "top"},
		{map = "-2,-16", path = "top"},
		{map = "-1,-15", path = "top"},
		{map = "-1,-16", path = "top"},
		{map = "0,-15", path = "top"},
		{map = "0,-16", path = "top"},
		{map = "0,-17", path = "top"},
		{map = "-1,-17", path = "top"},
		{map = "-2,-17", path = "top"},
		{map = "-3,-17", path = "top"},
		{map = "-3,-18", path = "top"},
		{map = "-2,-18", path = "top"},
		{map = "-1,-18", path = "top"},
		{map = "0,-18", path = "top"},
		{map = "1,-18", path = "top"},
		{map = "1,-19", path = "top"},
		{map = "0,-19", path = "top"},
		{map = "-1,-19", path = "top"},
		{map = "-2,-19", path = "top"},
		{map = "-3,-19", path = "top"},
		{map = "-3,-21", path = "top"},
		{map = "-2,-21", path = "top"},
		{map = "-1,-21", path = "top"},
		{map = "0,-21", path = "top"},
		{map = "-3,-20", path = "right"},
		{map = "-2,-20", path = "right"},
		{map = "-1,-20", path = "right"},
		{map = "0,-20", path = "right"},
		{map = "1,-20", path = "right"},
		{map = "2,-20", path = "top"},
		{map = "1,-15", path = "right"},
		{map = "1,-17", path = "top"},
		{map = "1,-16", path = "bottom"},
		{map = "2,-15", path = "right"},
		{map = "3,-15", path = "right"},
		{map = "4,-15", path = "top"},
		{map = "4,-16", path = "right"},
		{map = "5,-16", path = "top"},
		{map = "5,-17", path = "top"},
		{map = "5,-20", path = "left"},
		{map = "191104002", door = "288"}, --Devant banque Astrub--
		{map = "192415750", path = "409", custom = hiboux}, --Banque Astrub--

	}
end


function phenix()
	return {
	}
end
