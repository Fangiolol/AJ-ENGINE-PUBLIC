function onCreatePost ()

    makeLuaText('proto', 'V0.0.2 - AJ ENGINE', 300, 0, 0)
	setProperty('proto.x', screenWidth - getProperty('proto.width'))
	setProperty('proto.y', screenHeight - getProperty('proto.height'))
	setTextSize('proto', 16)
	setTextAlignment('proto', 'right')
	addLuaText('proto')
	setTextBorder('proto', 1.75, '000000') 
	setObjectCamera('proto', 'other');

	setPropertyFromClass('lime.app.Application', 'current.window.title', "Friday Night Funkin' Egao Alpha 0.5.2 - Delete Build")
    
end