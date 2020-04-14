--- Paramètres ---

GATHER = {}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 3
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {} 
FORCE_MONSTERS = {}

function astrub() -- portail astrub
	npc:npc( 430,3)
	npc:reply(-1)
	npc:reply(-1)
	npc:reply(-1)

end	
function move()
	inventory:deleteItem(2477,10)
	inventory:deleteItem(16522,10)
	return {
		{map = "154010882", path = "bottom" , fight = true },
		{map = "154010881", path = "bottom" , fight = true },
		{map = "154010624", path = "right" , fight = true },
		{map = "154010112", path = "right" , fight = true },
		{map = "153878528", path = "right" , fight = true },
		{map = "153879040", path = "top"},
		{map = "153879297", path = "top"},
		{map = "153879298", path = "left"},
		{map = "153878786", path = "left" , fight = true },
		{map = "154010370", path = "left" , fight = true },	
		{map = "154010883", path = "bottom"},
		{map = "154010371", path = "left"},
		{map = "153878787", path = "left"},
		{map = "153879299", path = "left"},
		{map = "153879811", path = "left"},
		{map = "153880323", path = "left"},
		{map = "153880835", path = "left"},
		{map = "192416776", door = "455"}, -- monté astrub
		{map = "191106048", door = "383"}, -- entrée temple
		{map = "191105024", path = "right"},
		{map = "191105026", path = "top"},
		{map = "191104002", path = "right"}, 
		{map = "192415750", path = "409"}, --Interieur banque Astrub vers Sortie--	
	}
end

function bank()
	return {
		{map = "154010882", path = "top" },
		{map = "154010881", path = "top" },
		{map = "154010624", path = "top" },
		{map = "154010112", path = "right"},
		{map = "153878528", path = "right"},
		{map = "153879040", path = "top"},
		{map = "153879297", path = "top"},
		{map = "153879298", path = "top"},
		{map = "153878786", path = "top"},
		{map = "154010370", path = "top"},
		{map = "154010883", path = "right"},
		{map = "154010371", path = "right"},
		{map = "153878787", path = "right"},
		{map = "153879299", path = "right"},
		{map = "153879811", path = "right"},
		{map = "153880323", path = "right"},
		{map = "153880835", custom = astrub },
		{map = "192416776", path = "bottom"},
		{map = "191106048", path = "left"},
		{map = "191105024", path = "bottom"},
		{map = "191105026", path = "left"},
		{map = "191104002", path = "288", npcBank = true}, --Exterieur banque Astrub vers Interieur-
	}
end
