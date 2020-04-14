-- */ Base script for FlatyBot \*

-- MIN_MONSTERS = 1
-- MAX_MONSTERS = 8
-- MIN_MONSTERS_LEVEL = 1
-- MAX_MONSTERS_LEVEL = 1000

-- FORBIDDEN_MONSTERS = {}

-- MANDATORY_MONSTERS = {}

-- MAX_PODS = 90

-- ELEMENTS_TO_GATHER = {}

-- AUTO_DELETE = {}

local ZoneToFarm =  "Plaine des Porkass"

-- ====================================================

local Directions = {
	left = "left",
	top = "top",
	right = "right",
	bottom = "bottom",
}
local G_countFights = 0
local G_dir
local A1, A2 = 727595, 798405  -- 5^17=D20*A1+A2
local D20, D40 = 1048576, 1099511627776  -- 2^20, 2^40
local X1, X2 = 0, 1

function Rand()
	-- global:printMessage('Rand()')
    local U = X2*A2
    local V = (X1*A2 + X2*A1) % D20
    V = (V*D20 + U) % D40
    X1 = math.floor(V/D20)
    X2 = V - X1*D20
    return V/D40
end

function GetOppositeDirection(dir)
	-- global:printMessage('GetOppositeDirection()')
	if dir == Directions.left then
		return Directions.right
	elseif dir == Directions.right then
		return Directions.left
	elseif dir == Directions.top then
		return Directions.bottom
	elseif dir == Directions.bottom then
		return Directions.top
	end
	return nil
end

function DisableDirection(dirArray, dir)
	-- global:printMessage('DisableDirection()')
	for i, v in ipairs(dirArray) do
		if v == dir then
			table.remove(dirArray, i)
		end
	end
end

function GetRandomDirection(dirArray)
	-- global:printMessage('GetRandomDirection()')
	local randomDir = math.floor(Rand()*#dirArray) + 1
	for i, v in ipairs(dirArray) do
		if i == randomDir then
			return v
		end
	end
end

function TryChangeMap()
	-- global:printMessage('TryChangeMap()')
	local dir
	local possibleDirections = {
		Directions.left,
		Directions.top, 
		Directions.right, 
		Directions.bottom
	}
	if G_dir ~= nil then
		DisableDirection(possibleDirections, GetOppositeDirection(G_dir))
	end
	dir = GetRandomDirection(possibleDirections)
	G_dir = dir

	while not(map:changeMap(dir)) do
		DisableDirection(possibleDirections, dir)
		dir = GetRandomDirection(possibleDirections)
		G_dir = dir
		global:delay(10000)
	end
end

function GoBack()
	-- global:printMessage('goBack()')
	local tmp
	if G_dir ~= nil then
		tmp = GetOppositeDirection(G_dir)
		G_dir = tmp
		map:changeMap(tmp)
	end
end

function TryFight()
	-- global:printMessage('retry()')
	local i = 0
	while not(fight()) do
		global:delay(2000)
		i = i + 1
		if i == 3 then
			TryChangeMap()
			return 
		end
	end
	G_countFights = G_countFights + 1
	global:printMessage('Nombre de combats : ' .. tostring(G_countFights))
end

function move()
	-- global:printMessage('move()')
	if map:subArea() == ZoneToFarm then
    	return {
			{map = map:currentMapId(), custom = TryFight},
    	}
    else
    	return {
    		{map = map:currentMapId(), custom = GoBack},
    	}
	end
	return nil
end

function bank()
    return nil
end

function phoenix()
    return nil
end

function lost()
    return nil
end