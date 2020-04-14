-- BABZ & CHUPZ --
-----------------------------

--- Paramètres ---

GATHER = {}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 8
MIN_MONSTERS = 2

FORBIDDEN_MONSTERS = {463,1247,2341,2342,2343,2344,2345,2347} --Fouduglan Leprechaun & Archis--
FORCE_MONSTERS = {}

function hiboux()
	npc:npc(520,3)
	npc:reply(-1)
	exchange:putAllItems()
	global:leaveDialog()
end

function move()

	del_temp_items()

	return {
		{map = "192415750", path = "409"}, --Interieur banque Astrub vers Sortie--
		
		--On evite le Lac du nord ouest et les maps populaires--
		{map = "3,-21", path = "bottom|right", gather = false, fight = true},
		{map = "4,-21", path = "bottom|left|right", gather = false, fight = true},
		{map = "5,-21", path = "bottom|left|right", gather = false, fight = true},
		{map = "6,-21", path = "bottom|left|right", gather = false, fight = true},
		{map = "7,-21", path = "bottom|left", gather = false, fight = true},
		
		{map = "3,-20", path = "top|right", gather = false, fight = true},
		{map = "4,-20", path = "bottom|top|left|right", gather = false, fight = true},
		{map = "5,-20", path = "top|left|right", gather = false, fight = true},
		{map = "6,-20", path = "top|left|right", gather = false, fight = true},
		{map = "7,-20", path = "top|left", gather = false, fight = true},
		
		{map = "1,-19", path = "bottom|right", gather = false, fight = true},
		{map = "2,-19", path = "bottom|left", gather = false, fight = true},
		{map = "3,-19", path = "bottom|right", gather = false, fight = true},
		{map = "4,-19", path = "bottom|top|left|right", gather = false, fight = true},
		{map = "5,-19", path = "left|right"}, --Milice--
		{map = "6,-19", path = "bottom|left"}, --Portail Incarnam--
		{map = "7,-19", path = "bottom|top", gather = false, fight = true},
		
		{map = "1,-18", path = "bottom|top|right", gather = false, fight = true},
		{map = "2,-18", path = "bottom|top|left|right", gather = false, fight = true},
		{map = "3,-18", path = "bottom|top|left|right", gather = false, fight = true},
		{map = "191104002", path = "bottom|top|left"}, -- Exterieur Banque Astrub--
		{map = "5,-18", path = "bottom|top|left|right"}, --Zaap Astrub--
		{map = "6,-18", path = "bottom|top|right", gather = false, fight = true},
		{map = "7,-18", path = "bottom|top|left", gather = false, fight = true},
		
		{map = "1,-17", path = "bottom|top|right", gather = false, fight = true},
		{map = "2,-17", path = "bottom|top|left", gather = false, fight = true},
		{map = "3,-17", path = "top|right", gather = false, fight = true},
		{map = "4,-17", path = "top|left|right", gather = false, fight = true},
		{map = "5,-17", path = "bottom|left|right", gather = false, fight = true},
		{map = "6,-17", path = "top|left", gather = false, fight = true},
		{map = "7,-17", path = "bottom|top", gather = false, fight = true},
		
		{map = "1,-16", path = "bottom|top|right", gather = false, fight = true},
		{map = "2,-16", path = "bottom|top|left|right", gather = false, fight = true},
		{map = "3,-16", path = "bottom|left", gather = false, fight = true},
		{map = "4,-16", path = "bottom|right", gather = false, fight = true},
		{map = "5,-16", path = "bottom|top|left|right", gather = false, fight = true},
		{map = "6,-16", path = "bottom|left|right", gather = false, fight = true},
		{map = "7,-16", path = "bottom|top|left", gather = false, fight = true},
		
		{map = "1,-15", path = "top|right", gather = false, fight = true},
		{map = "2,-15", path = "top|left|right", gather = false, fight = true},
		{map = "3,-15", path = "top|left|right", gather = false, fight = true},
		{map = "4,-15", path = "top|left|right", gather = false, fight = true},
		{map = "5,-15", path = "top|left|right", gather = false, fight = true},
		{map = "6,-15", path = "top|left|right", gather = false, fight = true},
		{map = "7,-15", path = "top|left", gather = false, fight = true},
		
		
	}
end

function bank()

	del_temp_items()
	
	return {
		{map = "3,-21", path = "right"},
		{map = "4,-21", path = "bottom"},
		{map = "5,-21", path = "left"},
		{map = "6,-21", path = "left"},
		{map = "7,-21", path = "left"},
		
		{map = "3,-20", path = "right"},
		{map = "4,-20", path = "bottom"},
		{map = "5,-20", path = "left"},
		{map = "6,-20", path = "left"},
		{map = "7,-20", path = "left"},
		
		{map = "1,-19", path = "right"},
		{map = "2,-19", path = "bottom"},
		{map = "3,-19", path = "right"},
		{map = "4,-19", path = "bottom"},
		{map = "5,-19", path = "left"},
		{map = "6,-19", path = "left"},
		{map = "7,-19", path = "bottom"},
		
		{map = "1,-18", path = "right"},
		{map = "2,-18", path = "right"},
		{map = "3,-18", path = "right"},
		{map = "191104002", door = "288"}, --Exterieur banque Astrub vers Interieur--
		{map = "192415750", path = "424", custom = hiboux}, --Interieur banque Astrub vidage items--
		{map = "5,-18", path = "left"}, --Zaap Astrub--
		{map = "6,-18", path = "bottom"},
		{map = "7,-18", path = "left"},
		
		{map = "1,-17", path = "right"},
		{map = "2,-17", path = "top"},
		{map = "3,-17", path = "right"},
		{map = "4,-17", path = "top"},
		{map = "5,-17", path = "left"},
		{map = "6,-17", path = "left"},
		{map = "7,-17", path = "top"},
		
		{map = "1,-16", path = "top"},
		{map = "2,-16", path = "top"},
		{map = "3,-16", path = "left"},
		{map = "4,-16", path = "right"},
		{map = "5,-16", path = "top"},
		{map = "6,-16", path = "left"},
		{map = "7,-16", path = "left"},
		
		{map = "1,-15", path = "top"},
		{map = "2,-15", path = "top"},
		{map = "3,-15", path = "top"},
		{map = "4,-15", path = "top"},
		{map = "5,-15", path = "top"},
		{map = "6,-15", path = "top"},
		{map = "7,-15", path = "top"},
	}
end

function phenix()
	return {
	}
end

function del_temp_items()
	inventory:useItem(16829,10) --Tonneau d'Huile a frire--
	inventory:deleteItem(8226,10)
	inventory:deleteItem(2416,10)
	inventory:deleteItem(8223,10)
	inventory:deleteItem(8221,10)
	inventory:deleteItem(22778,10)
	inventory:deleteItem(22714,10)
	inventory:deleteItem(8215,10)
	inventory:deleteItem(744,10)
	inventory:deleteItem(8238,10)
	inventory:deleteItem(22749,10)
	inventory:deleteItem(22878,10)
	inventory:deleteItem(2396,10)
	inventory:deleteItem(8235,10)
	inventory:deleteItem(1095,10)
	inventory:deleteItem(354,10)
	inventory:deleteItem(2474,10)
	inventory:deleteItem(22669,10)
	inventory:deleteItem(6915,10)
	inventory:deleteItem(954,10)
	inventory:deleteItem(8243,10)
	inventory:deleteItem(267,10)
	inventory:deleteItem(236,10)
	inventory:deleteItem(8219,10)
	inventory:deleteItem(6910,10)
	inventory:deleteItem(8125,10)
	inventory:deleteItem(6924,10)
	inventory:deleteItem(8232,10)
	inventory:deleteItem(8248,10)
	inventory:deleteItem(8214,10)
	inventory:deleteItem(8242,10)
	inventory:deleteItem(6961,10)
	inventory:deleteItem(8240,10)
	inventory:deleteItem(8222,10)
	inventory:deleteItem(8233,10)
	inventory:deleteItem(357,10)
	inventory:deleteItem(1370,10)
	inventory:deleteItem(8128,10)
	inventory:deleteItem(14601,10)
	inventory:deleteItem(337,10)
	inventory:deleteItem(6719,10)
	inventory:deleteItem(14803,10)
	inventory:deleteItem(8253,10)
	inventory:deleteItem(8246,10)
	inventory:deleteItem(8228,10)
	inventory:deleteItem(976,10)
	inventory:deleteItem(8230,10)
	inventory:deleteItem(8224,10)
	inventory:deleteItem(8245,10)
	inventory:deleteItem(8241,10)
	inventory:deleteItem(8217,10)
	inventory:deleteItem(676,10)
	inventory:deleteItem(251,10)
	inventory:deleteItem(14806,10)
	inventory:deleteItem(734,10)
	inventory:deleteItem(6923,10)
	inventory:deleteItem(15100,10)
	inventory:deleteItem(1399,10)
	inventory:deleteItem(8234,10)
	inventory:deleteItem(1623,10)
	inventory:deleteItem(8236,10)
	inventory:deleteItem(781,10)
	inventory:deleteItem(8218,10)
	inventory:deleteItem(6794,10)
	inventory:deleteItem(774,10)
	inventory:deleteItem(355,10)
	inventory:deleteItem(8239,10)
	inventory:deleteItem(8225,10)
	inventory:deleteItem(8216,10)
	inventory:deleteItem(710,10)
	inventory:deleteItem(355,10)
	inventory:deleteItem(17508,10)
	inventory:deleteItem(271,10)
	inventory:deleteItem(6794,10)
	inventory:deleteItem(7102,10)
	inventory:deleteItem(6722,10)
	inventory:deleteItem(8244,10)
	inventory:deleteItem(8124,10)
	inventory:deleteItem(230,10)
	inventory:deleteItem(458,10)
	inventory:deleteItem(934,10)
	inventory:deleteItem(14589,10)
	inventory:deleteItem(8227,10)
	inventory:deleteItem(278,10)
	inventory:deleteItem(8220,10)
	inventory:deleteItem(8247,10)
	inventory:deleteItem(8229,10)
	inventory:deleteItem(8237,10)
	inventory:deleteItem(6723,10)
	inventory:deleteItem(6724,10)
	inventory:deleteItem(1365,10)
	inventory:deleteItem(8231,10)
	inventory:deleteItem(8213,10)
	inventory:deleteItem(373,10)
	inventory:deleteItem(1528,10)
end