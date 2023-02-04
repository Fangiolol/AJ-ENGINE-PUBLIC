function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'DodgeNote' then
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

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'DodgeNote' then
	    characterPlayAnim('boyfriend', "dodge", true);
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'DodgeNote' then
		characterPlayAnim('boyfriend', 'hurt', true);
	end
end