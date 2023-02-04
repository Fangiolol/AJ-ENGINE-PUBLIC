function onEvent(name, value1, value2)
	if name == "BFScaleY" then
		local scaleylol = getProperty('boyfriend.scale.y');
		setProperty('boyfriend.scale.x', value1);
		--doTweenX('scaleylol', 'boyfriend', value1, value2, 'QuartInOut')
	end
end