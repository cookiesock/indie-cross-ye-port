enableRating = true;

function create() {
    note.frames = Paths.getSparrowAtlas("cup/notes/NOTE_parry");
    note.colored = false;
    switch(note.noteDirection) {
        case 0:
            note.animation.addByPrefix("scroll", "LEf alone");
        case 1:
            note.animation.addByPrefix("scroll", "OO alone");
        case 2:
            note.animation.addByPrefix("scroll", "Pink note alone");
        case 3:
            note.animation.addByPrefix("scroll", "EF alone");
    }
    note.splashColor = 0xFFFF24ED;
    
    note.scale.set(0.7, 0.7);
    note.updateHitbox();
}

function onPlayerHit(direction:Int) {
    FlxG.sound.play(Paths.file("images/cup/sounds/parry.ogg"));
}

// note to self (sj): get the parry shit working later