function create() {
    var tex = Paths.getCharacter(textureOverride != "" ? textureOverride : mod + ":cuphead");
    character.frames = tex;
    character.animation.addByPrefix('idle', 'Cuphead_standing instance 1', 24, true);
    character.animation.addByPrefix('singUP', 'Up instance 1', 24);
    character.animation.addByPrefix('singRIGHT', 'Right instance 1', 24);
    character.animation.addByPrefix('singDOWN', 'Down instance 1', 24);
    character.animation.addByPrefix('singLEFT', 'Left instance 1', 24);

    character.animation.addByPrefix('intro', 'Cuphead Intro phase 2 instance 1', false);
    character.animation.addByPrefix('attack1', 'Shoot instance 1', 24, true);
    character.animation.addByPrefix('dodge', 'Dodge instance 1', 24, false);
    character.animation.addByPrefix('hit', 'Hurt instance 1', 24, false);

    // notSoSpecialAnimList.push('attack1');

    // setZoom(1.74);
	character.setGraphicSize(Std.int(character.width * 1.74));

    character.addOffset('idle', 0, 0);
    character.addOffset('singUP', -12 * 1.74, 51 * 1.74);
    character.addOffset('singRIGHT', -20 * 1.74, -10 * 1.74);
    character.addOffset('singLEFT', 40 * 1.74, -8 * 1.74);
    character.addOffset('singDOWN', -24 * 1.74, -16 * 1.74);
    character.addOffset('intro', 49, 2);
    character.addOffset('attack1', 2, -3);
    character.addOffset('dodge', 32, -9);
    character.addOffset('hit', 120, 63);

    character.playAnim('idle');
    
    character.y += 300;
    character.x -= 150;

    character.addCameraOffset("singLEFT", -25, 0);
    character.addCameraOffset("singDOWN", 0, 25);
    character.addCameraOffset("singUP", 0, -25);
    character.addCameraOffset("singRIGHT", 25, 0);

    // if (PlayState.song.song.toLowerCase() == 'snake-eyes' || !isStoryMode) {
    //     new FlxTimer().start(0.25, function(tmr:FlxTimer) {
    //         character.playAnim('intro', false, false, 0, true);
    //     });
    // }
}

function getColors(altAnim) {
    return [
        FlxColor.fromRGB(171, 22, 74), // why does this look dumb
        EngineSettings.arrowColor0,
        EngineSettings.arrowColor1,
        EngineSettings.arrowColor2,
        EngineSettings.arrowColor3
    ];
}