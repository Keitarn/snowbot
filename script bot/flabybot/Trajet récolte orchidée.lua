------- TRAJET RECOLTE -------

--------- réalisé par ---------
--------- ♔ Nats∞ ♔ ---------
-- /!\ Trajets Gratuits /!\ --

-- récolte orchidée -- 

ELEMENTS_TO_GATHER = {68}

MAX_PODS = 95

function move()
	if inventory:itemCount(7968) > 0 then -- ouvre sac d'orchidée
		while inventory:itemCount(7968) > 0 do
			inventory:useItem(7968)
			global:delay(500)
		end
	end
	return {
		{map = "84935175", changeMap = "425"}, -- Interieur banque Montagne Koalak vers Sortie
		{map = "-16,1", changeMap = "bottom"},
		{map = "-16,2", changeMap = "right", gather = true},
		{map = "-16,3", changeMap = "top"},
		{map = "73400323", changeMap = "top"},
		{map = "-15,2", changeMap = "bottom", gather = true},
		{map = "-15,3", changeMap = "right"},
		{map = "-14,3", changeMap = "top", gather = true},
		{map = "-14,2", changeMap = "top"},
		{map = "-14,1", changeMap = "left"},
		{map = "-15,1", changeMap = "top", gather = true},
		{map = "-15,0", changeMap = "left"},
		{map = "-16,0", changeMap = "left"},
		{map = "-17,0", changeMap = "left"},
		{map = "-18,0", changeMap = "left"},
		{map = "-19,0", changeMap = "bottom", gather = true},
		{map = "-19,1", changeMap = "bottom", gather = true},
		{map = "-19,2", changeMap = "bottom", gather = true},
		{map = "-19,3", changeMap = "right", gather = true},
		{map = "-18,3", changeMap = "bottom"},
		{map = "-18,4", changeMap = "bottom", gather = true},
		{map = "-18,5", changeMap = "right"},
		{map = "-17,5", changeMap = "bottom"},
		{map = "-17,6", changeMap = "left", gather = true},
		{map = "-18,6", changeMap = "left", gather = true},
		{map = "-19,6", changeMap = "top"},
		{map = "-19,5", changeMap = "top"},
		{map = "-19,4", changeMap = "left", gather = true},
		{map = "-20,4", changeMap = "top", gather = true},
		{map = "-20,3", changeMap = "top", gather = true},
		{map = "-20,2", changeMap = "top", gather = true},
		{map = "-20,1", changeMap = "top", gather = true},
		{map = "-20,0", changeMap = "left", gather = true},
		{map = "-21,0", changeMap = "bottom", gather = true},
		{map = "-21,1", changeMap = "bottom", gather = true},
		{map = "-21,2", changeMap = "bottom", gather = true},
		{map = "-21,3", changeMap = "bottom", gather = true},
		{map = "-21,4", changeMap = "left", gather = true},
		{map = "-22,4", changeMap = "top", gather = true},
		{map = "-22,3", changeMap = "left", gather = true},
		{map = "-23,3", changeMap = "top", gather = true},
		{map = "-23,2", changeMap = "right", gather = true},
		{map = "-22,2", changeMap = "top", gather = true},
		{map = "-22,1", changeMap = "top", gather = true},
		{map = "-22,0", changeMap = "top", gather = true},
		{map = "-22,-1", changeMap = "top"},
		{map = "-22,-2", changeMap = "right"},
		{map = "-21,-2", changeMap = "top"},
		{map = "-21,-3", changeMap = "right"},
		{map = "-20,-3", changeMap = "right", gather = true},
		{map = "-19,-3", changeMap = "right"},
		{map = "-18,-3", changeMap = "right"},
		{map = "-17,-3", changeMap = "right"},
		{map = "-16,-3", changeMap = "bottom", gather = true},
		{map = "-16,-2", changeMap = "right"},
		{map = "-15,-2", changeMap = "right"},
		{map = "-14,-2", changeMap = "right"},
		{map = "-13,-2", changeMap = "right", gather = true},
		{map = "-12,-2", changeMap = "right", gather = true},
		{map = "-11,-2", changeMap = "bottom", gather = true},
		{map = "-11,-1", changeMap = "left"},
		{map = "-12,-1", changeMap = "left"},
		{map = "-13,-1", changeMap = "bottom", gather = true},
		{map = "-13,0", changeMap = "bottom"},
		{map = "-13,1", changeMap = "bottom"},
		{map = "-13,2", changeMap = "bottom"},
		{map = "-13,3", changeMap = "bottom"},
		{map = "-13,4", changeMap = "left"},
		{map = "-14,4", changeMap = "left"},
		{map = "-15,4", changeMap = "left"},
		{map = "-16,4", changeMap = "top"},
		{map = "-16,3", changeMap = "top"},
	}
end

function bank()
	return {
		{map = "-16,3", changeMap = "bottom"},
		{map = "-13,4", changeMap = "left"},
		{map = "-14,4", changeMap = "left"},
		{map = "-15,4", changeMap = "left"},
		{map = "-13,3", changeMap = "left"},
		{map = "-14,3", changeMap = "left"},
		{map = "-15,3", changeMap = "left"},
		{map = "-13,2", changeMap = "left"},
		{map = "-14,2", changeMap = "left"},
		{map = "-15,2", changeMap = "left"},
		{map = "-13,1", changeMap = "left"},
		{map = "-14,1", changeMap = "left"},
		{map = "-15,1", changeMap = "left"},
		{map = "-13,0", changeMap = "left"},
		{map = "-14,0", changeMap = "left"},
		{map = "-15,0", changeMap = "left"},
		{map = "-13,-1", changeMap = "bottom"},
		{map = "-13,-2", changeMap = "bottom"},
		{map = "-14,-2", changeMap = "bottom"},
		{map = "-15,-2", changeMap = "bottom"},
		{map = "-16,-2", changeMap = "bottom"},
		{map = "-16,-1", changeMap = "bottom"},
		{map = "-15,-1", changeMap = "bottom"},
		{map = "-14,-1", changeMap = "bottom"},
		{map = "-11,-1", changeMap = "left"},
		{map = "-12,-1", changeMap = "left"},
		{map = "-11,-2", changeMap = "left"},
		{map = "-12,-2", changeMap = "left"},
		{map = "-16,-3", changeMap = "bottom"},
		{map = "-17,-3", changeMap = "right"},
		{map = "-18,-3", changeMap = "right"},
		{map = "-19,-3", changeMap = "right"},
		{map = "-20,-3", changeMap = "right"},
		{map = "-21,-3", changeMap = "right"},
		{map = "-21,-2", changeMap = "right"},
		{map = "-20,-2", changeMap = "right"},
		{map = "-19,-2", changeMap = "right"},
		{map = "-18,-2", changeMap = "right"},
		{map = "-17,-2", changeMap = "right"},
		{map = "-22,-2", changeMap = "right"},
		{map = "-22,-1", changeMap = "bottom"},
		{map = "-23,3", changeMap = "right"},
		{map = "-23,2", changeMap = "right"},
		{map = "-23,1", changeMap = "right"},
		{map = "-17,4", changeMap = "right"},
		{map = "-18,4", changeMap = "right"},
		{map = "-18,3", changeMap = "right"},
		{map = "-17,3", changeMap = "right"},
		{map = "-18,2", changeMap = "right"},
		{map = "-17,2", changeMap = "right"},
		{map = "-18,1", changeMap = "right"},
		{map = "-17,1", changeMap = "right"},
		{map = "-16,1", changeMap = "bottom"},
		{map = "-16,2", changeMap = "bottom"},
		{map = "-20,4", changeMap = "right"},
		{map = "-19,4", changeMap = "right"},
		{map = "-21,4", changeMap = "right"},
		{map = "-22,4", changeMap = "right"},
		{map = "-22,3", changeMap = "bottom"},
		{map = "-21,3", changeMap = "bottom"},
		{map = "-21,2", changeMap = "bottom"},
		{map = "-21,1", changeMap = "bottom"},
		{map = "-21,0", changeMap = "bottom"},
		{map = "-20,0", changeMap = "bottom"},
		{map = "-20,1", changeMap = "bottom"},
		{map = "-20,2", changeMap = "bottom"},
		{map = "-20,3", changeMap = "bottom"},
		{map = "-19,0", changeMap = "bottom"},
		{map = "-19,1", changeMap = "bottom"},
		{map = "-19,2", changeMap = "bottom"},
		{map = "-19,3", changeMap = "bottom"},
		{map = "-22,0", changeMap = "bottom"},
		{map = "-22,1", changeMap = "bottom"},
		{map = "-22,2", changeMap = "bottom"},
		{map = "-18,0", changeMap = "bottom"},
		{map = "-17,0", changeMap = "bottom"},
		{map = "-16,0", changeMap = "bottom"},
		{map = "-17,6", changeMap = "top"},
		{map = "-18,6", changeMap = "top"},
		{map = "-19,6", changeMap = "top"},
		{map = "-19,5", changeMap = "top"},
		{map = "-18,5", changeMap = "top"},
		{map = "-17,5", changeMap = "top"},
		{map = "73400323", changeMap = "330"}, -- Devant banque Montagne Koalak
		{map = "84935175", custom = hiboux, changeMap = "425"}, -- Banque Montagne Koalak
	}
end

function hiboux()
	global:delay(1000)
	npc:npcBank(-1,-1)
	global:delay(2500)
	storage:putAllItems()
	global:delay(1000)
	global:leaveDialog()
end