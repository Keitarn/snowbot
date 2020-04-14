-- Trajet par Mystogan, Adapter par Lucide [ Fix par AYMANOUH ] 
-- UPDATE : 13/02/2020
-- 19 Mines + Banque + Phénix - LESSAGRO
--
-- FlatyBot
-------------------------------------------------------------
-- Ressources mineur : 	17  - fer
--						53  - Cuivre
--						55  - Bronze
--						37  - Kobalte
--						54  - Manganèse
--						52  - Etain
--						114 - Silicate
--						24  - Argent
--						26  - Bauxite
--						25  - Or
--						113 - Dolomite
--						135 - Obsidienne
-------------------------------------------------------------
ELEMENTS_TO_GATHER = { 17, 53, 55, 37, 54, 52, 114, 24, 26, 25, 113, 135 }
AUTO_DELETE = {  }
nbZaap = 0
banque = false
MAX_PODS = 90

-------------------------------------------------------------

function sortieBug()
	global:clickPosition(628,412)
end
function havenbagCustom()
	--if not banque then
	if map:currentMapId() ~= 162791424 then
		global:sendKey(72)
	else
		if nbZaap == 0 then
			nbZaap = 1
			global:delay(1000)
			map:changeMap("zaap(110,190,88212746)");	-- Bord de la foret maléfique
		end
		if nbZaap == 1 then
			nbZaap = 2
			global:delay(1000)
			map:changeMap("zaap(110,190,13605)");		-- Pandala
		end
		if nbZaap == 2 then
			nbZaap = 3
			global:delay(1000)
			map:changeMap("zaap(110,190,173278210)");	-- Saharach
		end
		if nbZaap == 3 then
			nbZaap = 4
			global:delay(1000)
			map:changeMap("zaap(110,190,156240386)");	-- Lac
		end
		if nbZaap == 4 then
			nbZaap = 5
			global:delay(1000)
			map:changeMap("zaap(110,190,88085249)");	-- Rivage
		end
		if nbZaap == 5 then
			nbZaap = 6
			global:delay(1000)
			map:changeMap("zaap(110,190,88213271)");	-- Amakna
		end
		if nbZaap == 6 then
			nbZaap = 0
			global:delay(1000)
			map:changeMap("zaap(110,190,164364304)");	-- Hurlement
		end
	--elseif banque then
		--nbZaap = 6								-- Retour Hurlement
		--map:changeMap("zaap(88213271)")			-- Amakna BANQUE
	end
end

function move()
	if banque then
        for index, actualMap in pairs(mapsWithChangeMap) do
            if actualMap.doNextMap then
                actualMap.doNextMap = "no"
            end
            if actualMap.doThirdMap then
                actualMap.doThirdMap = "no"
            end
            if actualMap.doFourthdMap then
                actualMap.doFourthMap = "no"
            end
        end
        nbZaap = 6;
        banque = false
    end

	if GatherFight() == "gather" then
		return {
			{map = map:currentPos(), custom = processMap, gather = true}
		}
	elseif GatherFight() == "fight" then
		return {
			{map = map:currentPos(), custom = processMap, fight = true}
		}
	elseif GatherFight() == "changeMap" then
		return {
			{map = map:currentPos(), custom = processMap}
		}
	else
		global:printMessage("Aucune action sur la map")
		global:stopScript()
	end
end

mapsWithChangeMap = {
		{ map = "99095051", changeMap = "410" },
		{ map = "88081177", custom = havenbagCustom },
		-- Zaap bouftous --
		{ map="5,7", custom = havenbagCustom },
		-- Zaap Routes Rocailleuses --
		{ map="-20,-20", changeMap="bottom" },
		{ map="-20,-19", changeMap="bottom" },
		{ map="-20,-18", changeMap="bottom" },
		{ map="-20,-17", changeMap="bottom" },
		{ map="-20,-16", changeMap="bottom" },
		{ map="-20,-15", changeMap="left" },
		{ map="-21,-15", changeMap="bottom" },
		{ map="-21,-14", changeMap="bottom" },
		{ map="-21,-13", changeMap="bottom" },
		{ map="-21,-12", changeMap="bottom" },
		{ map="-21,-11", changeMap="bottom" },
		{ map="-21,-10", changeMap="bottom" },
		{ map="-21,-9", changeMap="bottom" },
		{ map="-21,-8", changeMap="bottom" },
		-- Mine Hurlement --
		{ map="171707908", changeMap={"166", "left"}},
		{ map="178784264", gather=true, changeMap="532" },
		-- Sortie Mine Hurlement --
		{ map="-22,-7", changeMap="left" },
		{ map="-23,-7", changeMap="bottom" },
		{ map="-23,-6", changeMap="bottom" },
		{ map="-23,-5", changeMap="left" },
		{ map="-24,-5", changeMap="bottom" },
		{ map="-24,-4", changeMap="bottom" },
		{ map="-24,-3", changeMap="bottom" },
		{ map="-24,-2", changeMap="bottom" },
		{ map="-24,-1", changeMap="bottom" },
		{ map="-24,0", changeMap="bottom" },
		{ map="-24,1", changeMap="bottom" },
		{ map="-24,2", changeMap="bottom" },
		{ map="-24,3", changeMap="left" },
		{ map="-25,3", changeMap="bottom" },
		{ map="-25,4", changeMap="bottom" },
		{ map="-25,5", changeMap="left" },
		-- Mine Estrone --
		{ map="171966987", changeMap={"397", "bottom"}},
		{ map="178785286", gather=true, changeMap= {"99", "558"}},
		{ map="178785288", gather=true, changeMap="558"},
		-- Sortie Mine Estrone --
		{ map="-26,5", changeMap="bottom" },    -- Bug de Trajet Corriger par AYMANOUH --
		{ map="-26,6", changeMap="bottom" },
		{ map="-26,7", changeMap="bottom" },
		{ map="-26,8", changeMap="right" },     -- Bug de Trajet Corriger par AYMANOUH --
		{ map="-25,8", changeMap="right" },     -- Bug de Trajet Corriger par AYMANOUH --
		{ map="-25,9", changeMap="bottom" },
		{ map="-25,10", changeMap="bottom" },
		{ map="-25,11", changeMap="bottom" },
		{ map="-25,12", changeMap="bottom" },	-- Zaap des roulottes --
		{ map="-24,12", changeMap="bottom" },
		{ map="-24,13", changeMap="bottom" },
		{ map="-24,14", changeMap="right" },
		{ map="-23,14", changeMap="bottom" },
		{ map="-23,15", changeMap="right" },
		{ map="-22,15", changeMap="bottom" },
		{ map="-22,16", changeMap="bottom" },
		{ map="-22,17", changeMap="bottom" },
		{ map="-22,18", changeMap="right" },
		{ map="-21,18", changeMap="right" },
		{ map="-20,18", changeMap="bottom" },
		{ map="-20,19", changeMap="bottom" },
		{ map="-20,20", changeMap="bottom" },
		{ map="-20,21", changeMap="bottom" },
		{ map="-20,22", changeMap="right" },
		{ map="-19,22", changeMap="right" },
		{ map="-18,22", changeMap="top" },
		{ map="-18,21", changeMap="right" },
		-- Mine Imale --
		{ map="172491782", changeMap="373" },
		{ map="178783240", gather=true, custom = havenbagCustom },
		{ map="178783242", gather=true, custom = havenbagCustom },
		-- Havre sac --
		{ map="0,0", custom = havenbagCustom},
		-- Sortie Havre sac --
		-- Zaap Bord de la foret maléfique --
		{ map="-1,13", changeMap="top" },
		{ map="-1,12", changeMap="top" },
		{ map="-1,11", changeMap="top" },
		{ map="-1,10", changeMap="left" },
		{ map="-2,10", changeMap="left" },
		{ map="-3,10", changeMap="top" },
		-- Mine Istairameur --
		{ map="88213774", changeMap= {"354", "right"} },
		{ map="97259013", gather=true, changeMap= {"258", "276","403"} },
		{ map="97260037", gather=true, changeMap= {"303", "352", "430" } },
		{ map="97257991", gather=true, changeMap= "464" },
		{ map="97261061", gather=true, changeMap= {"290", nextMap="284", "458" } },
		{ map="97259015", gather=true, changeMap= "451" },
		{ map="97255943", gather=true, changeMap= "403" },
		{ map="97256967", gather=true, changeMap= {"194", "518"} },
		{ map="97260039", gather=true, changeMap= {"241", "262", "451" } },
		{ map="97261063", gather=true, changeMap= {"331", "296", "459" } },
		{ map="97259017", gather=true, changeMap= "436" },
		{ map="97255945", gather=true, changeMap= {"332", "213", "416" } },
		{ map="97260041", gather=true, changeMap= "354" },
		{ map="97256969", gather=true, changeMap= "401" },
		{ map="97257993", gather=true, changeMap= {"122", "537" } },
		{ map="97261065", gather=true, changeMap= {"213", "236", "479" } },
		{ map="97255947", gather=true, changeMap= {"199", "500"} },
		{ map="97256971", gather=true, changeMap= {"234", "239", sortieBug} },
		{ map="97261067", gather=true, changeMap= "521" },
		{ map="97257995", gather=true, changeMap= "374" },
		{ map="97259019", gather=true, changeMap= {"276", "438" } },
		{ map="97260043", gather=true, changeMap= "451" },
		-- Sortie Mine Istairameur --
		{ map="-2,9", changeMap="right" },
		{ map="-1,9", changeMap="top" },
		{ map="-1,8", changeMap="369" },
		{ map="-2,8", changeMap="left" },
		{ map="-3,8", changeMap="left" },
		{ map="-4,8", changeMap="top" },
		{ map="-4,7", changeMap="left" },
		{ map="-5,7", changeMap="left" },
		{ map="-6,7", changeMap= {"left", "top"} },
		-- Mine Bwork 1 --
		{ map="104202753", changeMap={"100", "right"} },
		{ map="104859143", gather=true, changeMap={"160", "171", "543" } },
		{ map="104860167", gather=true, changeMap={"205", "478" } },
		{ map="104861191", gather=true, changeMap="457" },
		{ map="104862215", gather=true, changeMap="472" },
		-- Sortie Mine Bwork 1 --
		-- Mine Bwork 2 --
		{ map="104071168", changeMap={ "213", "top"} },
		{ map="104860165", gather=true, changeMap={"408", "444"} },
		{ map="104858119", gather=true, changeMap="255" },
		{ map="104862213", gather=true, changeMap="233" },
		{ map="104861189", gather=true, changeMap="458" },
		-- Sortie Mine Bwork 2 --
		-- Mine Bwork 3 --
		{ map="104071425", changeMap={"199", "right"}  },
		{ map="104859139", gather=true, changeMap="444" },
		-- Sortie Mine Bwork 3 --
		{ map="-5,5", changeMap="right" },
		{ map="-4,5", changeMap="top" },
		{ map="-4,4", changeMap="top" },
		{ map="-4,3", changeMap="top" },
		-- Mine Bwork 4 --
		{ map="104072452", changeMap={"248", havenbagCustom} },
		{ map="104858121", gather=true, changeMap= {"173", "507"} },
		{ map="104859145", gather=true, changeMap="192" },
		{ map="104861193", gather=true, changeMap= {"248", "454" } },
		{ map="104862217", gather=true, changeMap="369" },
		{ map="104860169", gather=true, changeMap="379" },
		-- Sortie Mine Bwork 4 --
		-- Zaap Pandala
		{ map="26,-37", gather=true, custom = havenbagCustom },
		{ map="26,-38", changeMap="right" },
		{ map="27,-38", changeMap="right" },
		{ map="28,-38", changeMap="top" },
		{ map="28,-39", changeMap="top" },
		{ map="28,-40", changeMap="top" },
		{ map="27,-39", changeMap="top" },
		{ map="27,-40", changeMap="right" },
		{ map="27,-41", changeMap="top" },
		{ map="28,-40", changeMap="top" },
		{ map="28,-41", changeMap="top" },
		{ map="27,-42", changeMap="top" },
		{ map="27,-43", changeMap="top" },
		-- Zone Pandala --
		{ map="27,-44", gather=true, changeMap="left" },
		{ map="26,-44", gather=true, changeMap="left" },
		{ map="25,-44", gather=true, changeMap="top" },
		{ map="25,-45", gather=true, changeMap="right" },
		{ map="26,-45", gather=true, changeMap="right" },
		{ map="27,-45", gather=true, changeMap={"top", "right"} },
		{ map="27,-46", gather=true, changeMap={"top", "bottom"} },
		{ map="27,-47", gather=true, changeMap="bottom" },
		{ map="28,-45", gather=true, changeMap="top" },
		{ map="28,-46", gather=true, changeMap="top" },
		{ map="28,-47", gather=true, custom = havenbagCustom },
		-- Sortie Zone Pandala --
		-- Zaap Saharach --
		{ map="15,-58", changeMap="top" },
		{ map="15,-59", changeMap="top" },
		{ map="15,-60", changeMap="right" },
		-- Mine Himum --
		{ map="173278720", changeMap="133" },
		{ map="173935364", gather=true, changeMap="297" },
		{ map="173936388", gather=true, changeMap="450" },
		{ map="173937412", gather=true, changeMap="382" },
		{ map="173938436", gather=true, changeMap="367" },
		{ map="173939460", gather=true, custom = havenbagCustom },
		-- Sortie Mine Himum --
		-- Zaap Lac de Cania --
		{ map="-3,-42", changeMap="right" },
		{ map="-2,-42", changeMap="right" },
		-- Mine du lac --
		{ map="156241410", changeMap="149" },
		{ map="133431302", gather=true, changeMap="179" },
		{ map="133431300", gather=true, changeMap="165" },
		{ map="133431298", gather=true, changeMap="432" },
		{ map="133432322", gather=true, changeMap= {"348", "116"} },
		{ map="133433346", gather=true, changeMap= {"177", "338"} },
		{ map="133433344", gather=true, changeMap="515" },
		{ map="133432320", gather=true, changeMap= {"134", "351"} },
		{ map="133432578", gather=true, changeMap="423" },
		{ map="133431296", gather=true, custom = havenbagCustom },
		-- Sortie Mine du lac --
		-- Zaap Rivage Sufokien --
		{ map="10,22", changeMap="top" },
		{ map="10,21", changeMap="left" },
		{ map="9,21", changeMap="top" },
		{ map="9,20", changeMap="left" },
		{ map="8,20", changeMap="left" },
		{ map="7,20", changeMap="left" },
		{ map="6,20", changeMap="left" },
		{ map="5,20", changeMap="top" },
		-- Mine Hérale --
		{ map="88082692", changeMap="332", nextMap="left",   },
		{ map="97260033", gather=true, changeMap= {"183", "405", "466" } },
		{ map="97261059", gather=true, changeMap="417" },
		{ map="97261057", gather=true, changeMap={"421", "235", "227"} },
		{ map="97259011", gather=true, changeMap="276" },
		{ map="97255939", gather=true, changeMap="446" },
		{ map="97256963", gather=true, changeMap="492" },
		{ map="97257987", gather=true, changeMap= {"492", "212"} },
		{ map="97260035", gather=true, changeMap="288" },
		-- Sortie Mine Hérale --
		{ map="4,19", changeMap="bottom" },
		{ map="4,20", changeMap="bottom" },
		{ map="4,21", changeMap="bottom" },
		{ map="4,22", changeMap="bottom" },
		{ map="4,23", changeMap="bottom" },
		{ map="4,24", changeMap="bottom" },
		{ map="4,25", changeMap="bottom" },
		{ map="4,26", changeMap="bottom" },
		{ map="4,27", changeMap="bottom" },
		-- Mine Scarafeuille --
		{ map="88081925", changeMap={"164", "left"} },
		{ map="97255937", gather=true, changeMap= {"360", "436"} },
		{ map="97256961", gather=true, changeMap="351" },
		-- Sortie Mine Scarafeuille --
		{ map="3,28", changeMap="left" },
		{ map="2,28", changeMap="bottom" },
		{ map="2,29", changeMap="bottom" },
		{ map="2,30", changeMap="bottom" },
		{ map="2,31", changeMap="left" },
		{ map="1,31", changeMap="bottom" },
		-- Mine Porcos 1 --
		{ map="72619522", gather=true, changeMap={ "132", "left"} },
		{ map="30672658", gather=true, changeMap={"362", "477"} },
		{ map="30672655", gather=true, changeMap={"492", "221", "270"} },
		{ map="30672652", gather=true, changeMap="289" },
		{ map="30672649", gather=true, changeMap="408" },
		-- Sortie Mine Porcos 1 --
		{ map="0,32", gather=true, changeMap="bottom" },
		{ map="72619011", gather=true, changeMap="left" },
		{ map="-1,33", gather=true, changeMap={"231", "71"} },
		-- Mine Porcos 2 (entré Labyrinthe du Dragon Cochon) --
		{ map="6,32", gather=true, changeMap="464" },
		-- Sortie Mine Porcos 2 (entré Labyrinthe du Dragon Cochon) --
		-- Mine Porco 3 --
		{ map="30671116", gather=true, changeMap="292" },
		{ map="30671110", gather=true, changeMap="479" },
		{ map="30671107", gather=true, changeMap="298" },
		{ map="30670848", gather=true, custom = havenbagCustom },
		-- Sortie Mine Porco 3 --
		-- Zaap amakna --
        { map = "-2,0", changeMap = "right" },
        { map = "-1,0", changeMap = "top" },
        { map = "-1,-1", changeMap = "right" },
        { map = "0,-1", changeMap = {"top", "right"} },
        { map = "0,-2", changeMap = {"top", "bottom"} },
        -- Mine Yjupe --
        { map = "88212250", changeMap = {"248", "top", "bottom" } },
        { map = "97255955", gather=true, changeMap = {"512", "492"} },
        { map = "97256979", gather=true, changeMap = {"248", "297"} },
        { map = "97258003", gather=true, changeMap = {"228", "479"} },
        { map = "97259027", gather=true, changeMap = {"194", "267", "515"} },
        { map = "97260051", gather=true, changeMap = "423" },
        { map = "97261075", gather=true, changeMap = "498" },
        -- Sortie mine Yjupe --
        { map = "0,-4", changeMap = {"top", "bottom"} },
        { map = "0,-5", changeMap = {"left", "bottom" } },
        { map = "-1,-5", changeMap = {"left", "right" } },
        { map = "185862148", changeMap = {"367", "right"} },
        -- Mine Astirite --
        { map = "97255951", changeMap = {"203", "361"} },
        { map = "97256975", gather=true, changeMap = {"323", "497"} },
        { map = "97257999", gather=true, changeMap = {"247", "268", "403"} },
        { map = "97259023", gather=true, changeMap = "451" },
        { map = "97260047", gather=true, changeMap = "432" },
        -- Sortie Mine Astirite --
        { map = "1,-1", changeMap = "bottom" },
        { map = "1,0", changeMap = "bottom" },
        { map = "1,1", changeMap = "bottom" },
        { map = "1,2", changeMap = "bottom" },
        { map = "1,3", changeMap = "bottom" },
        { map = "1,4", changeMap = "left" },
        { map = "0,4", changeMap = "left" },
        { map = "-1,4", changeMap = "left" },
        -- Mine Auderie --
        { map = "88213267", changeMap = "236" },
        { map = "97255949", gather=true, changeMap = "376" },
        { map = "97256973", gather=true, changeMap = {"122", "537"} },
        { map = "97257997", gather=true, changeMap = {"235", "451"} },
        { map = "97259021", gather=true, changeMap = "323" },
        { map = "97260045", gather=true, changeMap = {"254", "291"} },
        { map = "97261069", gather=true, custom = havenbagCustom }
        -- Sortie Mine Auderie --
}

function GatherFight()
    for index, actualMap in pairs(mapsWithChangeMap) do
        if (map:onMap(actualMap.map)) then
            if actualMap.gather and actualMap.fight then
                return "both"
            elseif actualMap.gather then
                return "gather"
            elseif actualMap.fight then
                return "fight"
            end
            return "changeMap"
        end
    end
    return false
end

function bank()
	banque = true;
	if map:currentPos() == "0,0" then -- Havre-Sac
        return {
            { map = map:currentPos(), changeMap="zaap(110,190,191105026)"},
            }
    elseif map:currentMapId() == 191105026 then
        return {
            { map = map:currentPos(), changeMap="left" },
            }
    elseif map:currentMapId() == 191104002 then
        return {
            { map = map:currentPos(), changeMap="288" },
            }
    elseif map:currentMapId() == 192415750 then
        return {
            { map = map:currentPos(), npcBank = true, custom = havenbagCustom },
            }
    
    -- Mines Bwork --
    elseif map:currentMapId() == 104858121 then
        return {{ map = map:currentPos(), changeMap="507" }}
    elseif map:currentMapId() == 104859145 then
        return {{ map = map:currentPos(), changeMap="457" }}
    elseif map:currentMapId() == 104861193 then
        return {{ map = map:currentPos(), changeMap="454" }}
    elseif map:currentMapId() == 104862217 then
        return {{ map = map:currentPos(), changeMap="369" }}
    elseif map:currentMapId() == 104860169 then
        return {{ map = map:currentPos(), changeMap="379" }}
    elseif map:currentMapId() == 104859139 then
        return {{ map = map:currentPos(), changeMap="444" }}
    elseif map:currentMapId() == 104860165 then
        return {{ map = map:currentPos(), changeMap="444" }}
    elseif map:currentMapId() == 104858119 then
        return {{ map = map:currentPos(), changeMap="207" }}
    elseif map:currentMapId() == 104862213 then
        return {{ map = map:currentPos(), changeMap="233" }}
    elseif map:currentMapId() == 104861189 then
        return {{ map = map:currentPos(), changeMap="458" }}
    elseif map:currentMapId() == 104859143 then
        return {{ map = map:currentPos(), changeMap="543" }}
    elseif map:currentMapId() == 104860167 then
        return {{ map = map:currentPos(), changeMap="478" }}
    elseif map:currentMapId() == 104861191 then
        return {{ map = map:currentPos(), changeMap="457" }}
    elseif map:currentMapId() == 104862215 then
        return {{ map = map:currentPos(), changeMap="472" }}
    else
        return
            {
            	{ map = map:currentPos(), custom = havenbagCustom }
            }
    end
end

function processMap()
	for index, actualMap in pairs(mapsWithChangeMap) do
		if (map:onMap(actualMap.map)) then
			if (type(actualMap.changeMap) == "table") then
				if (not actualMap.toggle) then
					actualMap.toggle = {}
					for i = 1, #(actualMap.changeMap) do
						table.insert(actualMap.toggle, false)
					end
				else
					toggleTemp = false
					for i = 1, #(actualMap.toggle) do
						toggleTemp = actualMap.toggle[i]
					end
					if (toggleTemp) then
						for i = 1, #(actualMap.toggle) do
							actualMap.toggle[i] = false
						end
					end
				end
				for i, action in pairs(actualMap.changeMap) do
					if (not actualMap.toggle[i]) then
						if (type(action) == "string") then
							actualMap.toggle[i] = true
							return map:changeMap(action)
						elseif (type(action) == "number") then
							actualMap.toggle[i] = true
							return map:door(action)
						elseif (type(action) == "function") then
							actualMap.toggle[i] = true
							return action()
						end
					end
				end
			else
				if (actualMap.changeMap) then
					return map:changeMap(actualMap.changeMap)
				elseif (actualMap.door) then
					if (type(actualMap.door) == "string") then
						return map:door(tonumber(actualMap.door))
					elseif (type(actualMap.door) == "number") then
						return map:door(actualMap.door)
					end
				elseif (actualMap.custom) then
					return actualMap.custom()
				end
			end
		end
	end
end

function fun()
    global:clickPosition(515,248)
end