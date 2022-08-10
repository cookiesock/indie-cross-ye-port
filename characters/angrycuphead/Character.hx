function create() {
    var tex = Paths.getCharacter(character.curCharacter);
    character.frames = tex;
    character.animation.addByPrefix('idle', '1 instance 1', 24, true);
    character.animation.addByPrefix('singUP', 'Up instance 1', 24);
    character.animation.addByPrefix('singRIGHT', 'Right instance 1', 24);
    character.animation.addByPrefix('singDOWN', 'Down instance 1', 24);
    character.animation.addByPrefix('singLEFT', 'Left instance 1', 24);

    animation.addByPrefix('attack1', 'DIE BITCH instance 1', 24, true);
    animation.addByPrefix('attack2', 'Hadoken!! instance 1', 24, false);
    animation.addByPrefix('hit', 'Ouch instance 1', 24, false);
    animation.addByPrefix('roundAttack', 'Roundattack instance 1', 24, false);
    animation.addByPrefix('pewUP', 'PewUp instance 1', 24, false);
    animation.addByPrefix('pewDOWN', 'pewdown instance 1', 24, false);
    animation.addByPrefix('pewLEFT', 'Pewleft instance 1', 24, false);
    animation.addByPrefix('pewRIGHT', 'PewRight instance 1', 24, false);
    animation.addByIndices('regret', 'Phase 2 starts instance 1', [0], "", 24, false);

    // notSoSpecialAnimList.push('attack1');

    // setZoom(1.74);
	character.scale.set(1.7, 1.7);

    character.addOffset('idle');
    character.addOffset("singUP", 35, 125);
    character.addOffset("singRIGHT", -30, 30);
    character.addOffset("singLEFT", 120, -10);
    character.addOffset("singDOWN", -31, -40);

    character.addOffset('attack1', 0, -13);
    character.addOffset('attack2', 350, 270);
    character.addOffset('hit', 110, -20);
    character.addOffset('roundAttack', 21, 0);
    character.addOffset('pewUP', 50, 80);
    character.addOffset('pewDOWN', -30, -35);
    character.addOffset('pewLEFT', 112, -38);
    character.addOffset('pewRIGHT', -29, 26);
    character.addOffset('regret', -30, -35);

    character.playAnim('idle');

    character.addCameraOffset("singLEFT", -25, 0);
    character.addCameraOffset("singDOWN", 0, 25);
    character.addCameraOffset("singUP", 0, -25);
    character.addCameraOffset("singRIGHT", 25, 0);

    // if (PlayState.song.song.toLowerCase() == 'snake-eyes' || !isStoryMode) {
    //     new FlxTimer().start(0.25, function(tmr:FlxTimer) {
    //         character.playAnim('intro', false, false, 0, true);
    //     });
    // }

    character.y += 375;
    character.x -= 150;
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