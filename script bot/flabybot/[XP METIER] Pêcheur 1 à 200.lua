--********************************************************************************************************--
--***********************************************--Informations--*****************************************--
--********************************************************************************************************--

-- Titre         : Pêcheur 1 à 200
-- Auteur        : Ethan#1008

-- Map de départ : Peu importe, la fonction lost est gérée (Commence par le Lac de Cania)

-- Remarques : Je vous conseil d'avoir un certains niveau pour éviter les zones d'agression (zone de pandala (île de grobe) par exemple)

-- Zaaps à avoir : 	- Lac de Cania
--					- Port de Madrestam
--					- Rivage Sufokien
--					- Sufokia
-- 					- Plaine des Scarafeuilles
-- 					- Pandala Neutre

--********************************************************************************************************--
--**************************************************--TRAJET--********************************************--
--********************************************************************************************************--

tempId   = 0
MAX_PODS = 90

ELEMENTS_TO_GATHER = { 75 , 71 , 74 , 77 , 76 , 78 , 79 , 81 , 263 , 264 , 265 , 266 , 267 , 268 ,269 , 270 , 271 , 272 , 273 , 274 , 132 , 290 }

function newTempId()
	tempId = map:currentMapId()
end

function hibouxSufokia()
	global:clickPosition(382,262)
	global:delay(1000)
	global:clickPosition(316,385)
	global:delay(1000)
	global:clickPosition(482,72)
	global:delay(1000)
	global:clickPosition(538,80)
	global:delay(1000)
	global:leaveDialog()
end

function setTP()
	if 	tempId == 88212737 or
		tempId == 88212481 or
		tempId == 84412417 or
		tempId == 72619009 or
		tempId == 13605 or
		tempId == 15656 or
		tempId == 15658 or
		tempId == 16691 or
		tempId == 8479 or
		tempId == 79168000 or
		tempId == 156238854 then
			tempId = 0
	elseif 	tempId == 68419585 or
			tempId == 68420099 or
			tempId == 68423168 or
			tempId == 68422662 or
			tempId == 68421125 or
			tempId == 68423176 or
			tempId == 88081178 then
				tempId = 156239367
	elseif	tempId == 88084741 or
			tempId == 88086795 or
			tempId == 88088322 then
				tempId = 88086796
	elseif  tempId == 90707715 or
			tempId == 90706432 or
			tempId == 95422466 or
			tempId == 90701824 or
			tempId == 95423489 or
			tempId == 90833409 or
			tempId == 90702849 or
			tempId == 90833410 or
			tempId == 90703363 or
			tempId == 88085511 then
				tempId = 90705409
	elseif  tempId == 90705412 then
				tempId = 90706690
	elseif  tempId == 15658 or
			tempId == 16691 or
			tempId == 8479 or
			tempId == 15656 or
			tempId == 79168000 then
				tempId = 13605
	end
end

function lost()
	global:printMessage("lost")
	setTP()
	havenbag()
end

function havenbagToBank()
	setTP()

	global:delay(1000)
    global:sendKey(72)
    global:delay(1000)
end

function havenbag()
	if map:currentMapId() == 88212737 then
		global:printMessage("1 - Boucle Terminée !")
		newTempId()
	end

	global:delay(1000)
    global:sendKey(72)
    global:delay(1000)
end

function useClick()
	if map:currentMapId() == 68421128 then
		global:clickPosition(362,462)
		global:delay(3000)
	elseif map:currentMapId() == 88086283 then
		global:clickPosition(548,465)
		global:delay(3000)
	elseif map:currentMapId() == 84411910 then
		global:clickPosition(550,12)
		global:delay(3000)
	elseif map:currentMapId() == 16694 then
		global:clickPosition(155,466)
		global:delay(3000)
	elseif map:currentMapId() == 14121 then
		global:clickPosition(548,461)
		global:delay(3000)
	elseif map:currentMapId() == 14120 then
		global:clickPosition(7,273)
		global:delay(3000)
	elseif map:currentMapId() == 79168257 then
		global:clickPosition(8,304)
		global:delay(3000)
	elseif map:currentMapId() == 12584 then
		global:clickPosition(640,197)
		global:delay(3000)
	elseif map:currentMapId() == 90702081 then
		global:clickPosition(5,207)
		global:delay(3000)
	elseif map:currentMapId() == 68551174 then
		global:clickPosition(639,246)
		global:delay(3000)
	elseif map:currentMapId() == 191104002 then
		global:clickPosition(405,180)
		global:delay(3000)
	elseif map:currentMapId() == 90703872 then
		global:clickPosition(400,230)
		global:delay(3000)
	end
end

function move()
	if job:level(36) < 100 then
		if tempId == 0 or tempId == 88212737 then
			return {
				{ map = "162791424", changeMap = "zaap(119,212,156240386)" },

				{ map = "156240386", changeMap = "bottom" },
				{ map = "156240387", changeMap = "bottom" },
				{ map = "156240388", gather = true, changeMap = "bottom" },
				{ map = "156240389", gather = true, changeMap = "left" },
				{ map = "156239877", gather = true, changeMap = "top" },
				{ map = "156239876", gather = true, changeMap = "left" },
				{ map = "156239364", changeMap = "bottom"},
				{ map = "156239365", gather = true, changeMap = "left" },
				{ map = "156238853", gather = true, changeMap = "top" },
				{ map = "156238852", gather = true, changeMap = "left" },
				{ map = "156238340", gather = true, changeMap = "bottom" },
				{ map = "156238341", changeMap = "bottom" },
				{ map = "156238342", gather = true, changeMap = "right" },
				{ map = "156238854", custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 156238854 then
			return {
				{ map = "156238342", gather = true, changeMap = "bottom" },
				{ map = "156238343", gather = true, changeMap = "left" },
				{ map = "156237831", gather = true, changeMap = "bottom" },
				{ map = "156237832", gather = true, changeMap = "right" },
				{ map = "156238344", gather = true, changeMap = "right" },
				{ map = "156238856", gather = true, changeMap = "top" },
				{ map = "156238855", gather = true, changeMap = "right" },
				{ map = "156239367", gather = true, custom = newTempId, changeMap = "top" },
			}
		elseif tempId == 156239367 then
			return {
				{ map = "156239366", gather = true, custom = havenbag },
				{ map = "162791424", changeMap = "zaap(119,212,68419587)" },
				{ map = "68419587",  gather = true, changeMap = "top" },
				{ map = "68419586",  gather = true, changeMap = "right" },
				{ map = "68420098",  gather = true, changeMap = "top" },
				{ map = "68420097",  gather = true, changeMap = "left" },
				{ map = "68419585",  custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 68419585 then
			return {
				{ map = "68420097",  gather = true, changeMap = "bottom" },
				{ map = "68420098",  gather = true, changeMap = "left" },
				{ map = "68419586",  gather = true, changeMap = "bottom" },
				{ map = "68419587",  gather = true, changeMap = "bottom" },
				{ map = "68419588",  gather = true, changeMap = "right" },
				{ map = "68420100",  gather = true, changeMap = "top" },
				{ map = "68420099",  custom = newTempId, gather = true, changeMap = "bottom" },
			}
		elseif tempId == 68420099 then
			return {
				{ map = "68420100",  gather = true, changeMap = "right" },
				{ map = "68420612",  gather = true, changeMap = "top" },
				{ map = "68420611",  gather = true, changeMap = "top" },
				{ map = "68420610",  gather = true, changeMap = "right" },
				{ map = "68421122",  gather = true, changeMap = "right" },
				{ map = "68421634",  gather = true, changeMap = "top" },
				{ map = "68421633",  gather = true, changeMap = "right" },
				{ map = "68422145",  gather = true, changeMap = "top" },
				{ map = "68423168",  custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 68423168 then
			return {
				{ map = "68422145",  gather = true, changeMap = "left" },
				{ map = "68421633",  gather = true, changeMap = "bottom" },
				{ map = "68421634",  gather = true, changeMap = "left" },
				{ map = "68421122",  gather = true, changeMap = "left" },
				{ map = "68420610",  gather = true, changeMap = "bottom" },
				{ map = "68420611",  gather = true, changeMap = "bottom" },
				{ map = "68420612",  gather = true, changeMap = "right" },
				{ map = "68421124",  gather = true, changeMap = "right" },
				{ map = "68421636",  gather = true, changeMap = "right" },
				{ map = "68422148",  gather = true, changeMap = "right" },
				{ map = "68422660",  gather = true, changeMap = "bottom" },
				{ map = "68422661",  gather = true, changeMap = "bottom" },
				{ map = "68422662",  custom = newTempId, gather = true, changeMap = "top" },
			}
		elseif tempId == 68422662 then
			return {
				{ map = "68422661",  gather = true, changeMap = "left" },
				{ map = "68422149",  gather = true, changeMap = "left" },
				{ map = "68421637",  gather = true, changeMap = "top" },
				{ map = "68421636",  gather = true, changeMap = "left" },
				{ map = "68421124",  gather = true, changeMap = "left" },
				{ map = "68420612",  gather = true, changeMap = "bottom" },
				{ map = "68420613",  gather = true, changeMap = "right" },
				{ map = "68421125",  custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 68421125 then
			return {
				{ map = "68420613",  gather = true, changeMap = "bottom" },
				{ map = "68420614",  gather = true, changeMap = "right" },
				{ map = "68421126",  gather = true, changeMap = "right" },
				{ map = "68421638",  gather = true, changeMap = "bottom" },
				{ map = "68421639",  gather = true, changeMap = "right" },
				{ map = "68422151",  gather = true, changeMap = "right" },
				{ map = "68422663",  gather = true, changeMap = "bottom" },
				{ map = "68422664",  gather = true, changeMap = "right" },
				{ map = "68423176",  custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 68423176 then
			return {
				{ map = "68551174", gather = true, custom = useClick },
				{ map = "88082712", gather = true, changeMap = "right" },
				{ map = "68421641", gather = true, changeMap = "top" },
				{ map = "68421640", changeMap = "left" },
				{ map = "68422153", gather = true, changeMap = "left" },
				{ map = "68422152", changeMap = "bottom" },
				{ map = "68421128", gather = true, changeMap = "top" },
				{ map = "68421127", changeMap = "left" },
				{ map = "68420615", gather = true, changeMap = "left" },
				{ map = "68420103", gather = true, changeMap = "top" },
				{ map = "68420102", gather = true, changeMap = "left" },
				{ map = "68419590", gather = true, changeMap = "top" },
				{ map = "68419589", changeMap = "left" },
				{ map = "68551173", changeMap = "top" },
				{ map = "68551172", gather = true, changeMap = "left" },
				{ map = "68551684", gather = true, changeMap = "bottom" },
				{ map = "68551685", changeMap = "left" },
				{ map = "88082201", gather = true, changeMap = "top" },
				{ map = "68552196", gather = true, changeMap = "left" },
				{ map = "88081690", changeMap = "left" },
				{ map = "68422664", changeMap = "left" },
				{ map = "88081178", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 88081178 then
			return {
				{ map = "68551174", gather = true, changeMap = "right" },
				{ map = "88082712", gather = true, changeMap = "right" },
				{ map = "88081690", gather = true, changeMap = "bottom" },
				{ map = "88081689", gather = true, changeMap = "bottom" },
				{ map = "88081688", changeMap = "right"},
				{ map = "88082200", changeMap = "right"},
				{ map = "68419590", gather = true, changeMap = "bottom" },
				{ map = "68419591", gather = true, changeMap = "right" },
				{ map = "68420103", gather = true, changeMap = "bottom" },
				{ map = "68420104", gather = true, changeMap = "right" },
				{ map = "68420616", gather = true, changeMap = "right" },
				{ map = "68421128", gather = true, custom = useClick },
				{ map = "68421129", gather = true, changeMap = "bottom" },
				{ map = "88085268", gather = true, changeMap = "right" },
				{ map = "88085780", gather = true, changeMap = "right" },
				{ map = "88086292", gather = true, changeMap = "bottom" },
				{ map = "88086291", gather = true, changeMap = "right" },
				{ map = "88086803", gather = true, changeMap = "bottom" },
				{ map = "88086802", gather = true, changeMap = "bottom" },
				{ map = "88086801", gather = true, changeMap = "bottom" },
				{ map = "88086800", gather = true, changeMap = "bottom" },
				{ map = "88086799", gather = true, changeMap = "left" },
				{ map = "88086287", gather = true, changeMap = "bottom" },
				{ map = "88086286", gather = true, changeMap = "left" },
				{ map = "88085774", changeMap = "bottom" },
				{ map = "88085773", changeMap = "right" },
				{ map = "88086285", gather = true, changeMap = "bottom" },
				{ map = "88086284", gather = true, changeMap = "bottom" },
				{ map = "88086283", gather = true, changeMap = "right" },
				{ map = "88086795", changeMap = "top" },
				{ map = "88086796", custom = newTempId, gather = true, changeMap = "bottom" },
			}
		elseif tempId == 88086796 then
			return {
				{ map = "162791424", changeMap = "zaap(119,212,88085249)" },
				{ map = "88085249",  changeMap = "top" },
				{ map = "88085250",  changeMap = "top" },
				{ map = "88085251",  changeMap = "top" },

				{ map = "88086795",  changeMap = "left" },
				{ map = "88086283",  gather = true, custom = useClick },
				{ map = "88086282",  gather = true, changeMap = "bottom" },
				{ map = "88086281",  gather = true, changeMap = "bottom" },
				{ map = "88086280",  gather = true, changeMap = "right" },
				{ map = "88086792",  gather = true, changeMap = "bottom" },
				{ map = "88086791",  gather = true, changeMap = "bottom" },
				{ map = "88086790",  gather = true, changeMap = "bottom" },
				{ map = "88086789",  gather = true, changeMap = "left" },
				{ map = "88086277",  gather = true, changeMap = "bottom" },
				{ map = "88086276",  gather = true, changeMap = "bottom" },
				{ map = "88086275",  gather = true, changeMap = "left" },
				{ map = "88085763",  gather = true, changeMap = "top" },
				{ map = "88085764",  gather = true, changeMap = "left" },
				{ map = "88085252",  gather = true, changeMap = "left" },
				{ map = "88084740",  gather = true, changeMap = "top" },
				{ map = "88084741",  custom = newTempId, gather = true, changeMap = "bottom" },
			}
		elseif tempId == 88084741 then
			return {
				{ map = "88084740",  gather = true, changeMap = "left" },
				{ map = "88084228",  gather = true, changeMap = "top" },
				{ map = "88084229",  gather = true, changeMap = "left" },
				{ map = "88083717",  gather = true, changeMap = "top" },
				{ map = "88083718",  gather = true, changeMap = "top" },
				{ map = "88083719",  gather = true, changeMap = "top" },
				{ map = "88083720",  gather = true, changeMap = "top" },
				{ map = "88083721",  gather = true, changeMap = "right" },
				{ map = "88084233",  gather = true, changeMap = "top" },
				{ map = "88084234",  gather = true, changeMap = "right" },
				{ map = "88084746",  gather = true, changeMap = "top" },
				{ map = "88084747",  gather = true, changeMap = "right" },
				{ map = "88085259",  gather = true, changeMap = "right" },
				{ map = "88085771",  gather = true, changeMap = "bottom" },
				{ map = "88085770",  gather = true, changeMap = "right" },
				{ map = "88086282",  gather = true, changeMap = "top" },
				{ map = "88086283",  gather = true, changeMap = "right" },
				{ map = "88086795",  custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 88086795 then
			return {
				{ map = "88087307", gather = true, changeMap = "bottom" },
				{ map = "88087306", changeMap = "bottom" },
				{ map = "88087305", changeMap = "right" },
				{ map = "88087817", gather = true, changeMap = "bottom" },
				{ map = "88087816", gather = true, changeMap = "bottom" },
				{ map = "88087815", gather = true, changeMap = "bottom" },
				{ map = "88087814", gather = true, changeMap = "bottom" },
				{ map = "88087813", gather = true, changeMap = "bottom" },
				{ map = "88087812", gather = true, changeMap = "bottom" },
				{ map = "88087811", gather = true, changeMap = "bottom", },
				{ map = "88087810", changeMap = "404" },
				{ map = "99096075", changeMap = "249" },
				{ map = "88088322", custom = newTempId, gather = true, changeMap = "282" },
			}
		elseif tempId == 88088322 then
			return {
				{ map = "99096075", changeMap = "469" },
				{ map = "88087298", changeMap = "bottom" },
				{ map = "88087297", gather = true, changeMap = "right" },
				{ map = "90704643", gather = true, changeMap = "right" },
				{ map = "90705155", changeMap = "bottom" },
				{ map = "95421440", gather = true, changeMap = "left" },
				{ map = "90704642", changeMap = "bottom" },
				{ map = "90704641", changeMap = "right" },
				{ map = "90705153", gather = true, changeMap = "right" },
				{ map = "90705665", gather = true, changeMap = "right" },
				{ map = "90706177", gather = true, changeMap = "right" },
				{ map = "90706689", gather = true, changeMap = "right" },
				{ map = "90707201", gather = true, changeMap = "right" },
				{ map = "90707713", gather = true, changeMap = "top" },
				{ map = "90707714", changeMap = "right" },
				{ map = "90708226", gather = true, changeMap = "top" },
				{ map = "90708227", gather = true, changeMap = "left" },
				{ map = "88087810", changeMap = "top" },
				{ map = "88087811", gather = true, changeMap = "left" },
				{ map = "88087299", changeMap = "bottom" },
				{ map = "90707715", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 90707715 then
			return {
				{ map = "90708227", changeMap = "bottom", gather = true },
				{ map = "90708226", changeMap = "left", gather = true },
				{ map = "90707714", changeMap = "bottom" },
				{ map = "90707713", changeMap = "left", gather = true },
				{ map = "90707201", changeMap = "bottom", gather = true },
				{ map = "95420416", changeMap = "left", gather = true },
				{ map = "90706432", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 90706432 then
			return {
				{ map = "95420416", gather = true, changeMap = "top" },
				{ map = "90707201", gather = true, changeMap = "left" },
				{ map = "90706689", gather = true, changeMap = "top" },
				{ map = "90706690", custom = newTempId, gather = true, changeMap = "bottom" },
			}
		elseif tempId == 90706690 then
			return {
				{ map = "162791424", changeMap = "zaap(119,212,88085249)" },

				{ map = "90706689", gather = true, changeMap = "left" },
				{ map = "90706177", gather = true, changeMap = "left" },
				{ map = "90705665", gather = true, changeMap = "left" },
				{ map = "90705153", gather = true, changeMap = "left" },
				{ map = "90704641", changeMap = "top" },
				{ map = "90704642", changeMap = "right" },
				{ map = "95421440", gather = true, changeMap = "top" },
				{ map = "90705155", changeMap = "left" },
				{ map = "90704643", gather = true, changeMap = "left" },
				{ map = "88087297", gather = true, changeMap = "left" },
				{ map = "88086785", gather = true, changeMap = "left" },
				{ map = "88086273", gather = true, changeMap = "left" },
				{ map = "88085761", gather = true, changeMap = "left" },
				{ map = "88085249", gather = true, changeMap = "left" },
				{ map = "88084737", gather = true, changeMap = "left" },
				{ map = "88084225", gather = true, changeMap = "top" },
				{ map = "88084226", gather = true, changeMap = "left" },
				{ map = "88083714", changeMap = "bottom" },
				{ map = "88083713", gather = true, changeMap = "bottom" },
				{ map = "88083456", gather = true, changeMap = "left" },
				{ map = "88082944", gather = true, changeMap = "left" },
				{ map = "88082432", gather = true, changeMap = "left" },
				{ map = "88081920", gather = true, changeMap = "bottom" },
				{ map = "88081921", gather = true, changeMap = "bottom" },
				{ map = "88081922", gather = true, changeMap = "bottom" },
				{ map = "88081923", changeMap = "right" },
				{ map = "88082436", gather = true, changeMap = "bottom" },
				{ map = "88082435", gather = true, changeMap = "bottom" },
				{ map = "88082437", changeMap = "right"},
				{ map = "88082949", gather = true, changeMap = "right" },
				{ map = "88083461", gather = true, changeMap = "bottom" },
				{ map = "88083462", gather = true, changeMap = "right" },
				{ map = "88083974", gather = true, changeMap = "right" },
				{ map = "88084486", gather = true, changeMap = "top" },
				{ map = "88084485", gather = true, changeMap = "right" },
				{ map = "88084997", gather = true, changeMap = "right" },
				{ map = "88085509", gather = true, changeMap = "bottom" },
				{ map = "88085510", gather = true, changeMap = "right" },
				{ map = "95424516", gather = true, changeMap = "right" },
				{ map = "90703364", gather = true, changeMap = "right" },
				{ map = "90703876", changeMap = "top" },
				{ map = "90703875", changeMap = "right" },
				{ map = "95420420", gather = true, changeMap = "right" },
				{ map = "90704899", gather = true, changeMap = "bottom" },
				{ map = "95421442", gather = true, changeMap = "right" },
				{ map = "90705412", custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 90705412 then
			return {
				{ map = "95421442", gather = true, changeMap = "top" },
				{ map = "90704899", gather = true, changeMap = "right" },
				{ map = "90705411", gather = true, changeMap = "top" },
				{ map = "90705410", gather = true, changeMap = "left" },
				{ map = "90704898", gather = true, changeMap = "top" },
				{ map = "90704897", gather = true, changeMap = "right" },
				{ map = "90705409", custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 90705409 then
			return {
				{ map = "162791424", changeMap = "zaap(119,212,95422468)" },

				{ map = "90704897", gather = true, changeMap = "left" },
				{ map = "90704385", gather = true, changeMap = "top" },
				{ map = "90704384", gather = true, changeMap = "left" },
				{ map = "90703872", gather = true, changeMap = "bottom" },
				{ map = "95420418", gather = true, changeMap = "left" },
				{ map = "95422468", gather = true, changeMap = "top" },
				{ map = "90703360", gather = true, changeMap = "left" },
				{ map = "90702848", gather = true, changeMap = "left" },
				{ map = "90702336", changeMap = "top" },
				{ map = "90702593", gather = true, changeMap = "right" },
				{ map = "95422466", custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 95422466 then
			return {
				{ map = "90702593", gather = true, changeMap = "left" },
				{ map = "90702081", gather = true, custom = useClick },
				{ map = "90833665", gather = true, changeMap = "bottom" },
				{ map = "90833408", gather = true, changeMap = "right" },
				{ map = "90701824", custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 90701824 then
			return {
				{ map = "90833408", gather = true, changeMap = "left" },
				{ map = "95424512", gather = true, changeMap = "bottom" },
				{ map = "95424513", gather = true, changeMap = "left" },
				{ map = "95424001", gather = true, changeMap = "left" },
				{ map = "95423489", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 95423489 then
			return {
				{ map = "95424001", gather = true, changeMap = "right" },
				{ map = "95424513", gather = true, changeMap = "top" },
				{ map = "95424512", gather = true, changeMap = "right" },
				{ map = "90833408", gather = true, changeMap = "right" },
				{ map = "90701824", gather = true, changeMap = "bottom" },
				{ map = "90701825", gather = true, changeMap = "left" },
				{ map = "90833409", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 90833409 then
			return {
				{ map = "90701825", gather = true, changeMap = "right" },
				{ map = "90702337", changeMap = "right" },
				{ map = "90702849", custom = newTempId, gather = true, changeMap = "left" },
			}
		elseif tempId == 90702849 then
			return {
				{ map = "90702337", changeMap = "bottom" },
				{ map = "90702338", gather = true, changeMap = "left" },
				{ map = "90701826", gather = true, changeMap = "left" },
				{ map = "90833410", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 90833410 then
			return {
				{ map = "90701826", gather = true, changeMap = "right" },
				{ map = "90702338", gather = true, changeMap = "right" },
				{ map = "90702850", gather = true, changeMap = "right" },
				{ map = "90703362", gather = true, changeMap = "right" },
				{ map = "90703874", gather = true, changeMap = "right" },
				{ map = "90704386", gather = true, changeMap = "bottom" },
				{ map = "95420420", gather = true, changeMap = "left" },
				{ map = "90703875", changeMap = "left" },
				{ map = "90703363", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 90703363 then
			return {
				{ map = "90703875", changeMap = "bottom" },
				{ map = "90703876", changeMap = "left" },
				{ map = "90703364", gather = true, changeMap = "left" },
				{ map = "95424516", gather = true, changeMap = "left" },
				{ map = "88085510", gather = true, changeMap = "bottom" },
				{ map = "88085511", custom = newTempId, gather = true, changeMap = "top" },
			}
		elseif tempId == 88085511 then
			return {
				{ map = "88085510", gather = true, changeMap = "left" },
				{ map = "88084998", gather = true, changeMap = "bottom" },
				{ map = "88084999", gather = true, changeMap = "left" },
				{ map = "88084487", gather = true, changeMap = "left" },
				{ map = "88083975", changeMap = "bottom" },
				{ map = "88083976", gather = true, changeMap = "left" },
				{ map = "88083464", gather = true, changeMap = "left" },
				{ map = "88082952", gather = true, changeMap = "left" },
				{ map = "88082440", gather = true, changeMap = "bottom" },
				{ map = "88082441", gather = true, changeMap = "left" },
				{ map = "88081929", gather = true, changeMap = "left" },
				{ map = "88081417", gather = true, changeMap = "left" },
				{ map = "88080905", gather = true, changeMap = "top" },
				{ map = "88080904", changeMap = "top" },
				{ map = "88080903", changeMap = "left" },
				{ map = "88080391", changeMap = "left" },
				{ map = "88211975", gather = true, changeMap = "top" },
				{ map = "88211974", gather = true, changeMap = "top" },
				{ map = "88211973", gather = true, changeMap = "top" },
				{ map = "88211972", gather = true, changeMap = "right" },
				{ map = "88080388", changeMap = "right" },
				{ map = "88080900", gather = true, changeMap = "top" },
				{ map = "88080899", changeMap = "left" },
				{ map = "88080387", changeMap = "left" },
				{ map = "88211971", gather = true, changeMap = "top" },
				{ map = "88211970", gather = true, changeMap = "top" },
				{ map = "88211969", gather = true, changeMap = "left" },
				{ map = "88212481", gather = true, changeMap = "top" },
				{ map = "88212480", gather = true, changeMap = "left" },
				{ map = "88212992", gather = true, changeMap = "top" },
				{ map = "88213249", gather = true, changeMap = "right" },
				{ map = "88212737", gather = true, custom = havenbag },
			}
		end
	elseif job:level(36) >= 100 and job:level(36) < 130 --[[140]] then
		if tempId == 88212481 then
			return {
				{ map = "84412416", gather = true, changeMap = "left" },
				{ map = "84411904", gather = true, changeMap = "left" },
				{ map = "84411392", gather = true, changeMap = "bottom" },
				{ map = "84411393", changeMap = "left"},
				{ map = "84410881", gather = true, changeMap = "bottom" },
				{ map = "84410882", changeMap = "bottom"},
				{ map = "84410883", gather = true, changeMap = "left" },
				{ map = "84410371", gather = true, changeMap = "left" },
				{ map = "84541955", gather = true, changeMap = "bottom" },
				{ map = "84541956", gather = true, changeMap = "bottom" },
				{ map = "84541957", gather = true, changeMap = "bottom" },
				{ map = "84541958", gather = true, changeMap = "bottom" },
				{ map = "84541959", gather = true, changeMap = "bottom" },
				{ map = "84541960", gather = true, changeMap = "right" },
				{ map = "84410376", gather = true, changeMap = "top" },
				{ map = "84410888", gather = true, changeMap = "right" },
				{ map = "84411400", gather = true, changeMap = "right" },
				{ map = "84411912", gather = true, changeMap = "top" },
				{ map = "84411911", gather = true, changeMap = "left" },
				{ map = "84411399", gather = true, changeMap = "top" },
				{ map = "84411398", gather = true, changeMap = "right" },
				{ map = "84411910", gather = true, custom = useClick },
				{ map = "84411909", gather = true, changeMap = "right" },
				{ map = "84412421", gather = true, changeMap = "bottom" },
				{ map = "84412422", gather = true, changeMap = "right" },
				{ map = "84412934", gather = true, changeMap = "top" },
				{ map = "84412933", gather = true, changeMap = "top" },
				{ map = "84412932", gather = true, changeMap = "left" },
				{ map = "84412420", gather = true, changeMap = "top" },
				{ map = "84412419", gather = true, changeMap = "top" },
				{ map = "84412418", changeMap = "right"},
				{ map = "84412930", gather = true, changeMap = "top" },
				{ map = "84412929", gather = true, changeMap = "left" },
				{ map = "84410375", gather = true, changeMap = "top" },
				{ map = "84410374", gather = true, changeMap = "right" },
				{ map = "84410886", gather = true, changeMap = "bottom" },
				{ map = "84410887", gather = true, changeMap = "bottom" },
				{ map = "84412417", custom = newTempId, gather = true, changeMap = "top" },
			}
		elseif tempId == 84412417 then
			return {
				{ map = "84412416", gather = true, changeMap = "right" },
				{ map = "88212481", gather = true, changeMap = "right" },
				{ map = "88211969", gather = true, changeMap = "bottom" },
				{ map = "88211970", gather = true, changeMap = "bottom" },
				{ map = "88211971", gather = true, changeMap = "bottom" },
				{ map = "88211972", gather = true, changeMap = "bottom" },
				{ map = "88211973", gather = true, changeMap = "bottom" },
				{ map = "88211974", gather = true, changeMap = "bottom" },
				{ map = "88211975", gather = true, changeMap = "right" },
				{ map = "88080391", changeMap = "bottom" },
				{ map = "72619521", gather = true, changeMap = "bottom" },
				{ map = "72619522", gather = true, changeMap = "bottom" },
				{ map = "72619523", gather = true, changeMap = "bottom" },
				{ map = "72619524", gather = true, changeMap = "left" },
				{ map = "72619012", gather = true, changeMap = "left" },
				{ map = "72618500", gather = true, changeMap = "left" },
				{ map = "72617988", gather = true, changeMap = "top" },
				{ map = "72617987", gather = true, changeMap = "top" },
				{ map = "72617986", gather = true, changeMap = "top" },
				{ map = "72617985", gather = true, changeMap = "right" },
				{ map = "72618497", gather = true, changeMap = "right" },
				{ map = "72619009", custom = newTempId, gather = true, changeMap = "right" },
			}
		elseif tempId == 72619009 then
			return {
				{ map = "1,31", gather = true, changeMap = "top" },
				{ map = "1,30", changeMap = "left" },
				{ map = "0,30", gather = true, changeMap = "top" },
				{ map = "0,29", gather = true, changeMap = "top" },
				{ map = "0,28", gather = true, changeMap = "top" },
				{ map = "0,27", gather = true, changeMap = "top" },
				{ map = "0,26", gather = true, changeMap = "top" },
				{ map = "0,25", gather = true, changeMap = "top" },
				{ map = "0,24", gather = true, changeMap = "left" },
				{ map = "88212481",  custom = newTempId, gather = true, changeMap = "left" },
			}
		else
			return {
				{ map = "162791424", changeMap = "zaap(119,212,88212481)" },
				{ map = "88212481",  custom = newTempId, gather = true, changeMap = "left" },
			}
		end
	elseif job:level(36) >= 130 --[[140]] then
		if tempId == 13605 or tempId == 15656 then
			return {
				{ map = "14117", changeMap = "right" },
				{ map = "14629", changeMap = "top" },
				{ map = "14630", changeMap = "top" },
				{ map = "14631", changeMap = "top" },
				{ map = "14632", changeMap = "right" },
				{ map = "15144", changeMap = "right" },
				{ map = "15656", changeMap = "top" },
				{ map = "15657", gather = true, changeMap = "left" },
				{ map = "15145", changeMap = "top" },
				{ map = "15146", gather = true, changeMap = "right" },
				{ map = "15658", custom = newTempId , changeMap = "left" },
			}
		elseif tempId == 15658 then
			return {
				{ map = "15146", changeMap = "top" },
				{ map = "15147", changeMap = "top" },
				{ map = "15148", gather = true, changeMap = "top" },
				{ map = "15149", changeMap = "top" },
				{ map = "15150", changeMap = "top" },
				{ map = "15151", changeMap = "right" },
				{ map = "16176", gather = true, changeMap = "right" },
				{ map = "16690", gather = true, changeMap = "right" },
				{ map = "17202", changeMap = "bottom"},
				{ map = "17201", gather = true, changeMap = "bottom" },
				{ map = "17200", gather = true, changeMap = "right" },
				{ map = "17712", gather = true, changeMap = "top" },
				{ map = "17713", gather = true, changeMap = "top" },
				{ map = "17714", gather = true, changeMap = "top" },
				{ map = "17715", changeMap = "right" },
				{ map = "18227", gather = true, changeMap = "top" },
				{ map = "18228", gather = true, changeMap = "top" },
				{ map = "18229", gather = true, changeMap = "left" },
				{ map = "17717", changeMap = "top" },
				{ map = "17718", gather = true, changeMap = "left" },
				{ map = "17206", gather = true, changeMap = "left" },
				{ map = "16694", gather = true, custom = useClick },
				{ map = "16693", changeMap = "left" },
				{ map = "16181", gather = true, changeMap = "bottom" },
				{ map = "16180", gather = true, changeMap = "right" },
				{ map = "16692", changeMap = "bottom" },
				{ map = "16691", custom = newTempId , changeMap = "bottom" },
			}
		elseif tempId == 16691 then
			return {
				{ map = "16690", changeMap = "left" }, --arreté au pont
				{ map = "16176", gather = true, changeMap = "left" },
				{ map = "15151", gather = true, changeMap = "bottom" },
				{ map = "15150", changeMap = "bottom" },
				{ map = "15149", changeMap = "bottom" },
				{ map = "15148", changeMap = "left" },
				{ map = "14636", changeMap = "bottom" },
				{ map = "14635", changeMap = "left" },
				{ map = "12587", changeMap = "top" },
				{ map = "12588", changeMap = "top" },
				{ map = "12589", changeMap = "left" },
				{ map = "12077", gather = true, changeMap = "bottom" },
				{ map = "12076", gather = true, changeMap = "bottom" },
				{ map = "12075", changeMap = "bottom" },
				{ map = "12074", changeMap = "left" },
				{ map = "11562", changeMap = "left" },
				{ map = "11050", gather = true, changeMap = "bottom" },
				{ map = "11049", changeMap = "bottom" },
				{ map = "11048", changeMap = "left" },
				{ map = "10536", changeMap = "left" },
				{ map = "10024", gather = true, changeMap = "bottom" },
				{ map = "10023", changeMap = "left" },
				{ map = "9511", gather = true, changeMap = "bottom" },
				{ map = "9510", gather = true, changeMap = "bottom" },
				{ map = "9509", changeMap = "left" },
				{ map = "8997", gather = true, changeMap = "bottom" },
				{ map = "8996", gather = true, changeMap = "right" },
				{ map = "9508", changeMap = "bottom" },
				{ map = "9507", changeMap = "bottom" },
				{ map = "9506", changeMap = "right" },
				{ map = "10018", changeMap = "bottom" },
				{ map = "10017", changeMap = "bottom" },
				{ map = "10016", changeMap = "bottom" },
				{ map = "10015", changeMap = "bottom" },
				{ map = "14123", changeMap = "bottom" },
				{ map = "14122", changeMap = "bottom" },
				{ map = "14121", custom = useClick },
				{ map = "14120", custom = useClick },
				{ map = "13608", gather = true, changeMap = "bottom" },
				{ map = "13607", changeMap = "left" },
				{ map = "13095", gather = true, changeMap = "bottom" },
				{ map = "13094", gather = true, changeMap = "left" },
				{ map = "12582", gather = true, changeMap = "left" },
				{ map = "12070", gather = true, changeMap = "top" },
				{ map = "12071", gather = true, changeMap = "right" },
				{ map = "12583", gather = true, changeMap = "top" },
				{ map = "12584", gather = true, custom = useClick },
				{ map = "13096", gather = true, changeMap = "top" },
				{ map = "13099", changeMap = "left" },
				{ map = "13097", gather = true, changeMap = "top" },
				{ map = "13098", gather = true, changeMap = "top" },
				{ map = "10014", changeMap = "bottom" },
				{ map = "10013", changeMap = "left" },
				{ map = "9501", gather = true, changeMap = "left" },
				{ map = "8989", gather = true, changeMap = "top" },
				{ map = "8990", changeMap = "left" },
				{ map = "8478", gather = true, changeMap = "top" },
				{ map = "8479", gather = true, custom = newTempId , changeMap = "bottom" },
			}
		elseif tempId == 8479 then
			return {
				{ map = "8478", gather = true, changeMap = "right" },
				{ map = "8990", changeMap = "bottom" },
				{ map = "8989", gather = true, changeMap = "right" },
				{ map = "9501", gather = true, changeMap = "right" },
				{ map = "10013", changeMap = "right" },
				{ map = "10525", changeMap = "bottom" },
				{ map = "10524", changeMap = "bottom" },
				{ map = "10523", changeMap = "bottom" },
				{ map = "10522", changeMap = "bottom" },
				{ map = "10521", changeMap = "bottom" },
				{ map = "10520", changeMap = "bottom" },
				{ map = "10519", gather = true, changeMap = "bottom" },
				{ map = "10518", changeMap = "bottom" },
				{ map = "10517", gather = true, changeMap = "right" },
				{ map = "11029", gather = true, changeMap = "right" },
				{ map = "11541", gather = true, changeMap = "bottom" },
				{ map = "11540", gather = true, changeMap = "right" },
				{ map = "12052", gather = true, changeMap = "top" },
				{ map = "12053", changeMap = "right" },
				{ map = "12565", gather = true, changeMap = "right" },
				{ map = "13077", gather = true, changeMap = "top" },
				{ map = "13078", gather = true, changeMap = "top" },
				{ map = "13079", changeMap = "right" },
				{ map = "13591", gather = true, changeMap = "top" },
				{ map = "13592", changeMap = "top" },
				{ map = "13593", changeMap = "right" },
				{ map = "14105", gather = true, changeMap = "top" },
				{ map = "14106", gather = true, changeMap = "top" },
				{ map = "14107", gather = true, changeMap = "top" },
				{ map = "14108", gather = true, changeMap = "top" },
				{ map = "14109", changeMap = "top" },
				{ map = "14110", changeMap = "right" },
				{ map = "14622", changeMap = "top" },
				{ map = "14623", changeMap = "right" },
				{ map = "15135", gather = true, changeMap = "top" },
				{ map = "15136", changeMap = "right" },
				{ map = "15648", gather = true, changeMap = "top" },
				{ map = "15649", gather = true, changeMap = "right" },
				{ map = "16161", changeMap = "top" },
				{ map = "16162", changeMap = "right" },
				{ map = "16674", gather = true, changeMap = "right" },
				{ map = "79168771", gather = true, changeMap = "right" },
				{ map = "79169283", gather = true, changeMap = "bottom" },
				{ map = "79169282", gather = true, changeMap = "left" },
				{ map = "79168257", gather = true, custom = useClick },
				{ map = "79167745", changeMap = "left" },
				{ map = "79299329", gather = true, changeMap = "bottom" },
				{ map = "79299072", gather = true, changeMap = "bottom" },
				{ map = "79299073", gather = true, changeMap = "right" },
				{ map = "79167489", gather = true, changeMap = "right" },
				{ map = "79168001", changeMap = "top" },
				{ map = "79168000", custom = newTempId , changeMap = "top" },
			}
		elseif tempId == 79168000 then
			return {
				{ map = "79168257", gather = true, changeMap = "right" },
				{ map = "79169282", gather = true, changeMap = "top" },
				{ map = "79169283", gather = true, changeMap = "left" },
				{ map = "79168771", gather = true, changeMap = "left" },
				{ map = "16674", gather = true, changeMap = "top" },
				{ map = "16675", changeMap = "top" },
				{ map = "16676", gather = true, changeMap = "top" },
				{ map = "16677", gather = true, changeMap = "top" },
				{ map = "16678", gather = true, changeMap = "left" },
				{ map = "16166", changeMap = "top" },
				{ map = "16167", gather = true, changeMap = "top" },
				{ map = "16168", changeMap = "left" },
				{ map = "15656", custom = newTempId , changeMap = "left" },
			}
		else
			return {
				{ map = "162791424", changeMap = "zaap(119,212,13605)" },
				{ map = "13605", custom = newTempId , changeMap = "right" },
			}
		end
	end
end

function bank()
		if map:currentMapId() ~= 162791424 and map:currentMapId() ~= 191105026 and map:currentMapId() ~= 191104002 and map:currentMapId() ~= 192415750 and map:currentMapId() ~= 95422468 and map:currentMapId() ~= 90703360 and map:currentMapId() ~= 90703872 and map:currentMapId() ~= 91753985 and map:currentMapId() ~= 13605 and map:currentMapId() ~= 13093 and map:currentMapId() ~= 12581 and map:currentMapId() ~= 12580 and map:currentMapId() ~= 8129542 then
        return {{map = map:currentPos(), custom = havenbagToBank},}
    elseif map:currentMapId() == 162791424 then
    	if (tempId == 0 and job:level(36) < 140--[[100]]) or tempId == 156239367 then
    		return {{ map = "162791424", changeMap = "zaap(110,199,191105026)"}, } --astrub
    	elseif (tempId == 0 and (job:level(36) >= 140--[[100]]) and (job:level(36) < 160--[[140]])) or tempId == 88086796 or tempId == 90705409 or tempId == 90706690 then
    		return {{ map = "162791424", changeMap = "zaap(110,199,95422468)"}, } --sufokia
    	elseif tempId == 13605 then
    		return {{ map = "162791424", changeMap = "zaap(110,199,147768)"}, } --pandala
    	end
    end
    return {
    	--astrub
    	{ map = "191105026", changeMap = "left" },
    	{ map = "191104002", custom = useClick },
    	{ map = "192415750", npcBank = true, changeMap = "409" },
		--sufokia
			{ map = "95422468", changeMap = "top" },
    	{ map = "90703360", changeMap = "right" },
    	{ map = "90703872", custom = useClick },
    	{ map = "91753985", custom = hibouxSufokia, changeMap = "480" },
    	--pandala
    	{ map = "13605", changeMap = "left" },
    	{ map = "13093", changeMap = "left" },
    	{ map = "12581", changeMap = "bottom" },
    	{ map = "12580", changeMap = "270" },
    	{ map = "8129542", npcBank = true, changeMap = "409" },
	}
end
