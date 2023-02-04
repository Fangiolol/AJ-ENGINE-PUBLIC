




--however off you want the time to be (in milliseconds)
timeOffset = -190000
-- 1200000 is 20:00

--song step you want the time to ruturn back to normal
returnStep = 127
-- if the time is less than 0:00 then it will automaticaly go back














--trolmongus made this time thing
function formatTime(millisecond)
    local seconds = math.floor(millisecond / 1000)

    return string.format("%01d:%02d", (seconds / 60) % 60, seconds % 60)  
end
--check him out (not that way, I know what your thinking)



restoreTime = false
orignalTime = false



function onUpdatePost(elapsed)
    if restoreTime == true then
        if timeOffset < 0 then
            timeOffset = timeOffset+1000
        else
            timeOffset = timeOffset-1000
        end
    end
    --setTextString('timeTxt', formatTime(getSongPosition()+1200000 - noteOffset) .. ' / ' .. formatTime(songLength+1200000))
    if orignalTime == true then
        setTextString('timer', formatTime((songLength)-getSongPosition()))
    else
        --if (songLength+timeOffset)-getSongPosition() < 0 then
        --    setTextString('timeTxt', formatTime(0))
        --else
            setTextString('timer', formatTime((songLength+timeOffset)-getSongPosition()))
        --end
    end
    if (songLength+timeOffset)-getSongPosition() == (songLength)-getSongPosition() then
        restoreTime = false
        orignalTime = true
    end
    if curStep == returnStep or (songLength+timeOffset)-getSongPosition() < 1 then
        restoreTime = true
    end
end