function onCreate() 
	
	
makeLuaSprite('back','blanco',-650, -300)
addLuaSprite('back',false)
scaleObject('back', 4.0, 4.0);

makeAnimatedLuaSprite('bgg','The_void_agotimad',-650, -300)
setLuaSpriteScrollFactor('bgg', 1, 0.95);
addAnimationByPrefix('bgg','The_void_agotimad','VoidShift',24,true);
addLuaSprite('bgg',false)
scaleObject('bgg', 2.45, 2.45);


makeAnimatedLuaSprite('Pillar','Pillar_BG_Stage',-700,-750)
setLuaSpriteScrollFactor('Pillar', 1, 0.95);
addAnimationByPrefix('Pillar','Pillar_BG_Stage','Pillar_BG_Stage',24,true);
addLuaSprite('Pillar',false)



makeAnimatedLuaSprite('Front','LoudSpeaker_Moving',-700, 500)
setLuaSpriteScrollFactor('Front', 1, 0.95);
addAnimationByPrefix('Front','LoudSpeaker_Moving','StereoMoving',24,true);
addLuaSprite('Front',false)

   makeAnimatedLuaSprite('Gf', 'Gf_neo_crazy', 400,-400);
   addAnimationByPrefix('Gf', 'bop', 'Gf_Sad', 24, true);
   objectPlayAnimation('Gf', 'bop');
   addLuaSprite('Gf', false);
   

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
