--colors
phillyLightsColors = {'0xFF31A2FD', '0xFF31FD8C', '0xFFFB33F5', '0xFFFD4531', '0xFFFBA633'} --{'0xFFFFFFFF'}

--some options
windowBG = true		--if true forces the windows from the philly stage into any other stage (looks cool)
noBlackBG = false		--if true disables the black background that appears with the event (looks weird with background windows)
noGradient = false	--if true disables the gradient (particles stay)


--variables
local curLightEvent = 1

local gradientOrY = 0
local gradientOrH = 0
local gradientIntendedA = 1

local particles = {}

local active = false

function onCreate()

	makeLuaSprite('phillyGlowBlack', '', screenWidth * -0.5, screenHeight * -0.5)
	makeGraphic('phillyGlowBlack', screenWidth * 4, screenHeight * 4, '000000')
	setProperty('phillyGlowBlack.visible', false)
	addLuaSprite('phillyGlowBlack')
	setProperty('phillyGlowBlack.alpha', 0.4 )
	
	makeLuaSprite('phillyGlowGradient', 'philly/gradient', -800, 225)
	setGraphicSize('phillyGlowGradient', 6000 , 400)
	setScrollFactor('phillyGlowGradient', 0.75, 0.75)
	updateHitbox('phillyGlowGradient')
	setProperty('phillyGlowGradient.visible', false)
	addLuaSprite('phillyGlowGradient')

	if getPropertyFromClass('ClientPrefs', 'flashing') == false then
		gradientIntendedA = 0.7
	end
	
	
	--gradient offsets (add your offsets here if the event looks weird)
	local curStage = getPropertyFromClass('PlayState', 'curStage')
	
	if curStage == 'limo' then
		setProperty('phillyGlowGradient.y', getProperty('phillyGlowGradient.y') + 200)
	end
	
	if curStage == 'customstagehere' then
		setProperty('phillyGlowGradient.y', getProperty('phillyGlowGradient.y') + 0)
	end
	
	gradientOrY = getProperty('phillyGlowGradient.y')
	gradientOrH = getProperty('phillyGlowGradient.height')
	
	
	--for philly stage (background windows)
	makeLuaSprite('phillyWindowEvent', 'philly2/ven',  -100, -162)
	setProperty('phillyWindowEvent.scale.x', 0.65)
	setProperty('phillyWindowEvent.scale.y', 0.65)
	setScrollFactor('phillyWindowEvent', 0.3, 0.3)
	updateHitbox('phillyWindowEvent')
	setProperty('phillyWindowEvent.visible', false)
	addLuaSprite('phillyWindowEvent')

end

function makePhillyParticle(x, y, color)

	local obj = 'phillyParticle'..(#particles + 1)
	
	makeLuaSprite(obj, 'philly/particle', x, y + 300)
	setProperty(obj..'.color', getColorFromHex(color)) --color
	addLuaSprite(obj)
	
	setObjectOrder(obj, getObjectOrder('phillyGlowGradient') + 1)
	
	local orScale = getRandomFloat(0.75, 1)
	setProperty(obj..'.scale.x', orScale)
	setProperty(obj..'.scale.y', orScale)
	
	setScrollFactor(obj, getRandomFloat(0.3, 0.75), getRandomFloat(0.65, 0.75))
	setProperty(obj..'.velocity.x', getRandomFloat(-40, 40))
	setProperty(obj..'.velocity.y', getRandomFloat(-175, -250))
	setProperty(obj..'.acceleration.x', getRandomFloat(-10, 10))
	setProperty(obj..'.acceleration.y', 25)

	particles[#particles + 1] = {name = obj, lifeTime = getRandomFloat(0.6, 0.9), decay = getRandomFloat(0.8, 1), scale = orScale}
	
	if getPropertyFromClass('ClientPrefs', 'flashing') == false then
		particles[#particles].decay = particles[#particles].decay * 0.5
		setProperty(obj..'.alpha', 0.5)
	end
	
end

function onUpdate(elapsed)

	if active then

		--gradient height
		local newHeight = math.ceil(getProperty('phillyGlowGradient.height') - 1000 * elapsed)
		if newHeight > 0 then
			setProperty('phillyGlowGradient.alpha', gradientIntendedA)
			setGraphicSize('phillyGlowGradient', 6000, newHeight)
			updateHitbox('phillyGlowGradient')
			setProperty('phillyGlowGradient.y', gradientOrY + (gradientOrH - getProperty('phillyGlowGradient.height')) + 300)
		else
			setProperty('phillyGlowGradient.alpha', 0)
			setProperty('phillyGlowGradient.y', -7000)
		end
		
		--particle stuff
		for i, j in pairs(particles) do
		
			if luaSpriteExists(particles[i].name) then
			
				particles[i].lifeTime = particles[i].lifeTime - elapsed
				
				if particles[i].lifeTime <= 0 then
				
					particles[i].lifeTime = 0
					setProperty(particles[i].name..'.alpha', getProperty(particles[i].name..'.alpha') - (particles[i].decay * elapsed))
					
					if getProperty(particles[i].name..'.alpha') > 0 then
						setProperty(particles[i].name..'.scale.x', particles[i].scale * getProperty(particles[i].name..'.alpha'))
						setProperty(particles[i].name..'.scale.y', particles[i].scale * getProperty(particles[i].name..'.alpha'))
					end
					
				end
				
				--remove the particle
				if getProperty(particles[i].name..'.alpha') <= 0 then
					removeLuaSprite(particles[i].name, true)
					particles[i] = nil
				end
				
			end
			
		end
	
	end

end

function onEvent(tag, value1, value2)
	
	if tag == 'Philly Glow CWB' then
	
		local lightId = tonumber(value1)
		if lightId == nil then lightId = 0 end
		
		local chars = {'boyfriend', 'gf', 'dad'} --{'phillyGlowGradient'}
		
		if lightId == 0 then
			
			if active then
			
				cameraFlash('camGame', 'FFFFFF', 0.15)
				
				if getPropertyFromClass('ClientPrefs', 'camZooms') then
					setPropertyFromClass('flixel.FlxG', 'camera.zoom', getPropertyFromClass('flixel.FlxG', 'camera.zoom') + 0.5)
					setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.1)
				end
				
				setProperty('phillyGlowBlack.visible', false)
				setProperty('phillyGlowGradient.visible', false)
				setProperty('phillyWindowEvent.visible', false)
				
				for i, j in pairs(particles) do
		
					if luaSpriteExists(particles[i].name) then
						removeLuaSprite(particles[i].name, true)
					end
					
				end
				
				particles = {}
				
				for i = 1, #chars do
					setProperty(chars[i]..'.color', getColorFromHex('FFFFFF'))
					setPropertyFromGroup('playerStrums', i, 'color', getColorFromHex('ffffff'))
					setPropertyFromGroup('opponentStrums', i, 'color', getColorFromHex('ffffff'))
					setPropertyFromGroup('opponentStrums', direct, 'color', getColorFromHex('ffffff'))
					setPropertyFromGroup('playerStrums', direct, 'color', getColorFromHex('ffffff'))
					setProperty('timeBar.color', getColorFromHex("FFFFFFFF"))
					setProperty('nps.color', getColorFromHex('ffffff'))
					setProperty('accuracy.color', getColorFromHex('ffffff'))
					setProperty('misses.color', getColorFromHex('ffffff'))
					setProperty('score2.color', getColorFromHex('ffffff'))
					setProperty('timer2.color', getColorFromHex('ffffff'))
					setProperty('timer.color', getColorFromHex('ffffff'))
					setProperty('timerIcon.color', getColorFromHex('ffffff'))
					setProperty('healthbar_p1.color', getColorFromHex('ffffff'))
				    setProperty('healthbar_p2.color', getColorFromHex('ffffff'))
					setProperty('iconP1.color', getColorFromHex('ffffff'))
				    setProperty('iconP2.color', getColorFromHex('ffffff'))
					setProperty('scoreTxtLua.color', getColorFromHex('ffffff'))
				end
				
				active = false
				
			end
			
		end
		
		if lightId == 1 then
		
			curLightEvent = getRandomInt(1, #phillyLightsColors, tostring(curLightEvent))
			local color = phillyLightsColors[curLightEvent]
			
			if active == false then
			
				cameraFlash('camGame', 'FFFFFF', 0.15)
				
				if getPropertyFromClass('ClientPrefs', 'camZooms') then
					setPropertyFromClass('flixel.FlxG', 'camera.zoom', getPropertyFromClass('flixel.FlxG', 'camera.zoom') + 0.5)
					setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.1)
				end
					setProperty('phillyGlowBlack.visible', true)
					setProperty('phillyGlowGradient.visible', true)
					setProperty('phillyWindowEvent.visible', true)
			
				active = true
			
			end
			
			for i = 1, #chars do
				setProperty(chars[i]..'.color', getColorFromHex(color))
				setPropertyFromGroup('playerStrums', i, 'color', getColorFromHex(color))
				setPropertyFromGroup('playerStrums', direct, 'color', getColorFromHex(color))
				setPropertyFromGroup('opponentStrums', i, 'color', getColorFromHex(color))
				setPropertyFromGroup('opponentStrums', direct, 'color', getColorFromHex(color))
				setProperty('timeBar.color', getColorFromHex(color))
				setProperty('nps.color', getColorFromHex(color))
				setProperty('accuracy.color', getColorFromHex(color))
				setProperty('misses.color', getColorFromHex(color))
				setProperty('score2.color', getColorFromHex(color))
				setProperty('misses.color', getColorFromHex(color))
				setProperty('timer2.color', getColorFromHex(color))
				setProperty('timer.color', getColorFromHex(color))
				setProperty('timerIcon.color', getColorFromHex(color))
				setProperty('healthbar_p1.color', getColorFromHex(color))
				setProperty('healthbar_p2.color', getColorFromHex(color))
				setProperty('iconP1.color', getColorFromHex(color))
				setProperty('iconP2.color', getColorFromHex(color))
				setProperty('scoreTxtLua.color', getColorFromHex(color))
			end

			setProperty('phillyGlowGradient.color', getColorFromHex(color))
			setProperty('phillyWindowEvent.color', getColorFromHex(color))
			
			for i, j in pairs(particles) do

				if luaSpriteExists(particles[i].name) then
					setProperty(particles[i].name..'.color', getColorFromHex(color))
				end
				
			end
			
		end
		
		if lightId == 2 then
		
			if active then
		
				if getPropertyFromClass('ClientPrefs', 'lowQuality') == false then
				
					--spawn particles
					local particlesNum = getRandomInt(8, 12)
					local width = (2000 / particlesNum)
					local color = phillyLightsColors[curLightEvent]
					
					for j = 0, 3 do
						
						for i = 0, particlesNum do
							makePhillyParticle(-400 + width * i * 2 + getRandomFloat(-width / 5, width / 5), gradientOrY + 200 + (getRandomFloat(0, 125) + j * 40), color)
						end
						
					end
					
				end
				
				gradientBop()
			
			end
			
		end
	
	end
	
end

function gradientBop()
	setGraphicSize('phillyGlowGradient', 6000, gradientOrH)
	updateHitbox('phillyGlowGradient')
	setProperty('phillyGlowGradient.alpha', gradientIntendedA)
	setProperty('phillyGlowGradient.y', gradientOrY + 300)
end