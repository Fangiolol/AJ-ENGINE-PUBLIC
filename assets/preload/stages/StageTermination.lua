function onCreate() 
	
	
makeLuaSprite('back','blanco',-650, -300)
addLuaSprite('back',false)
scaleObject('back', 4.0, 4.0);
setLuaSpriteScrollFactor('back', 1, 1);


makeAnimatedLuaSprite('bgg','The_void_stage',-750, -300)
setLuaSpriteScrollFactor('bgg', 1, 1);
addAnimationByPrefix('bgg','The_void_stage','VoidShift',24,true);
addLuaSprite('bgg',false)
scaleObject('bgg', 2.45, 2.45);


makeLuaSprite('Front','Void_Front_stage',-970, -600)
addLuaSprite('Front',false)

makeLuaSprite('Void','Void_Back_stage',150, -300)
addLuaSprite('Void',false)
scaleObject('Void', 0.40, 0.40);

function onUpdate(elapsed)
    end
function onUpdate(elapsed)

    if focus == 'dad' then
        -- called when the camera focus on boyfriend

        setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.sin(currentBeat) * 0.6))
    end
end
        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/60)
setCharacterY('gf',getCharacterY('gf') + (math.sin(currentBeat) * 0.3))

end

function onBeatHit( ... )--for every beat
	-- body
end

function onStepHit( ... )-- for every step
	-- body
end

function onUpdate( ... )
    -- body
end




function onBeatHit( ... )--for every beat
	-- body
end

function onStepHit( ... )-- for every step
	-- body
end

function onUpdate( ... )
    -- body
end
