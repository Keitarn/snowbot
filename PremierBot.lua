AUTO_DELETE = {}
GATHER = {}
MIN_MONSTERS = 1
MAX_MONSTERS = 8


function move()
    return {
        -- Les déplacements, récoltes, combats
    }
end

function bank()
    return {
		{map = map:currentMap(), chat:sendGuildMessage("yo")},
		{map = map:currentMap(), path = "bottom"},
    }
end

function phenix()
    return {
        -- La chemin vers le phenix si le personnage est mort
    }
end