-- IF YOU DONT SEE THE MESSEGE INGAME THAT MEANS THE THE SONG NAME IS NOT REAL JUST CHECK THE .JSON FILE AND SEE WHAT IT NAME IS REALY IS
-- btw to change the font it has to be in the source code its in assets/shared/fonts :(
function onCreate()
-- For testing purposes The image is just one color but you can change it to be an image but then you need to mess with the x and y and more stuff
    makeLuaText("Maker", '', 0, 25, 25)
    makeLuaText("Charter", "man", 0, 25, 75)
    setTextSize("Maker", 27)
    setTextFont("Maker", "vcr.ttf");
    setTextSize("Charter", 25)
    setTextFont("Charter", "vcr.ttf");
    makeLuaSprite("Disk", "other/disk", 325, 0)
    scaleObject('Disk', 0.4, 0.4);
    makeLuaSprite('Image', 0, 0)
    makeGraphic('Image', 400, 150, 'FF6ECC') --azul 00A6FF
    makeLuaSprite('Image2', 0, 0)
    makeGraphic('Image2', 400, 150, '000000')

    setProperty('Maker.y', 330);
    setProperty('Charter.y', 370); --este va 50 mas 
    setProperty('Disk.y', 364);
    setProperty('Image.y', 300);
    setProperty('Image2.y', 290);
-- Put the camera they will be in
    setObjectCamera("Maker", "other")
    setObjectCamera("Charter", "other")
    setObjectCamera('Disk', 'other')
    setObjectCamera('Image2', 'other')
    setObjectCamera('Image', 'other')
-- order of that they will be displayed in
    setObjectOrder('Maker', 4)
    setObjectOrder('Charter', 4)
    setObjectOrder('Disk', 3)
    setObjectOrder('Image2', 2)
    setObjectOrder('Image', 1)
-- Mix The stuff togheter
    addLuaSprite("Disk")
    addLuaText("Maker")
    addLuaText("Charter")
    addLuaSprite("Image")
    addLuaSprite("Image2")
-- Go out when the song starts just to come back when it starts. use your brain to caculate where they will go
-- so if the bg or here "Image" x is going to -500 and the text x is in 50 so you do -500+25 and thats -475 you do that so you wouldnt have delay belive me in the first version they were all going to -500
    doTweenX("Slideoutstart1", "Image", -480, 0.1, linear)
    doTweenX("Slideoutstart2", "Image2", -500, 0.1, linear)
    doTweenX("Slideoutstart3", "Maker", -475, 0.1, linear)
    doTweenX("Slideoutstart4", "Charter", -475, 0.1, linear)
    doTweenX("Slideoutstart5", "Disk", -175, 0.1, linear)

    setTextString("Maker", 'Now Playing  :  ' ..songName)
    setTextString("Charter", "By: Unknuowk")
end
function onSongStart()
        if songName == "Blammed-Remix" then
            SongCharter = "DuPlex"
        end
        setTextString("Charter", "By: " .. SongCharter)
    end
function onStepHit()
-- Make it slide in and out
    if curStep == 3 then
        doTweenX("ImageTweenX", "Image", -20, 2.6, 'expoOut')
        doTweenX("Image2TweenX", "Image2", 0, 3.1, 'expoOut')
        doTweenX("SlideIn3", "Maker", 25, 2.6, 'expoOut')
        doTweenX("SlideIn4", "Charter", 25, 2.6, 'expoOut')
        doTweenX("SlideIn5", "Disk", 325, 3.1, 'expoOut')
        doTweenAngle("Spin", "Disk", 2000, 10, 'expoOut')
    end
    if curStep == 60 then
        doTweenX("ImageTweenX", "Image", -500, 2.9, 'expoIn')
        doTweenX("Image2TweenX", "Image2", -500, 2.6, 'expoIn')
        doTweenX("SlideOut3", "Maker", -475, 2.6, 'expoIn')
        doTweenX("SlideOut4", "Charter", -475, 2.6, 'expoIn')
        doTweenX("SlideOut5", "Disk", -175, 2.6, 'expoIn')
    end
end

function onTweenComplete(tag)
    if tag == "Spin" then
        removeLuaSprite("Image")
        removeLuaSprite("Image2")
        removeLuaSprite("Maker")
        removeLuaSprite("Charter")
        removeLuaSprite("Disk")
    end
end

-- made by ramatia_yes@ adn ryan_sdjr :3