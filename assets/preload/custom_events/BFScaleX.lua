function onEvent(name, value1, value2)
	if name == "BFScaleX" then
		local scalexlol = getProperty('boyfriend.scale.x');
		setProperty('boyfriend.scale.x', value1);
		--doTweenX("scalexlol", 'boyfriend', value1, value2, 'QuartInOut')
	end
end