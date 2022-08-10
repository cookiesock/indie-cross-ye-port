enableRating = false;

function create() {
    note.hitOnBotplay = false;
    note.frames = Paths.getSparrowAtlas("cup/notes/NOTE_fire");
    note.colored = false;
    if (!EngineSettings.downscroll) {
        switch(note.noteDirection) {
            case 0:
                note.animation.addByPrefix("scroll", "Left alone");
            case 1:
                note.animation.addByPrefix("scroll", "Down alone");
            case 2:
                note.animation.addByPrefix("scroll", "Up alone");
            case 3:
                note.animation.addByPrefix("scroll", "Right alone");
        }
    }
    else {
        switch(note.noteDirection) {
            case 0:
                note.animation.addByPrefix("scroll", "DownScroll-Left alone");
            case 1:
                note.animation.addByPrefix("scroll", "DownScroll-Down alone");
            case 2:
                note.animation.addByPrefix("scroll", "DownScroll-Up alone");
            case 3:
                note.animation.addByPrefix("scroll", "DownScroll-Right alone");
        }
    }
    note.splashColor = 0xFFFF6200;
    
    note.scale.set(0.7, 0.7);
    note.updateHitbox();
    note.maxEarlyDiff *= 0.7;
    note.maxLateDiff *= 0.7;
    note.cpuIgnore = true;

    note.offset.x = 35;
    note.offset.y = 150;
}

function onMiss() {}

function onPlayerHit(direction:Int) {
    if (note.isSustainNote) {
        PlayState.currentSustains.push({
            time: note.strumTime,
            healthVal: -0.15
        });
    } else {
        PlayState.health -= 0.25;
    }
    FlxG.sound.play(Paths.file("images/cup/sounds/burnSound.ogg"));
}

function onDadHit(direction:Int) {
    if (note.isSustainNote) {
        PlayState.currentSustains.push({
            time: note.strumTime,
            healthVal: 0.15
        });
    } else {
        PlayState.health += 0.25;
    }
    FlxG.sound.play(Paths.file("images/cup/sounds/burnSound.ogg"));
}