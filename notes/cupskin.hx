enableRating = true;

// enableMiss(true);

var noteShit;

function create() {
    note.frames = Paths.getSparrowAtlas("cup/images/NOTE_cup");

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "purple alone");
            note.animation.addByPrefix('holdend', "purple tail");
            note.animation.addByPrefix('holdpiece', "purple hold");
            note.splashColor = 0xFFC24B99;
        case 1:
            note.animation.addByPrefix('scroll', "blue alone");
            note.animation.addByPrefix('holdend', "blue tail");
            note.animation.addByPrefix('holdpiece', "blue hold");
            note.splashColor = 0xFF00FFFF;
        case 2:
            note.animation.addByPrefix('scroll', "green alone");
            note.animation.addByPrefix('holdend', "green tail");
            note.animation.addByPrefix('holdpiece', "green hold");
            note.splashColor = 0xFF12FA05;
        case 3:
            note.animation.addByPrefix('scroll', "red alone");
            note.animation.addByPrefix('holdend', "red tail");
            note.animation.addByPrefix('holdpiece', "red hold");
            note.splashColor = 0xFFF9393F;
    }

    note.setGraphicSize(Std.int(note.width * 0.7));
    note.updateHitbox();
    note.antialiasing = true;

    note.animation.play("scroll");
    if (note.isSustainNote) {
        if (note.prevNote != null)
            if (note.prevNote.animation.curAnim.name == "holdend")
                note.prevNote.animation.play("holdpiece");
        note.animation.play("holdend");
    }

    noteShit = note;
}

function update(elapsed) {
    calculateNote();
}

function generateStaticArrow(babyArrow:FlxSprite, i:Int) {
    babyArrow.frames = Paths.getSparrowAtlas("cup/images/NOTE_cup");

    babyArrow.colored = false;

    babyArrow.animation.addByPrefix('green', 'arrowUP');
    babyArrow.animation.addByPrefix('blue', 'arrowDOWN');
    babyArrow.animation.addByPrefix('purple', 'arrowLEFT0');
    babyArrow.animation.addByPrefix('red', 'arrowRIGHT0');

    babyArrow.antialiasing = true;
    babyArrow.setGraphicSize(Std.int(babyArrow.width * 0.7));
    
    var noteNumberScheme:Array<NoteDirection> = Note.noteNumberSchemes[PlayState.song.keyNumber];
    if (noteNumberScheme == null) noteNumberScheme = Note.noteNumberSchemes[4];
    switch (noteNumberScheme[i % noteNumberScheme.length])
    {
        case 0:
            babyArrow.animation.addByPrefix('static', 'arrowLEFT0');
            babyArrow.animation.addByPrefix('pressed', 'left press', 24, false);
            babyArrow.animation.addByPrefix('confirm', 'left confirm', 24, false);
        case 1:
            babyArrow.animation.addByPrefix('static', 'arrowDOWN');
            babyArrow.animation.addByPrefix('pressed', 'down press', 24, false);
            babyArrow.animation.addByPrefix('confirm', 'down confirm', 24, false);
        case 2:
            babyArrow.animation.addByPrefix('static', 'arrowUP');
            babyArrow.animation.addByPrefix('pressed', 'up press', 24, false);
            babyArrow.animation.addByPrefix('confirm', 'up confirm', 24, false);
        case 3:
            babyArrow.animation.addByPrefix('static', 'arrowRIGHT0');
            babyArrow.animation.addByPrefix('pressed', 'right press', 24, false);
            babyArrow.animation.addByPrefix('confirm', 'right confirm', 24, false);
    }
}