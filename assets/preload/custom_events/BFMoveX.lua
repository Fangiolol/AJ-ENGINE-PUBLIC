function onEvent(name, value1, value2)
            x = getProperty('boyfriend.x');
            y = getProperty('boyfriend.y');
    if name == "BFMoveX" then
    doTweenX("x", 'boyfriend', value1, value2, 'QuartInOut')
  end
end