AUTO_DELETE = {}
GATHER = {1,8,33,34,35,38,39,42,43,44,45,46,47,61,66,67,68,71,73,74,75,76,77,78,79,80,81,82,84,25,255,256,257,258,259,264,263,265}
MIN_MONSTERS = 1
MAX_MONSTERS = 8


function move()
    return {
        -- Les déplacements, récoltes, combats
		{map = "5,7", path = "bottom"},
		{map = "5,8", path = "bottom", gather = true},
		{map = "5,9", path = "left"},
		{map = "4,9", path = "left", gather = true},
		{map = "3,9", path = "left", gather = true},
		{map = "2,9", path = "left", gather = true},
		{map = "1,9", path = "left", gather = true},
		{map = "0,9", path = "top", gather = true},
		{map = "0,8", path = "right", gather = true},
		{map = "1,8", path = "right", gather = true},
		{map = "2,8", path = "right", gather = true},
		{map = "3,8", path = "right", gather = true},
		{map = "4,8", path = "top"},
		{map = "4,7", path = "top", gather = true},
		{map = "4,6", path = "right", gather = true},
		{map = "5,6", path = "top", gather = true},
		{map = "5,5", path = "top", gather = true},
		{map = "5,4", path = "top", gather = true},
		{map = "5,3", path = "top", gather = true},
		{map = "5,2", path = "top", gather = true},
		{map = "5,1", path = "top", gather = true},
		{map = "5,0", path = "right", gather = true},
		{map = "6,0", path = "bottom"},
		{map = "6,1", path = "bottom", gather = true},
		{map = "6,2", path = "bottom", gather = true},
		{map = "6,3", path = "bottom", gather = true},
		{map = "6,4", path = "bottom", gather = true},
		{map = "6,5", path = "bottom", gather = true},
		{map = "6,6", path = "bottom", gather = true},
		{map = "6,7", path = "right", gather = true},
		{map = "7,7", path = "top",
		{map = "7,6", path = "top", gather = true},
		{map = "7,5", path = "top", gather = true},
		{map = "7,4", path = "top", gather = true},
		{map = "7,3", path = "top", gather = true},
		{map = "7,2", path = "top", gather = true},
		{map = "7,1", path = "right", gather = true},
		{map = "8,1", path = "bottom", gather = true},
		{map = "8,2", path = "bottom", gather = true},
		{map = "8,3", path = "bottom", gather = true},
		{map = "8,4", path = "bottom", gather = true},
		{map = "8,5", path = "bottom", gather = true},
		{map = "8,6", path = "bottom", gather = true},
		{map = "8,7", path = "bottom",
		{map = "8,8", path = "bottom", gather = true},
		{map = "8,9", path = "right", gather = true},
		{map = "9,9", path = "top", gather = true},
		{map = "9,8", path = "top", gather = true},
		{map = "9,7", path = "top"},
		{map = "9,6", path = "top", gather = true},
		{map = "9,5", path = "top", gather = true},
		{map = "9,4", path = "top", gather = true},
		{map = "9,3", path = "top", gather = true},
		{map = "9,2", path = "right", gather = true},
		{map = "10,2", path = "bottom", gather = true},
		{map = "10,3", path = "bottom", gather = true},
		{map = "10,4", path = "bottom", gather = true},
		{map = "10,5", path = "bottom"},
		{map = "10,6", path = "bottom"},
		{map = "10,7", path = "bottom"},
		{map = "10,8", path = "bottom", gather = true},
		{map = "10,9", path = "bottom", gather = true},
		{map = "10,10", path = "left"},
		{map = "9,10", path = "left"},
		{map = "9,10", path = "left"},
		{map = "8,10", path = "left", gather = true},
		{map = "7,10", path = "top"},
		{map = "7,9", path = "top", gather = true},
		{map = "7,8", path = "left", gather = true},
		{map = "6,8", path = "bottom", gather = true},
		{map = "6,9", path = "left", gather = true},
		{map = "5,9", path = "top"},
		{map = map:currentMap(), path = "havenbag", },
		{map = "0,0", path = "zaap(88082704)"}, -- a remplacer par id tainela --
    }
end

function bank()
    return {
		{map = "-2,0", path = "right"},
		{map = "-1,0", path = "top"},
		{map = "-1,-1", path = "right"},
		{map = "0,-1", path = "right"},
		{map = "1,-1", path = "right"},
		{map = "2,-1", path = "top"},
		{map = "0,0", path = "zaap(88213271)"},
		{map = "88081177", door = "216"},
		{map = "99095051", path = "316", custom = hiboux}, --Banque Amakna--
		{map = map:currentMap(), path = "havenbag", },
    }
end

function phenix()
    return {
        -- La chemin vers le phenix si le personnage est mort
    }
end