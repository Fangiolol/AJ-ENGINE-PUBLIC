function onCreate()
	-- background shit
	makeLuaSprite('back', 'stages/hdsenpai/schoolBgEvil', -550, -385);
	setLuaSpriteScrollFactor('back', 1, 1);
	scaleObject('back', 1, 1);
	addLuaSprite('back', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end