function create() {
    var tex = Paths.getCharacter(character.curCharacter);
    character.frames = tex;
    
    character.animation.addByPrefix('idle', 'BF idle dance instance 1', 24, false);
    character.animation.addByPrefix('singUP', 'BF NOTE UP instance 1', 24, false);
    character.animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT instance 1', 24, false);
    character.animation.addByPrefix('singLEFT', 'BF NOTE LEFT instance 1', 24, false);
    character.animation.addByPrefix('singDOWN', 'BF NOTE DOWN instance 1', 24, false);
    character.animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS instance 1', 24, false);
    character.animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS instance 1', 24, false);
    character.animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS instance 1', 24, false);
    character.animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS instance 1', 24, false);
    character.animation.addByPrefix('attack', '0BF attack instance 1', 24, false);
    character.animation.addByPrefix('hurt', 'BF hit instance 1', 24, false);
    character.animation.addByPrefix('dodge', 'boyfriend dodge instance 1', 24, false);

    character.addOffset('idle', -5, 0);
    character.addOffset('singUP', -51, 57);
    character.addOffset("singLEFT", 48, 4);
    character.addOffset("singRIGHT", -32, 3);
    character.addOffset('singDOWN', -20, -40);
    character.addOffset('singUPmiss', -49, 17);
    character.addOffset('singLEFTmiss', 29, 25);
    character.addOffset('singRIGHTmiss', 58, 24);
    character.addOffset('singDOWNmiss', -31, -19);
    character.addOffset('attack', 1095, -12);
    character.addOffset('hurt', 40, 50);
    character.addOffset('dodge', -20, -10);

    character.playAnim('idle');

    character.flipX = true;
    
    character.x = 770;

    // if the stage is "field"
    character.x += 175;

    character.y = 450;

	var offsetX = 0;
	var offsetY = 0;
	var pXOff = 0;
    // this is temporary, check line 12280
    // update from sj: good enough
    character.camOffset.y = -25;
    character.camOffset.x = -500;

    character.addCameraOffset("singLEFT", -25, 0);
    character.addCameraOffset("singDOWN", 0, 25);
    character.addCameraOffset("singUP", 0, -25);
    character.addCameraOffset("singRIGHT", 25, 0);
}

function getColors(altAnim) {
    return [
        0xFF31B0D1,
        EngineSettings.arrowColor0,
        EngineSettings.arrowColor1,
        EngineSettings.arrowColor2,
        EngineSettings.arrowColor3
    ];
}