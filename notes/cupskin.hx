enableRating = true;

// enableMiss(true);

function create() {
    note.frames = Paths.getSparrowAtlas("cup/images/NOTE_cup");

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "purple alone");
            note.animation.addByPrefix('holdend', "purple tail");
            note.animation.addByPrefix('holdpiece', "purple hold");
        case 1:
            note.animation.addByPrefix('scroll', "blue alone");
            note.animation.addByPrefix('holdend', "blue tail");
            note.animation.addByPrefix('holdpiece', "blue hold");
        case 2:
            note.animation.addByPrefix('scroll', "green alone");
            note.animation.addByPrefix('holdend', "green tail");
            note.animation.addByPrefix('holdpiece', "green hold");
        case 3:
            note.animation.addByPrefix('scroll', "red alone");
            note.animation.addByPrefix('holdend', "red tail");
            note.animation.addByPrefix('holdpiece', "red hold");
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
}

function update(elapsed) {
    calculateNote();
}