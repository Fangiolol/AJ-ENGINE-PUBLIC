function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'ShootNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/SHOOTNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.25');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.25');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'ShootNote' then
	    characterPlayAnim('dad', "shoot", true);
		cameraShake('camGame', 0.01, 0.03);
		playSound('shoot', 0.9);
	end
end