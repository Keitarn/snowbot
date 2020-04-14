-- BABZ --
-----------------------------

--- Paramètres ---

GATHER = {1,8,28,29,30,31,32,33,34,35,61,66,67,68,84,98,101,108,109,110,121,131,133,254,255,256,257,258,259,281,287,288,294,295,296}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 8
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}

function move()
	return {
		{map = "2885641", path = "424"}, --Interieur banque Bonta vers Sortie--
		{map = "147254", path = "top"}, --Exterieur banque Bonta vers Zaap--
		{map = "-31,-55", path = "top"},
		{map = "-31,-56", path = "right"},
		{map = "-32,-56", path = "right"}, --Zaap Bonta--
		{map = "-30,-56", path = "right"},
		{map = "-29,-56", path = "right"},
		{map = "-28,-56", path = "right"},
		{map = "-27,-56", path = "right"},
		{map = "-26,-56", path = "right"},
		{map = "-25,-56", path = "right"},
		{map = "-24,-56", path = "right", gather = true},
		{map = "-23,-56", path = "right"},
		{map = "-22,-56", path = "right"},
		{map = "-21,-56", path = "right"},
		{map = "-20,-56", path = "right"},
		{map = "-19,-56", path = "right"},
		{map = "-18,-56", path = "right"},
		{map = "-17,-56", path = "right"},
		{map = "-16,-56", path = "right"},
		{map = "-15,-56", path = "top", gather = true}, --Entree Litneg--
		{map = "-15,-57", path = "top", gather = true},
		{map = "-15,-58", path = "top", gather = true},
		{map = "-15,-59", path = "right", gather = true},
		{map = "-14,-59", path = "bottom", gather = true},
		{map = "-14,-58", path = "bottom", gather = true},
		{map = "-14,-57", path = "bottom", gather = true},
		{map = "-14,-56", path = "bottom", gather = true},
		{map = "-14,-55", path = "bottom", gather = true},
		{map = "-14,-54", path = "right", gather = true},
		{map = "-13,-54", path = "top", gather = true},
		{map = "-13,-55", path = "top", gather = true},
		{map = "-13,-56", path = "top", gather = true},
		{map = "-13,-57", path = "top", gather = true},
		{map = "-13,-58", path = "top", gather = true},
		{map = "-13,-59", path = "right", gather = true},
		{map = "-12,-59", path = "right", gather = true},
		{map = "-11,-59", path = "bottom", gather = true},
		{map = "-11,-58", path = "left", gather = true},
		{map = "-12,-58", path = "bottom", gather = true},
		{map = "-12,-57", path = "right", gather = true},
		{map = "-11,-57", path = "bottom", gather = true},
		{map = "-11,-56", path = "left", gather = true},
		{map = "-12,-56", path = "bottom", gather = true},
		{map = "-12,-55", path = "bottom", gather = true},
		{map = "-12,-54", path = "bottom", gather = true},
		{map = "-12,-53", path = "bottom", gather = true},
		{map = "-12,-52", path = "bottom", gather = true},
		{map = "-12,-51", path = "bottom", gather = true},
		{map = "-12,-50", path = "bottom", gather = true},
		{map = "-12,-49", path = "bottom", gather = true},
		{map = "-12,-48", path = "bottom", gather = true},
		{map = "-12,-47", path = "left", gather = true},
		{map = "-13,-47", path = "top", gather = true},
		{map = "-13,-48", path = "top", gather = true},
		{map = "-13,-49", path = "top", gather = true},
		{map = "-13,-50", path = "top", gather = true},
		{map = "-13,-51", path = "top", gather = true},
		{map = "-13,-52", path = "top", gather = true},
		{map = "-13,-53", path = "left", gather = true},
		{map = "-14,-53", path = "bottom", gather = true},
		{map = "-14,-52", path = "bottom", gather = true},
		{map = "-14,-51", path = "bottom", gather = true},
		{map = "-14,-50", path = "bottom", gather = true},
		{map = "-14,-49", path = "bottom", gather = true},
		{map = "-14,-48", path = "bottom", gather = true},
		{map = "-14,-47", path = "bottom", gather = true},
		{map = "-14,-46", path = "bottom", gather = true},
		{map = "-14,-45", path = "left", gather = true},
		{map = "-15,-45", path = "top", gather = true},
		{map = "-15,-46", path = "top", gather = true},
		{map = "-15,-47", path = "top", gather = true},
		{map = "-15,-48", path = "top", gather = true},
		{map = "-15,-49", path = "top", gather = true},
		{map = "-15,-50", path = "top", gather = true},
		{map = "-15,-51", path = "top", gather = true},
		{map = "-15,-52", path = "top", gather = true},
		{map = "-15,-53", path = "top", gather = true},
		{map = "-15,-54", path = "top", gather = true},
		{map = "-15,-55", path = "top", gather = true},
		{map = "-17,-47", path = "right", gather = true}, --Zaap Cania--
		{map = "-16,-47", path = "right", gather = true},
	}
end

function bank()
	return {
		{map = "2885641", path = "424", npcBank = true}, --Interieur banque Bonta vidage items--
		{map = "147254", door = "383"}, --Exterieur banque Bonta vers interieur--
		{map = "-31,-55", path = "bottom"},
		{map = "-31,-56", path = "bottom"},
		{map = "-32,-56", path = "right"}, --Zaap Bonta--
		{map = "-30,-56", path = "left"},
		{map = "-29,-56", path = "left"},
		{map = "-28,-56", path = "left"},
		{map = "-27,-56", path = "left"},
		{map = "-26,-56", path = "left"},
		{map = "-25,-56", path = "left"},
		{map = "-24,-56", path = "left"},
		{map = "-23,-56", path = "left"},
		{map = "-22,-56", path = "left"},
		{map = "-21,-56", path = "left"},
		{map = "-20,-56", path = "left"},
		{map = "-19,-56", path = "left"},
		{map = "-18,-56", path = "left"},
		{map = "-17,-56", path = "left"},
		{map = "-16,-56", path = "left"},
		{map = "-15,-56", path = "left"}, --Entree Litneg--
		{map = "-15,-57", path = "bottom"},
		{map = "-15,-58", path = "bottom"},
		{map = "-15,-59", path = "bottom"},
		{map = "-14,-59", path = "left"},
		{map = "-14,-58", path = "left"},
		{map = "-14,-57", path = "left"},
		{map = "-14,-56", path = "left"},
		{map = "-14,-55", path = "left"},
		{map = "-14,-54", path = "left"},
		{map = "-13,-54", path = "left"},
		{map = "-13,-55", path = "left"},
		{map = "-13,-56", path = "left"},
		{map = "-13,-57", path = "left"},
		{map = "-13,-58", path = "left"},
		{map = "-13,-59", path = "left"},
		{map = "-12,-59", path = "left"},
		{map = "-11,-59", path = "left"},
		{map = "-11,-58", path = "left"},
		{map = "-12,-58", path = "bottom"},
		{map = "-12,-57", path = "right"},
		{map = "-11,-57", path = "bottom"},
		{map = "-11,-56", path = "left"},
		{map = "-12,-56", path = "bottom"},
		{map = "-12,-55", path = "bottom"},
		{map = "-12,-54", path = "bottom"},
		{map = "-12,-53", path = "left"},
		{map = "-12,-52", path = "left"},
		{map = "-12,-51", path = "left"},
		{map = "-12,-50", path = "left"},
		{map = "-12,-49", path = "left"},
		{map = "-12,-48", path = "left"},
		{map = "-12,-47", path = "left"},
		{map = "-13,-47", path = "left"},
		{map = "-13,-48", path = "left"},
		{map = "-13,-49", path = "top"},
		{map = "-13,-50", path = "left"},
		{map = "-13,-51", path = "left"},
		{map = "-13,-52", path = "left"},
		{map = "-13,-53", path = "left"},
		{map = "-14,-53", path = "left"},
		{map = "-14,-52", path = "bottom"}, --bug stuck with left--
		{map = "-14,-51", path = "left"},
		{map = "-14,-50", path = "left"},
		{map = "-14,-49", path = "top"},
		{map = "-14,-48", path = "left"},
		{map = "-14,-47", path = "left"},
		{map = "-14,-46", path = "left"},
		{map = "-14,-45", path = "left"},
		{map = "-15,-45", path = "top"},
		{map = "-15,-46", path = "top"},
		{map = "-15,-47", path = "top"},
		{map = "-15,-48", path = "top"},
		{map = "-15,-49", path = "top"},
		{map = "-15,-50", path = "top"},
		{map = "-15,-51", path = "top"},
		{map = "-15,-52", path = "top"},
		{map = "-15,-53", path = "top"},
		{map = "-15,-54", path = "top"},
		{map = "-15,-55", path = "top"},
		{map = "-17,-47", path = "right"}, --Zaap Cania--
		{map = "-16,-47", path = "right"},
	}
end

function phenix()
	return {
	}
end
	
	
	
	
	