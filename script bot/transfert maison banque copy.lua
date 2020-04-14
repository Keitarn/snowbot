-- BABZ --
-----------------------------

--- Paramètres ---

GATHER = {}
OPEN_BAGS = true
AUTO_DELETE = false

MAX_MONSTERS = 1
MIN_MONSTERS = 1

FORBIDDEN_MONSTERS = {}
FORCE_MONSTERS = {}
	
function move()
	return {
			{map = "147254", door = "383"}, --Exterieur banque Bonta vers interieur--
			{map = "2885641", path = "424", custom = plein}, --banque bonta--
			{map = "2883856", path = "440"},
			{map = "147256", path = "bottom"}, -- exterieur maison --
			{map = "-31,-55", path = "bottom"},
		}
		end
function bank()
	return {
			{map = "2885641", path = "424"}, -- sortie banque --
			{map = "147254", path = "top"}, -- exterieur banque --
			{map = "-31,-55", path = "top"},
			{map = "147256", lockedhouse = "88|-1|kisachi"},
			{map = "2883856", lockedstorage = "298|-1", custom = vide , path = "440" },
		}
		end	
		
		
function phenix()
	return {
	}
end
	

function plein()
	npc:npc(100,3)
	npc:reply(-1)
	exchange:getItem(303,(inventory:podsMax()-inventory:pods())/5)
	
	global:leaveDialog()
end	

function vide()
	exchange:putItem(1,10000)
	exchange:putItem(8,10000)
	exchange:putItem(17,10000)
	exchange:putItem(24,10000)
	exchange:putItem(25,10000)
	exchange:putItem(26,10000)
	exchange:putItem(28,10000)
	exchange:putItem(29,10000)
	exchange:putItem(30,10000)
	exchange:putItem(31,10000)
	exchange:putItem(32,10000)
	exchange:putItem(33,10000)
	exchange:putItem(34,10000)
	exchange:putItem(35,10000)
	exchange:putItem(37,10000)
	exchange:putItem(38,10000)
	exchange:putItem(39,10000)
	exchange:putItem(42,10000)
	exchange:putItem(43,10000)
	exchange:putItem(44,10000)
	exchange:putItem(45,10000)
	exchange:putItem(46,10000)
	exchange:putItem(47,10000)
	exchange:putItem(52,10000)
	exchange:putItem(53,10000)
	exchange:putItem(54,10000)
	exchange:putItem(55,10000)
	exchange:putItem(61,10000)
	exchange:putItem(66,10000)
	exchange:putItem(67,10000)
	exchange:putItem(68,10000)
	exchange:putItem(98,10000)
	exchange:putItem(101,10000)
	exchange:putItem(108,10000)
	exchange:putItem(109,10000)
	exchange:putItem(110,10000)
	exchange:putItem(111,10000)
	exchange:putItem(112,10000)
	exchange:putItem(113,10000)
	exchange:putItem(114,10000)
	exchange:putItem(121,10000)
	exchange:putItem(131,10000)
	exchange:putItem(133,10000)
	exchange:putItem(134,10000)
	exchange:putItem(135,10000)
	exchange:putItem(254,10000)
	exchange:putItem(255,10000)
	exchange:putItem(256,10000)
	exchange:putItem(257,10000)
	exchange:putItem(258,10000)
	exchange:putItem(259,10000)
	exchange:putItem(260,10000)
	exchange:putItem(261,10000)
end
	--exchange:getItem(303,(math.mod(inventory:podsMax()-inventory:pods(),5)))