function onCreate()
    
		makeLuaSprite('sky','philly2/sky', -100, 00);
		setLuaSpriteScrollFactor('sky', 0.1, 0.1);
		
		makeLuaSprite('city','philly2/city', -100, -100);
		setLuaSpriteScrollFactor('city', 0.3, 0.3);
		scaleObject('city', 1.2, 0.85);
	
		makeLuaSprite('behindTrain','philly2/behindTrain', -40, 50);
		makeLuaSprite('street','philly2/street', -40, 50);
		makeLuaSprite('train','philly2/train',  2000, 360);
        
		makeLuaSprite('blue', 'philly2/win0',-100, -100);
        setLuaSpriteScrollFactor('blue', 0.3, 0.3);		
	    scaleObject('blue',1.2, 0.85)
		
		makeLuaSprite('green', 'philly2/win1',-100, -100);
        setLuaSpriteScrollFactor('green', 0.3, 0.3);		
	    scaleObject('green',1.2, 0.85)
		makeLuaSprite('pink', 'philly2/win2',-100, -100);
        setLuaSpriteScrollFactor('pink', 0.3, 0.3);		
	    scaleObject('pink',1.2, 0.85)
		
		makeLuaSprite('red', 'philly2/win3',-100, -100);
        setLuaSpriteScrollFactor('red', 0.3, 0.3);		
	    scaleObject('red',1.2, 0.85)
	    
		makeLuaSprite('yellow', 'philly2/win4',-100, -100);
        setLuaSpriteScrollFactor('yellow', 0.3, 0.3);		
	    scaleObject('yellow',1.2, 0.85)



		--stage 2
		makeLuaSprite('fastCar', 'philly2/train2', -6600, 180)
		scaleObject('fastCar', 2, 2)

		makeLuaSprite('a','philly2/a', -100, 00);
		setProperty('a.visible', false)
		scaleObject('a',0.7, 0.7)

		makeLuaSprite('ab','philly2/ab', -100, -100);
		--setLuaSpriteScrollFactor('ab', 0.5, 0.5);
		setProperty('ab.visible', false)
		scaleObject('ab', 0.7, 0.7);

		makeLuaSprite('l1','philly2/l1', 300, -700);
		--setLuaSpriteScrollFactor('ab', 0.5, 0.5);
		setProperty('l1.visible', false)
		scaleObject('l1', 0.4, 1.5);

		makeLuaSprite('l2','philly2/l2', 50, -720);
		--setLuaSpriteScrollFactor('ab', 0.5, 0.5);
		setProperty('l2.visible', false)
		scaleObject('l2', 0.4, 1.5);

		makeLuaSprite('abc','philly2/abc', -100, -62);
		setProperty('abc.visible', false)
		scaleObject('abc',0.7, 0.7)

		makeLuaSprite('blue12', 'philly2/ven0',-2000, 0);
       -- setLuaSpriteScrollFactor('blue12', 0.5, 0.5);		
		--setProperty('blue12.x', getProperty('ab.x'))
		setProperty('blue12.y', getProperty('ab.y'))	
		scaleObject('blue12',0.7, 0.7)

		
		makeLuaSprite('green12', 'philly2/ven1',-2000, 0);
       -- setLuaSpriteScrollFactor('green12', 0.5, 0.5);		
		--setProperty('green12.x', getProperty('ab.x'))
		setProperty('green12.y', getProperty('ab.y'))
		scaleObject('green12',0.7, 0.7)	


		makeLuaSprite('pink12', 'philly2/ven2',-2000, 0);
       -- setLuaSpriteScrollFactor('pink12', 0.5, 0.5);		
		--setProperty('pink12.x', getProperty('ab.x'))
		setProperty('pink12.y', getProperty('ab.y'))	
		scaleObject('pink12',0.7, 0.7)
		
		makeLuaSprite('red12', 'philly2/ven3',-2000, 0);
      --  setLuaSpriteScrollFactor('red12', 0.5, 0.5);		
		--setProperty('red12.x', getProperty('ab.x'))
		setProperty('red12.y', getProperty('ab.y'))	
	    scaleObject('red12',0.7, 0.7)
	
		makeLuaSprite('yellow12', 'philly2/ven4',-2000, 0);
       -- setLuaSpriteScrollFactor('yellow12', 0.5, 0.5);	
		--setProperty('yellow12.x', getProperty('ab.x'))
		setProperty('yellow12.y', getProperty('ab.y'))	
		scaleObject('yellow12',0.7, 0.7)

		makeLuaSprite('abcd', 'philly2/abcd', 0, 0);
		setProperty('abcd.y', getProperty('ab.y'));
		setProperty('abcd.x', getProperty('ab.x') + 70);
		scaleObject('abcd',0.7, 0.7);


	
	addLuaSprite('sky', false);
	addLuaSprite('city', false);

	addLuaSprite('blue', false);
	addLuaSprite('green', false);
	addLuaSprite('pink', false);
	addLuaSprite('red', false);
	addLuaSprite('yellow', false);



	addLuaSprite('behindTrain', false);
	addLuaSprite('train', false);
	addLuaSprite('street', false);

	addLuaSprite('a', false);
	addLuaSprite('ab', false);
	addLuaSprite('blue12', false);
	addLuaSprite('green12', false);
	addLuaSprite('pink12', false);
	addLuaSprite('red12', false);
	addLuaSprite('yellow12', false);
	addLuaSprite('l1', false);
	addLuaSprite('l2', false);
	addLuaSprite('abc', false);
	addLuaSprite('abcd', false);
	setProperty('a.visible', false);
	setProperty('ab.visible', false);
	setProperty('l1.visible', false);
	setProperty('l2.visible', false);
	setProperty('abc.visible', false);
	setProperty('abcd.visible', false);




	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);

	setProperty('blue12.visible', false);
	setProperty('green12.visible', false);
	setProperty('pink12.visible', false);
	setProperty('red12.visible', false);
	setProperty('yellow12.visible', false);
	addLuaSprite('fastCar', true)


	runTimer('trainsound',4)
	runTimer('blueAppear',2)
	
	runTimer('carbob', 8)


end
function onTimerCompleted(t,l,ll)
	if t == 'trainsound' then
	    playSound('train_passes');
	    runTimer('trainCome',4)
	end
	if t == 'trainCome' then
		setProperty('train.x', 1150)
		doTweenX('train','train',-1150,0.4,'sineOut')
		--triggerEvent('Play Animation','hairBlow',2)
		runTimer('trainCome2',0.1)
	end
	if t == 'trainCome2' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome3',0.1)
	end
		if t == 'trainCome3' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome4',0.1)
		end
		if t == 'trainCome4' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome5',0.1)
		end
		if t == 'trainCome5' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome6',0.1)
		end
		if t == 'trainCome6' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome7',0.1)
		end
		if t == 'trainCome7' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome8',0.1)
	end
		if t == 'trainCome8' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome9',0.1)
		end
		if t == 'trainCome9' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome10',0.1)
		end
		if t == 'trainCome10' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome11',0.1)
		end
		if t == 'trainCome11' then
		setProperty('train.x', 50)
		doTweenX('train','train',-1150,0.2,'sineOut')
		runTimer('trainCome12',0.1)
		end
		if t == 'trainCome12' then
			setProperty('train.x', 50)
			doTweenX('train','train',-1150,0.2,'sineOut')
			runTimer('trainCome13',0.1)
		end
			if t == 'trainCome13' then
			setProperty('train.x', 50)
			doTweenX('train','train',-1150,0.2,'sineOut')
			runTimer('trainCome14',0.1)
			end
			if t == 'trainCome14' then
			setProperty('train.x', 50)
			doTweenX('train','train',-1150,0.2,'sineOut')
			runTimer('trainCome15',0.1)
			end
			if t == 'trainCome15' then
			setProperty('train.x', 50)
			doTweenX('train','train',-1150,0.2,'sineOut')
			runTimer('trainCome16',0.1)
			end
			if t == 'trainCome16' then
			setProperty('train.x', 50)
			doTweenX('train','train',-1150,0.2,'sineOut')
			runTimer('trainCome17',0.1)
			end
			if t == 'trainCome17' then
				setProperty('train.x', 50)
				doTweenX('train','train',-1150,0.2,'sineOut')
				runTimer('trainCome18',0.1)
			end
				if t == 'trainCome18' then
				setProperty('train.x', 50)
				doTweenX('train','train',-1150,0.2,'sineOut')
				runTimer('trainCome19',0.1)
				end
				if t == 'trainCome19' then
				setProperty('train.x', 50)
				doTweenX('train','train',-1150,0.2,'sineOut')
				runTimer('trainCome20',0.1)
				end
				if t == 'trainCome20' then
				setProperty('train.x', 50)
				doTweenX('train','train',-1150,0.2,'sineOut')
				runTimer('trainCome21',0.1)
				end
				if t == 'trainCome21' then
				setProperty('train.x', 50)
				doTweenX('train','train',-1150,0.2,'sineOut')
				runTimer('trainCome22',0.1)
				end
	if t == 'trainCome22' then
    --triggerEvent('Play Animation','hairFall',2)
	   doTweenX('train','train',-4000,0.5,'sineOut')
	   runTimer('trainRide',4)
	end

	if t == 'trainRide' then
	  setProperty('train.x', 2000)
	  runTimer('trainsound',8)
    end 

	if t == 'carbob' then
		setProperty('fastCar.x', -6600)
		playSound('carPass0', 1)
		runTimer('carbob1', 4.8)
	end

	
	if t == 'carbob1' then
		doTweenX('fastCar','fastCar', 1750 , 1.3,'sineOut')
		runTimer('carbob2',0.1)
	end
	if t == 'carbob2' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob3',0.1)
	end
	if t == 'carbob3' then
		setProperty('fastCar.x',-2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob4',0.1)
	end
	if t == 'carbob4' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob5',0.1)
	end
	if t == 'carbob5' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob6',0.1)
	end
	if t == 'carbob6' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob7',0.1)
	
	end
	if t == 'carbob7' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob8',0.1)
	end
	if t == 'carbob8' then
		setProperty('fastCar.x',-2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob9',0.1)
	end
	if t == 'carbob9' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob10',0.1)
	end
	if t == 'carbob10' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob11',0.1)
	end
	if t == 'carbob11' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob12',0.1)
	
	end
	if t == 'carbob12' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob13',0.1)
	end
	if t == 'carbob13' then
		setProperty('fastCar.x',-2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob14',0.1)
	end
	if t == 'carbob14' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob15',0.1)
	end
	if t == 'carbob15' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob16',0.1)
	end
	if t == 'carbob16' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob17',0.1)
	
	end
	if t == 'carbob17' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob18',0.1)
	end
	if t == 'carbob18' then
		setProperty('fastCar.x',-2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob19',0.1)
	end
	if t == 'carbob19' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob20',0.1)
	end
	if t == 'carbob20' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob21',0.1)
	end
	if t == 'carbob21' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob22',0.1)
	end
	if t == 'carbob22' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')

	end
	if t == 'carbob23' then
		setProperty('fastCar.x', -2000)
		doTweenX('fastCar','fastCar', 1750 , 0.4,'sineOut')
		runTimer('carbob24', 3)
	end

	if t == 'carbob24' then
	setProperty('fastCar.visible', false)
	setProperty('blue.alpha', 0)
	setProperty('green.alpha', false)
	setProperty('pink.alpha', false)
	setProperty('yellow.alpha', false)
	setProperty('red.alpha', false)

	end


	if t == 'blueAppear' then
    setProperty('blue.visible', true);
    doTweenAlpha('blueAppearEventTween', 'blue', 1, 0.3, 'linear');
    runTimer('blueFade',1.7)
    end
	if t == 'blueFade' then
    doTweenAlpha('blueFadeEventTween', 'blue', 0, 0.5, 'linear');
     runTimer('greenAppear',0.8)
end
	if t == 'greenAppear' then
    setProperty('green.visible', true);
    doTweenAlpha('greenAppearEventTween', 'green', 1, 0.3, 'linear');
    runTimer('greenFade',1.7)
    end
	if t == 'greenFade' then
    doTweenAlpha('greenFadeEventTween', 'green', 0, 0.5, 'linear');
     runTimer('pinkAppear',0.8)
end
	if t == 'pinkAppear' then
    setProperty('pink.visible', true);
    doTweenAlpha('pinkAppearEventTween', 'pink', 1, 0.3, 'linear');
    runTimer('pinkFade',1.7)
    end
	if t == 'pinkFade' then
    doTweenAlpha('pinkFadeEventTween', 'pink', 0, 0.5, 'linear');
     runTimer('redAppear',0.8)
end
	if t == 'redAppear' then
    setProperty('red.visible', true);
    doTweenAlpha('redAppearEventTween', 'red', 1, 0.3, 'linear');
    runTimer('redFade',1.7)
    end
	if t == 'redFade' then
    doTweenAlpha('redFadeEventTween', 'red', 0, 0.5, 'linear');
     runTimer('yellowAppear',0.8)
end
	if t == 'yellowAppear' then
    setProperty('yellow.visible', true);
    doTweenAlpha('yellowAppearEventTween', 'yellow', 1, 0.3, 'linear');
    runTimer('yellowFade',1.7)
    end
	if t == 'yellowFade' then
    doTweenAlpha('yellowFadeEventTween', 'yellow', 0, 0.5, 'linear');
     runTimer('blueAppear',0.8)
    end

	if t == 'spin' then
		doTweenAngle("Spinl1", "l1", 45, 8, 'expoOut')
		doTweenAngle("Spinl2", "l2", -40, 8, 'expoOut')
		 runTimer('spin2', 4)
		end
	if t == 'spin2' then
			doTweenAngle("Spinl1", "l1", -30, 8, 'expoOut')
			doTweenAngle("Spinl2", "l2", 25, 8, 'expoOut')
			 runTimer('spin', 4)
	    end

end

function onBeatHit()
	if curBeat % 4 == 0 then
		setProperty('blue12.visible', true);
		setProperty('green12.visible', false);
		setProperty('pink12.visible', false);
		setProperty('red12.visible', false);
		setProperty('yellow12.visible', false);
	end
	if curBeat % 8 == 0 then
		setProperty('blue12.visible', false);
		setProperty('green12.visible', true);
		setProperty('pink12.visible', false);
		setProperty('red12.visible', false);
		setProperty('yellow12.visible', false);
	end
	if curBeat % 12 == 0 then
		setProperty('blue12.visible', false);
		setProperty('green12.visible', false);
		setProperty('pink12.visible', true);
		setProperty('red12.visible', false);
		setProperty('yellow12.visible', false);
	end
	if curBeat % 16 == 0 then
		setProperty('blue12.visible', false);
		setProperty('green12.visible', false);
		setProperty('pink12.visible', false);
		setProperty('red12.visible', true);
		setProperty('yellow12.visible', false);
	end
	if curBeat % 20 == 0 then
		setProperty('blue12.visible', false);
		setProperty('green12.visible', false);
		setProperty('pink12.visible', false);
		setProperty('red12.visible', false);
		setProperty('yellow12.visible', true);
	end

end


function onEvent(name,value1,value2)
	if name == 'Blammed Lights' then 
    if value1 == '1' then	   
	setProperty('blue.visible', true);
	  doTweenAlpha('blueAppearEventTween', 'blue', 1, 0.1, 'linear');
	setObjectOrder('blue', 10);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end
	
   if value1 == '2' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', true);
	 doTweenAlpha('greenAppearEventTween', 'green', 1, 0.1, 'linear');
	setObjectOrder('green', 10);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end

    if value1 == '3' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', true);
	 doTweenAlpha('pinkAppearEventTween', 'pink', 1, 0.1, 'linear');
	setObjectOrder('pink', 10);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
		setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('red', 6);
	end
	    if value1 == '4' then
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', true);
	setObjectOrder('red', 10);
 doTweenAlpha('redAppearEventTween', 'red', 1, 0.1, 'linear');
	setProperty('yellow.visible', false);
		setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);

	end
	if value1 == '5' then
		   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', true);
 doTweenAlpha('yellowAppearEventTween', 'yellow', 1, 0.1, 'linear');
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 10);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	end
	if value1 == '0' then   
	setProperty('blue.visible', false);
	setProperty('green.visible', false);
	setProperty('pink.visible', false);
	setProperty('red.visible', false);
	setProperty('yellow.visible', false);
	setObjectOrder('blue', 3);
	setObjectOrder('yellow', 7);
	setObjectOrder('green', 4);
	setObjectOrder('pink', 5);
	setObjectOrder('red', 6);
	setObjectOrder('behindTrain', 8);
	setObjectOrder('train', 9);
	setObjectOrder('street', 10);
	end
	end
		if name == 'Play Animation' then 
		
		if value1 == '10' then
		 characterPlayAnim('gf', 'hairBlow', true);     
		end
		if value1 == '11' then
		 characterPlayAnim('gf', 'hairFall', false);     
		end
	end
	if name == 'Change Character' then 
		if value1 == '1' then

		setProperty('a.visible',true);
		setProperty('ab.visible',true);
		setProperty('abc.visible',true);
		setProperty('l1.visible', true);
		setProperty('l2.visible', true);
		setProperty('abcd.visible', true);
		setProperty('blue.x', -2000)
		setProperty('green.x', -2000);
		setProperty('pink.x', -2000);
		setProperty('red.x', -2000);
		setProperty('yellow.x', -2000);
		setProperty('sky.visible', false);
		setProperty('city.visible', false);
		setProperty('behindTrain.visible', false);
		setProperty('train.visible', false);
		setProperty('street.visible', false);

		setProperty('blue12.x', getProperty('ab.x'))
		setProperty('yellow12.x', getProperty('ab.x'))
		setProperty('red12.x', getProperty('ab.x'))
		setProperty('green12.x', getProperty('ab.x'))
		setProperty('pink12.x', getProperty('ab.x'))

		runTimer('spin', 1)

		
		close(true);
	end
	end
end

--haste mas facil porfavor 
	
