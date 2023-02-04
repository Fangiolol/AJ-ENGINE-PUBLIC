function onEvent(name, value1, value2)
	if name == "CharacterMoveX" then
    doTweenX(dadTweenX, 'dad', value1, value2, 'QuartInOut')
  end
end